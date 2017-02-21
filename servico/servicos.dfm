inherited formServicos: TformServicos
  Caption = 'Servi'#231'os'
  ClientHeight = 556
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Height = 536
    ExplicitHeight = 536
    ClientRectBottom = 535
    inherited tabVisual: TcxTabSheet
      ExplicitHeight = 534
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 503
        ExplicitTop = 503
      end
      inherited pnlFundoGrade: TPanel
        Height = 424
        ExplicitHeight = 424
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 421
          Height = 3
          ExplicitTop = 421
          ExplicitHeight = 3
        end
        inherited grdDados: TcxGrid
          Height = 399
          ExplicitHeight = 399
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
            object cxGrid1DBTableView1PRECOVENDA: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'PRECOVENDA'
            end
            object cxGrid1DBTableView1OCULTO: TcxGridDBColumn
              Tag = 77
              Caption = 'Oculto'
              DataBinding.FieldName = 'OCULTO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitHeight = 534
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited pnlEdicao: TPanel
        Height = 455
        ExplicitHeight = 457
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 697
          Height = 91
          Align = alTop
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 0
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
            Width = 121
            Height = 13
            Caption = 'Descri'#231#227'o do Servi'#231'o'
            FocusControl = dedDESCRICAO
          end
          object Label3: TLabel
            Left = 296
            Top = 8
            Width = 71
            Height = 13
            Caption = 'Pre'#231'o Venda'
            FocusControl = dedPRECOVENDA
          end
          object dedCODIGO: TcxDBTextEdit
            Left = 7
            Top = 23
            DataBinding.DataField = 'CODIGO'
            DataBinding.DataSource = dsrDados
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 89
          end
          object dedDESCRICAO: TcxDBTextEdit
            Left = 7
            Top = 63
            DataBinding.DataField = 'DESCRICAO'
            DataBinding.DataSource = dsrDados
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 409
          end
          object dedPRECOVENDA: TcxDBTextEdit
            Left = 295
            Top = 23
            TabStop = False
            DataBinding.DataField = 'PRECOVENDA'
            DataBinding.DataSource = dsrDados
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 2
            Width = 121
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 91
          Width = 697
          Height = 364
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          LookAndFeel.NativeStyle = True
          ExplicitHeight = 366
          ClientRectBottom = 360
          ClientRectLeft = 4
          ClientRectRight = 693
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = 'Cadastro'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label6: TLabel
              Left = 8
              Top = 52
              Width = 100
              Height = 13
              Caption = 'C'#243'digo de Barras'
              FocusControl = dedBARRA
            end
            object Label8: TLabel
              Left = 8
              Top = 8
              Width = 46
              Height = 13
              Cursor = crHandPoint
              Caption = 'Unidade'
              FocusControl = dblUnidade
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label8Click
            end
            object Label9: TLabel
              Left = 168
              Top = 8
              Width = 35
              Height = 13
              Cursor = crHandPoint
              Caption = 'Grupo'
              FocusControl = dblGrupo
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label9Click
            end
            object Label10: TLabel
              Left = 8
              Top = 24
              Width = 51
              Height = 13
              Caption = 'Lendo...'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 168
              Top = 24
              Width = 51
              Height = 13
              Caption = 'Lendo...'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbTributos: TLabel
              Left = 319
              Top = 52
              Width = 71
              Height = 13
              Caption = 'Tributos (%)'
              FocusControl = dedTributos
            end
            object dedBARRA: TcxDBTextEdit
              Left = 7
              Top = 67
              DataBinding.DataField = 'BARRA'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Width = 178
            end
            object dblUnidade: TcxDBLookupComboBox
              Left = 7
              Top = 23
              DataBinding.DataField = 'UNIDADE'
              DataBinding.DataSource = dsrDados
              Properties.KeyFieldNames = 'SIGLA'
              Properties.ListColumns = <
                item
                  FieldName = 'UNIDADE'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = formPrincipal.dsrUnidades
              TabOrder = 0
              Width = 145
            end
            object dblGrupo: TcxDBLookupComboBox
              Left = 167
              Top = 23
              DataBinding.DataField = 'GRUPO'
              DataBinding.DataSource = dsrDados
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'GRUPO'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = formPrincipal.dsrGrupos
              TabOrder = 1
              Width = 249
            end
            object dedTributos: TcxDBTextEdit
              Left = 318
              Top = 67
              DataBinding.DataField = 'TRIBUTOS'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              TabOrder = 3
              Width = 98
            end
          end
          object tabCusto: TcxTabSheet
            Caption = 'Custo'
            ImageIndex = 5
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object lbMargem: TLabel
              Left = 152
              Top = 8
              Width = 46
              Height = 13
              Caption = 'Margem'
              FocusControl = DEDMARGEM
            end
            object Label17: TLabel
              Left = 296
              Top = 8
              Width = 71
              Height = 13
              Caption = 'Pre'#231'o Venda'
              FocusControl = DEDVENDA
            end
            object Label18: TLabel
              Left = 8
              Top = 8
              Width = 73
              Height = 13
              Caption = #218'ltimo Custo'
              FocusControl = DEDCUSTO
            end
            object Label23: TLabel
              Left = 9
              Top = 52
              Width = 147
              Height = 13
              Cursor = crHandPoint
              Caption = 'Centro de Custo ou Lucro'
              FocusControl = cxDBTextEdit11
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label23Click
            end
            object DEDMARGEM: TcxDBTextEdit
              Left = 151
              Top = 23
              DataBinding.DataField = 'MARGEM'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              Style.Color = clWindow
              TabOrder = 1
              Width = 121
            end
            object DEDVENDA: TcxDBTextEdit
              Left = 295
              Top = 23
              DataBinding.DataField = 'PRECOVENDA'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              Style.Color = clWindow
              TabOrder = 2
              Width = 121
            end
            object DEDCUSTO: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'PRECOCUSTO'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              Style.Color = clWindow
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 8
              Top = 67
              TabStop = False
              DataBinding.DataField = 'CENTRO'
              DataBinding.DataSource = dsrDados
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 3
              Width = 410
            end
            object ckCOMISSIONADO: TcxDBCheckBox
              Left = 9
              Top = 92
              Caption = 'Gera comissionamento'
              DataBinding.DataField = 'COMISSIONADO'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 4
              Width = 169
            end
          end
          object cxTabSheet7: TcxTabSheet
            Caption = 'Outros'
            ImageIndex = 7
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label22: TLabel
              Left = 8
              Top = 8
              Width = 115
              Height = 13
              Caption = 'Detalhes do Servi'#231'o'
              FocusControl = cxDBMemo1
            end
            object cxDBMemo1: TcxDBMemo
              Left = 7
              Top = 23
              DataBinding.DataField = 'OBSERVACOES'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              Height = 121
              Width = 409
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Tag = 77
              Left = 4
              Top = 150
              Caption = 'Ocultar servi'#231'o'
              DataBinding.DataField = 'OCULTO'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 1
              Width = 185
            end
          end
          object cxTabSheet3: TcxTabSheet
            Tag = 99
            Caption = #218'ltimo Log'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label21: TLabel
              Left = 8
              Top = 8
              Width = 47
              Height = 13
              Caption = 'Registro'
              FocusControl = cxDBMaskEdit1
            end
            object Label29: TLabel
              Left = 8
              Top = 48
              Width = 71
              Height = 13
              Caption = 'Computador'
              FocusControl = cxDBMaskEdit3
            end
            object Label28: TLabel
              Left = 168
              Top = 8
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              FocusControl = cxDBMaskEdit2
            end
            object Label30: TLabel
              Left = 168
              Top = 48
              Width = 127
              Height = 13
              Caption = 'Data (no computador)'
              FocusControl = cxDBMaskEdit4
            end
            object cxDBMaskEdit1: TcxDBMaskEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'LOG_TIPO'
              DataBinding.DataSource = dsrDados
              Properties.MaxLength = 0
              Style.Color = clBtnFace
              TabOrder = 0
              Width = 146
            end
            object cxDBMaskEdit3: TcxDBMaskEdit
              Left = 7
              Top = 63
              DataBinding.DataField = 'LOG_MAQUINA'
              DataBinding.DataSource = dsrDados
              Properties.MaxLength = 0
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 146
            end
            object cxDBMaskEdit2: TcxDBMaskEdit
              Left = 167
              Top = 23
              DataBinding.DataField = 'LOG_USUARIO'
              DataBinding.DataSource = dsrDados
              Properties.MaxLength = 0
              Style.Color = clBtnFace
              TabOrder = 2
              Width = 146
            end
            object cxDBMaskEdit4: TcxDBMaskEdit
              Left = 167
              Top = 63
              DataBinding.DataField = 'LOG_DATAREMOTO'
              DataBinding.DataSource = dsrDados
              Properties.MaxLength = 0
              Style.Color = clBtnFace
              TabOrder = 3
              Width = 146
            end
          end
          object cxTabSheet4: TcxTabSheet
            Tag = 99
            Caption = 'Outros Logs'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlLog: TPanel
              Left = 0
              Top = 0
              Width = 689
              Height = 338
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Nenhum registro de Log'
              TabOrder = 0
              object Splitter1: TSplitter
                Left = 0
                Top = 81
                Width = 689
                Height = 3
                Cursor = crVSplit
                Align = alTop
                ExplicitWidth = 610
              end
              object cxGridLog1: TcxGrid
                Left = 0
                Top = 0
                Width = 689
                Height = 81
                Align = alTop
                TabOrder = 0
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView1: TcxGridDBTableView
                  DataController.DataSource = dmoLog.dsrLog1
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnHidingOnGrouping = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object DBTableView1LOG_TIPO: TcxGridDBColumn
                    Caption = 'Registro'
                    DataBinding.FieldName = 'LOG_TIPO'
                    Width = 117
                  end
                  object DBTableView1LOG_USUARIO: TcxGridDBColumn
                    Caption = 'Usu'#225'rio'
                    DataBinding.FieldName = 'LOG_USUARIO'
                    Width = 159
                  end
                  object DBTableView1LOG_MAQUINA: TcxGridDBColumn
                    Caption = 'M'#225'quina'
                    DataBinding.FieldName = 'LOG_MAQUINA'
                  end
                  object DBTableView1LOG_DATAREMOTO: TcxGridDBColumn
                    Caption = 'Data Remoto'
                    DataBinding.FieldName = 'LOG_DATAREMOTO'
                    Width = 170
                  end
                  object DBTableView1LOG_DATASERVIDOR: TcxGridDBColumn
                    Caption = 'Data Servidor'
                    DataBinding.FieldName = 'LOG_DATASERVIDOR'
                    Width = 170
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
              object cxGridLog2: TcxGrid
                Left = 0
                Top = 84
                Width = 689
                Height = 254
                Align = alClient
                TabOrder = 1
                LookAndFeel.NativeStyle = True
                object cxGrid2DBTableView2: TcxGridDBTableView
                  DataController.DataSource = dmoLog.dsrLog2
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnHidingOnGrouping = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  object cxGrid2DBTableView2LOG_CAMPO: TcxGridDBColumn
                    Caption = 'Campo'
                    DataBinding.FieldName = 'LOG_CAMPO'
                    Width = 185
                  end
                  object cxGrid2DBTableView2LOG_VALORANTIGO: TcxGridDBColumn
                    Caption = 'Valor Anterior'
                    DataBinding.FieldName = 'LOG_VALORANTIGO'
                    Width = 221
                  end
                  object cxGrid2DBTableView2LOG_VALORNOVO: TcxGridDBColumn
                    Caption = 'Valor Novo'
                    DataBinding.FieldName = 'LOG_VALORNOVO'
                    Width = 240
                  end
                end
                object cxGrid2Level2: TcxGridLevel
                  GridView = cxGrid2DBTableView2
                end
              end
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 536
    ExplicitTop = 536
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar3: TdxBar
      Visible = False
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 96
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 1
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, PO.*, CE.DESCRICAO AS CENTRO FROM PRODUTOS PO' +
      ' LEFT JOIN CENTROS CE ON (CE.CODIGO = PO.CODCENTRO) WHERE PO.PS=' +
      ' '#39'S'#39
    ProviderName = 'pvServicos'
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Servi'#231'o'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cdsDadosCODIGOChange
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsDadosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsDadosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object cdsDadosPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      Precision = 20
      Size = 3
    end
    object cdsDadosPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 20
      Size = 3
    end
    object cdsDadosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsDadosMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object cdsDadosDATACADAST: TSQLTimeStampField
      FieldName = 'DATACADAST'
    end
    object cdsDadosETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosNUMETIQ: TIntegerField
      FieldName = 'NUMETIQ'
      Required = True
    end
    object cdsDadosINDIVIDUAL: TStringField
      FieldName = 'INDIVIDUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object cdsDadosOBSERVACOES: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object cdsDadosBARRA: TStringField
      DisplayLabel = 'C'#243'd.Barras'
      FieldName = 'BARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cdsDadosPS: TStringField
      FieldName = 'PS'
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
    end
    object cdsDadosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      FixedChar = True
      Size = 40
    end
    object cdsDadosCOMISSIONADO: TStringField
      DisplayLabel = 'Comissionado'
      FieldName = 'COMISSIONADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosOCULTO: TStringField
      FieldName = 'OCULTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosMARGEM: TFloatField
      FieldName = 'MARGEM'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
    end
    object cdsDadosCODCENTRO: TIntegerField
      FieldName = 'CODCENTRO'
      Required = True
    end
    object cdsDadosPRECOSERVICO: TFloatField
      FieldName = 'PRECOSERVICO'
    end
    object cdsDadosPRECOTOTAL: TFloatField
      FieldName = 'PRECOTOTAL'
    end
    object cdsDadosATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCADEQUIPAMENTO: TStringField
      FieldName = 'CADEQUIPAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosTIPOPRODUTO: TStringField
      FieldName = 'TIPOPRODUTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
    end
    object cdsDadosCODMODELO: TIntegerField
      FieldName = 'CODMODELO'
    end
    object cdsDadosGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object cdsDadosLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object cdsDadosLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object cdsDadosLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object cdsDadosLOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
    end
    object cdsDadosMATPRIMA: TStringField
      FieldName = 'MATPRIMA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCLASSFISCAL: TStringField
      FieldName = 'CLASSFISCAL'
      FixedChar = True
    end
    object cdsDadosCAIXA_ITENS: TIntegerField
      FieldName = 'CAIXA_ITENS'
    end
    object cdsDadosICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object cdsDadosPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object cdsDadosPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object cdsDadosPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsDadosMARGEM2: TFloatField
      FieldName = 'MARGEM2'
    end
    object cdsDadosMARGEM3: TFloatField
      FieldName = 'MARGEM3'
    end
    object cdsDadosCENTRO: TStringField
      DisplayLabel = 'Centro'
      FieldName = 'CENTRO'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosCODNCM: TIntegerField
      FieldName = 'CODNCM'
    end
    object cdsDadosSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      FixedChar = True
      Size = 3
    end
    object cdsDadosPARTNUMBER: TStringField
      FieldName = 'PARTNUMBER'
      FixedChar = True
      Size = 30
    end
    object cdsDadosTRIBUTOS: TFloatField
      FieldName = 'TRIBUTOS'
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.760388391200000000
      BuiltInReportLink = True
    end
  end
  inherited tmrFocus2: TTimer
    Left = 392
    Top = 344
  end
  inherited tmrSemDireito: TTimer
    Left = 472
    Top = 344
  end
  inherited SaveDialog: TSaveDialog
    Left = 472
    Top = 400
  end
  inherited tmrShift: TTimer
    Left = 392
    Top = 400
  end
end
