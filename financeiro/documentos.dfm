inherited formDocumentos: TformDocumentos
  Left = 375
  Top = 158
  Caption = 'Formas de Pagamento'
  ClientHeight = 480
  ClientWidth = 568
  ExplicitWidth = 576
  ExplicitHeight = 514
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 568
    Height = 460
    ExplicitWidth = 568
    ExplicitHeight = 460
    ClientRectBottom = 459
    ClientRectRight = 567
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 566
      ExplicitHeight = 458
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 566
        ExplicitWidth = 566
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 429
        Width = 566
        ExplicitTop = 429
        ExplicitWidth = 566
      end
      inherited pnlFundoGrade: TPanel
        Width = 566
        Height = 352
        ExplicitWidth = 566
        ExplicitHeight = 352
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 349
          Width = 566
          Height = 3
          ExplicitTop = 349
          ExplicitWidth = 566
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 566
          ExplicitWidth = 566
        end
        inherited grdDados: TcxGrid
          Width = 566
          Height = 327
          ExplicitWidth = 566
          ExplicitHeight = 331
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'DOCUMENTO'
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 566
      ExplicitHeight = 458
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 566
        ExplicitWidth = 566
      end
      inherited pnlEdicao: TPanel
        Width = 566
        Height = 381
        ExplicitWidth = 566
        ExplicitHeight = 383
        object pnlData: TPanel
          Left = 0
          Top = 0
          Width = 566
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 0
          object lbCODIGO: TLabel
            Left = 8
            Top = 8
            Width = 40
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = dedCODIGO
          end
          object lbDOCUMENTO: TLabel
            Left = 88
            Top = 8
            Width = 65
            Height = 13
            Caption = 'Documento'
            FocusControl = dedDOCUMENTO
          end
          object dedCODIGO: TcxDBTextEdit
            Left = 7
            Top = 23
            DataBinding.DataField = 'CODIGO'
            DataBinding.DataSource = dsrDados
            TabOrder = 0
            OnEnter = edtPesquisar2Enter
            OnExit = edtPesquisar2Exit
            Width = 66
          end
          object dedDOCUMENTO: TcxDBTextEdit
            Left = 87
            Top = 23
            DataBinding.DataField = 'DOCUMENTO'
            DataBinding.DataSource = dsrDados
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            OnEnter = edtPesquisar2Enter
            OnExit = edtPesquisar2Exit
            Width = 378
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 57
          Width = 566
          Height = 324
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          LookAndFeel.NativeStyle = True
          ExplicitHeight = 326
          ClientRectBottom = 320
          ClientRectLeft = 4
          ClientRectRight = 562
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = 'Tipo'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label1: TLabel
              Left = 8
              Top = 8
              Width = 201
              Height = 13
              Caption = 'Informa'#231#245'es adicionais (requerido)'
              FocusControl = cxDBTextEdit1
            end
            object cxDBRadioGroup1: TcxDBRadioGroup
              Left = 8
              Top = 58
              Caption = ' Prazo de Pagamento '
              DataBinding.DataField = 'TIPO_PAG'
              DataBinding.DataSource = dsrDados
              Properties.Columns = 2
              Properties.DefaultValue = 'A'
              Properties.Items = <
                item
                  Caption = 'A Vista'
                  Value = 'A'
                end
                item
                  Caption = 'A Prazo'
                  Value = 'V'
                end>
              Properties.ReadOnly = False
              Style.LookAndFeel.NativeStyle = True
              Style.Shadow = False
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Height = 49
              Width = 457
            end
            object cxDBRadioGroup2: TcxDBRadioGroup
              Left = 8
              Top = 112
              Caption = ' Tipo de Documento '
              DataBinding.DataField = 'TIPO_DOC'
              DataBinding.DataSource = dsrDados
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Dinheiro'
                  Value = 'D'
                end
                item
                  Caption = 'Cheque'
                  Value = 'C'
                end
                item
                  Caption = 'Boleto banc'#225'rio'
                  Value = 'B'
                end
                item
                  Caption = 'Outros'
                  Value = 'O'
                end>
              Properties.ReadOnly = False
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Height = 65
              Width = 457
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'INFORMACOES'
              DataBinding.DataSource = dsrDados
              TabOrder = 2
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 458
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Boleto'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label2: TLabel
              Left = 8
              Top = 8
              Width = 35
              Height = 13
              Cursor = crHandPoint
              Caption = 'Banco'
              FocusControl = cxDBTextEdit2
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label2Click
            end
            object Label3: TLabel
              Left = 8
              Top = 48
              Width = 48
              Height = 13
              Cursor = crHandPoint
              Caption = 'Cedente'
              FocusControl = cxDBTextEdit4
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label3Click
            end
            object Label5: TLabel
              Left = 8
              Top = 88
              Width = 82
              Height = 13
              Caption = 'Nosso n'#250'mero'
              FocusControl = cxDBTextEdit8
            end
            object Label6: TLabel
              Left = 128
              Top = 88
              Width = 79
              Height = 13
              Caption = 'C'#243'd. Cedente'
              FocusControl = cxDBTextEdit10
            end
            object Label7: TLabel
              Left = 248
              Top = 88
              Width = 76
              Height = 13
              Caption = 'C'#243'd. Ag'#234'ncia'
              FocusControl = cxDBTextEdit12
            end
            object Label8: TLabel
              Left = 368
              Top = 88
              Width = 65
              Height = 13
              Caption = 'C'#243'd. Conta'
              FocusControl = cxDBTextEdit14
            end
            object Label9: TLabel
              Left = 8
              Top = 128
              Width = 115
              Height = 13
              Caption = 'Local de Pagamento'
              FocusControl = cxDBTextEdit16
            end
            object Label10: TLabel
              Left = 8
              Top = 168
              Width = 113
              Height = 13
              Caption = 'Instru'#231#245'es do T'#237'tulo'
              FocusControl = cxDBMemo1
            end
            object Label11: TLabel
              Left = 368
              Top = 128
              Width = 47
              Height = 13
              Caption = 'Carteira'
              FocusControl = cxDBTextEdit17
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'CODBANCO'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 66
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 79
              Top = 23
              DataBinding.DataField = 'NOMEBANCO'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 386
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 7
              Top = 63
              DataBinding.DataField = 'CODIGOCEDENTE'
              DataBinding.DataSource = dsrDados
              TabOrder = 2
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 66
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 79
              Top = 63
              DataBinding.DataField = 'NOMECEDENTE'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 3
              Width = 386
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 7
              Top = 103
              DataBinding.DataField = 'NOSSONUMERO'
              DataBinding.DataSource = dsrDados
              TabOrder = 4
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 66
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 79
              Top = 103
              DataBinding.DataField = 'NOSSONUMERO_DIGITO'
              DataBinding.DataSource = dsrDados
              TabOrder = 5
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 26
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 127
              Top = 103
              DataBinding.DataField = 'CODIGOCEDENTE'
              DataBinding.DataSource = dsrDados
              TabOrder = 6
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 66
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 199
              Top = 103
              DataBinding.DataField = 'CODIGOCEDENTE_DIGITO'
              DataBinding.DataSource = dsrDados
              TabOrder = 7
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 26
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 247
              Top = 103
              DataBinding.DataField = 'CODIGOAGENCIA'
              DataBinding.DataSource = dsrDados
              TabOrder = 8
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 66
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 319
              Top = 103
              DataBinding.DataField = 'CODIGOAGENCIA_DIGITO'
              DataBinding.DataSource = dsrDados
              TabOrder = 9
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 26
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 367
              Top = 103
              DataBinding.DataField = 'CODIGOCONTA'
              DataBinding.DataSource = dsrDados
              TabOrder = 10
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 66
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 439
              Top = 103
              DataBinding.DataField = 'CODIGOCONTA_DIGITO'
              DataBinding.DataSource = dsrDados
              TabOrder = 11
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 26
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 7
              Top = 143
              DataBinding.DataField = 'LOCALPAGAMENTO'
              DataBinding.DataSource = dsrDados
              TabOrder = 12
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 338
            end
            object cxDBMemo1: TcxDBMemo
              Left = 7
              Top = 183
              DataBinding.DataField = 'INSTRUCOES'
              DataBinding.DataSource = dsrDados
              TabOrder = 13
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Height = 81
              Width = 338
            end
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 352
              Top = 179
              Caption = 'Aceite'
              DataBinding.DataField = 'ACEITE'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 14
              Width = 113
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 352
              Top = 203
              Caption = 'Impress'#227'o local'
              DataBinding.DataField = 'IMPRESSAO'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 15
              Width = 121
            end
            object cxDBCheckBox4: TcxDBCheckBox
              Left = 352
              Top = 227
              Caption = 'Registro (rem)'
              DataBinding.DataField = 'REMESSA_REGISTRO'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 16
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 367
              Top = 143
              DataBinding.DataField = 'CARTEIRA'
              DataBinding.DataSource = dsrDados
              TabOrder = 17
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 98
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'Outros'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label4: TLabel
              Left = 8
              Top = 8
              Width = 148
              Height = 13
              Caption = 'Documento de Impress'#227'o'
              FocusControl = cxDBTextEdit6
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'NUMIMPBOLETO'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 66
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 79
              Top = 23
              DataBinding.DataField = 'LAYOUT'
              DataBinding.DataSource = dsrDados
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 386
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 460
    Width = 568
    ExplicitTop = 460
    ExplicitWidth = 568
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 480
    Top = 351
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar1: TdxBar
      FloatClientWidth = 251
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
      'SELECT '#39'N'#39' AS SEL, DOC.*, BCO.NOME AS NOMEBANCO, CLI.NOME AS NOM' +
      'ECEDENTE, IMP.DESCRICAO AS LAYOUT FROM DOCUMENTOS DOC LEFT JOIN ' +
      'BANCOS BCO ON (BCO.CODIGO = DOC.CODBANCO) LEFT JOIN CLIENTES CLI' +
      ' ON (CLI.CODIGO = DOC.CODIGOCEDENTE) LEFT JOIN IMPBOLETO IMP ON ' +
      '(IMP.NUMIMPBOLETO = DOC.NUMIMPBOLETO)'
    PacketRecords = 50
    ProviderName = 'pvDocumentos'
    Left = 560
    Top = 400
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
    object cdsDadosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsDadosINFORMACOES: TStringField
      FieldName = 'INFORMACOES'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsDadosSISTEMA: TStringField
      FieldName = 'SISTEMA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosNUMIMPBOLETO: TIntegerField
      FieldName = 'NUMIMPBOLETO'
    end
    object cdsDadosTIPO_PAG: TStringField
      FieldName = 'TIPO_PAG'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object cdsDadosNOSSONUMERO: TIntegerField
      FieldName = 'NOSSONUMERO'
    end
    object cdsDadosNOSSONUMERO_DIGITO: TIntegerField
      FieldName = 'NOSSONUMERO_DIGITO'
    end
    object cdsDadosACEITE: TStringField
      FieldName = 'ACEITE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGOCEDENTE: TIntegerField
      FieldName = 'CODIGOCEDENTE'
    end
    object cdsDadosCODIGOCEDENTE_DIGITO: TIntegerField
      FieldName = 'CODIGOCEDENTE_DIGITO'
    end
    object cdsDadosCODIGOAGENCIA: TIntegerField
      FieldName = 'CODIGOAGENCIA'
    end
    object cdsDadosCODIGOAGENCIA_DIGITO: TIntegerField
      FieldName = 'CODIGOAGENCIA_DIGITO'
    end
    object cdsDadosCODIGOCONTA: TIntegerField
      FieldName = 'CODIGOCONTA'
    end
    object cdsDadosCODIGOCONTA_DIGITO: TIntegerField
      FieldName = 'CODIGOCONTA_DIGITO'
    end
    object cdsDadosCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object cdsDadosLOCALPAGAMENTO: TStringField
      FieldName = 'LOCALPAGAMENTO'
      FixedChar = True
      Size = 50
    end
    object cdsDadosINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 254
    end
    object cdsDadosIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosREMESSA_REGISTRO: TStringField
      FieldName = 'REMESSA_REGISTRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosLAYOUT: TStringField
      FieldName = 'LAYOUT'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
  end
  inherited dsrDados: TDataSource
    Left = 560
    Top = 448
  end
  inherited tmrFocus: TTimer
    Left = 560
    Top = 352
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 656
    Top = 352
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.754988842590000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 736
    Top = 352
  end
  inherited actDetalhes: TActionList
    Left = 656
    Top = 296
  end
  inherited tmrRelogio: TTimer
    Left = 584
    Top = 264
  end
  inherited tmrLabel: TTimer
    Left = 824
    Top = 296
  end
  inherited menuGrade: TPopupMenu
    Left = 816
    Top = 352
  end
  inherited SaveDialog: TSaveDialog
    Left = 736
    Top = 296
  end
end
