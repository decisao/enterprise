inherited formPerfil: TformPerfil
  Left = 390
  Top = 113
  Caption = 'Perfil do Sistema'
  ClientHeight = 483
  ClientWidth = 559
  ExplicitWidth = 575
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 559
    Height = 463
    ExplicitWidth = 559
    ExplicitHeight = 463
    ClientRectBottom = 462
    ClientRectRight = 558
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 557
      ExplicitHeight = 461
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 557
        ExplicitWidth = 557
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 432
        Width = 557
        ExplicitTop = 432
        ExplicitWidth = 557
      end
      inherited pnlFundoGrade: TPanel
        Width = 557
        Height = 355
        ExplicitWidth = 557
        ExplicitHeight = 355
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 352
          Width = 557
          Height = 3
          ExplicitTop = 352
          ExplicitWidth = 557
          ExplicitHeight = 3
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 557
          ExplicitWidth = 557
        end
        inherited grdDados: TcxGrid
          Width = 557
          Height = 330
          ExplicitWidth = 557
          ExplicitHeight = 330
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 26
              IsCaptionAssigned = True
            end
            object cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd.Empresa'
              DataBinding.FieldName = 'CODCLIENTE'
            end
            object cxGrid1DBTableView1EMPRESA: TcxGridDBColumn
              Caption = 'Empresa'
              DataBinding.FieldName = 'EMPRESA'
              SortIndex = 0
              SortOrder = soAscending
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 557
      ExplicitHeight = 461
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 557
        ExplicitWidth = 557
      end
      inherited pnlEdicao: TPanel
        Width = 557
        Height = 384
        ExplicitWidth = 557
        ExplicitHeight = 384
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 557
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 0
          object Label1: TLabel
            Left = 11
            Top = 8
            Width = 56
            Height = 13
            Caption = 'C'#243'd.Perfil'
          end
          object Label2: TLabel
            Left = 91
            Top = 8
            Width = 50
            Height = 13
            Caption = 'Empresa'
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 10
            Top = 23
            TabStop = False
            DataBinding.DataField = 'CODIGO'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 0
            Width = 73
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 90
            Top = 23
            TabStop = False
            DataBinding.DataField = 'EMPRESA'
            DataBinding.DataSource = dsrDados
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            TabOrder = 1
            Width = 417
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 57
          Width = 557
          Height = 327
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          LookAndFeel.NativeStyle = True
          ClientRectBottom = 323
          ClientRectLeft = 4
          ClientRectRight = 553
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = 'Consumidor'
            ImageIndex = 0
            object Label3: TLabel
              Left = 8
              Top = 8
              Width = 113
              Height = 13
              Cursor = crHandPoint
              Caption = 'Consumidor padr'#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label3Click
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object Label4: TLabel
              Left = 8
              Top = 48
              Width = 65
              Height = 13
              Caption = 'Valor limite'
              FocusControl = cxDBTextEdit4
            end
            object Label14: TLabel
              Left = 8
              Top = 120
              Width = 107
              Height = 13
              Caption = 'Dias para bloqueio'
              FocusControl = cxDBTextEdit21
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 7
              Top = 23
              TabStop = False
              DataBinding.DataField = 'CONSUMIDOR'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 0
              Width = 497
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 7
              Top = 63
              DataBinding.DataField = 'VALOR_LIMITE'
              DataBinding.DataSource = dsrDados
              TabOrder = 1
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBCheckBox8: TcxDBCheckBox
              Left = 144
              Top = 134
              Caption = 'Verifica limite de cr'#233'dito dos clientes'
              DataBinding.DataField = 'VERIFICA_LIMITE'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 2
              Width = 321
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 7
              Top = 135
              DataBinding.DataField = 'BLOQUEIO_DIAS'
              DataBinding.DataSource = dsrDados
              TabOrder = 3
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 8
              Top = 88
              Caption = 'Usar pre'#231'o personalizado por cliente'
              DataBinding.DataField = 'PRECO_CLIENTE'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Style.TransparentBorder = True
              TabOrder = 4
              Width = 257
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Hist'#243'ricos'
            ImageIndex = 1
            object Label5: TLabel
              Left = 8
              Top = 8
              Width = 173
              Height = 13
              Cursor = crHandPoint
              Caption = 'Hist'#243'rico padr'#227'o para Compra'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label5Click
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object Label6: TLabel
              Left = 8
              Top = 56
              Width = 163
              Height = 13
              Cursor = crHandPoint
              Caption = 'Hist'#243'rico padr'#227'o para Venda'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label6Click
              OnMouseEnter = lbModeloMouseEnter
              OnMouseLeave = lbModeloMouseLeave
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 7
              Top = 23
              TabStop = False
              DataBinding.DataField = 'HISTORICOCOMPRA'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 0
              Width = 497
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 7
              Top = 71
              TabStop = False
              DataBinding.DataField = 'HISTORICOVENDA'
              DataBinding.DataSource = dsrDados
              Properties.ReadOnly = True
              Style.Color = clBtnFace
              TabOrder = 1
              Width = 497
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Impress'#227'o Texto'
            ImageIndex = 2
            object Label7: TLabel
              Left = 8
              Top = 8
              Width = 61
              Height = 13
              Caption = 'Nota Fiscal'
              FocusControl = cxDBTextEdit7
            end
            object Label8: TLabel
              Left = 8
              Top = 48
              Width = 79
              Height = 13
              Caption = 'OS Aberta #1'
              FocusControl = cxDBTextEdit8
            end
            object Label9: TLabel
              Left = 8
              Top = 88
              Width = 79
              Height = 13
              Caption = 'OS Aberta #2'
              FocusControl = cxDBTextEdit9
            end
            object Label10: TLabel
              Left = 8
              Top = 128
              Width = 69
              Height = 13
              Caption = 'Fechamento'
              FocusControl = cxDBTextEdit10
            end
            object Label11: TLabel
              Left = 8
              Top = 168
              Width = 38
              Height = 13
              Caption = 'Recibo'
              FocusControl = cxDBTextEdit11
            end
            object Label15: TLabel
              Left = 144
              Top = 128
              Width = 39
              Height = 13
              Caption = 'C'#243'pias'
              FocusControl = cxDBTextEdit22
            end
            object Label25: TLabel
              Left = 144
              Top = 168
              Width = 39
              Height = 13
              Caption = 'C'#243'pias'
              FocusControl = cxDBTextEdit23
            end
            object Label26: TLabel
              Left = 144
              Top = 88
              Width = 39
              Height = 13
              Caption = 'C'#243'pias'
              FocusControl = cxDBTextEdit24
            end
            object Label27: TLabel
              Left = 144
              Top = 48
              Width = 39
              Height = 13
              Caption = 'C'#243'pias'
              FocusControl = cxDBTextEdit25
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'NOTA_PADRAO'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 7
              Top = 63
              DataBinding.DataField = 'OSABERTA_PADRAO'
              DataBinding.DataSource = dsrDados
              TabOrder = 1
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 7
              Top = 103
              DataBinding.DataField = 'OSABERTA_PADRAO_2A'
              DataBinding.DataSource = dsrDados
              TabOrder = 3
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 7
              Top = 143
              DataBinding.DataField = 'OSFECHADA_PADRAO'
              DataBinding.DataSource = dsrDados
              TabOrder = 5
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 7
              Top = 183
              DataBinding.DataField = 'RECIBO_PADRAO'
              DataBinding.DataSource = dsrDados
              TabOrder = 7
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 143
              Top = 143
              DataBinding.DataField = 'COPIAS_OS2'
              DataBinding.DataSource = dsrDados
              TabOrder = 6
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 58
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 143
              Top = 183
              DataBinding.DataField = 'COPIAS_RECIBO'
              DataBinding.DataSource = dsrDados
              TabOrder = 8
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 58
            end
            object cxDBTextEdit24: TcxDBTextEdit
              Left = 143
              Top = 103
              DataBinding.DataField = 'COPIAS_OS'
              DataBinding.DataSource = dsrDados
              TabOrder = 4
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 58
            end
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 143
              Top = 63
              DataBinding.DataField = 'COPIAS_OS'
              DataBinding.DataSource = dsrDados
              TabOrder = 2
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 58
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'Fiscal'
            ImageIndex = 3
            object Label12: TLabel
              Left = 8
              Top = 8
              Width = 71
              Height = 13
              Caption = 'Al'#237'quota ISS'
              FocusControl = cxDBTextEdit12
            end
            object Label13: TLabel
              Left = 8
              Top = 48
              Width = 130
              Height = 13
              Caption = 'Al'#237'quota ICMS Simples'
              FocusControl = cxDBTextEdit13
            end
            object Label16: TLabel
              Left = 168
              Top = 8
              Width = 88
              Height = 13
              Caption = 'Moeda Singular'
              FocusControl = cxDBTextEdit14
            end
            object Label17: TLabel
              Left = 168
              Top = 48
              Width = 73
              Height = 13
              Caption = 'Moeda Plural'
              FocusControl = cxDBTextEdit15
            end
            object Label18: TLabel
              Left = 168
              Top = 88
              Width = 99
              Height = 13
              Caption = 'Centavo Singular'
              FocusControl = cxDBTextEdit16
            end
            object Label19: TLabel
              Left = 168
              Top = 128
              Width = 84
              Height = 13
              Caption = 'Centavo Plural'
              FocusControl = cxDBTextEdit17
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'ALIQUOTA_ISS'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 7
              Top = 63
              DataBinding.DataField = 'ALIQUOTA_ICMSSIMPLES'
              DataBinding.DataSource = dsrDados
              TabOrder = 1
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 8
              Top = 96
              Caption = 'ICMS Simples'
              DataBinding.DataField = 'ICMSSIMPLES'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 2
              Width = 121
            end
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 8
              Top = 136
              Caption = 'Padr'#227'o'
              DataBinding.DataField = 'PADRAO'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 167
              Top = 23
              DataBinding.DataField = 'MOEDASINGULAR'
              DataBinding.DataSource = dsrDados
              TabOrder = 4
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 167
              Top = 63
              DataBinding.DataField = 'MOEDAPLURAL'
              DataBinding.DataSource = dsrDados
              TabOrder = 5
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 167
              Top = 103
              DataBinding.DataField = 'CENTAVOSINGULAR'
              DataBinding.DataSource = dsrDados
              TabOrder = 6
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 167
              Top = 143
              DataBinding.DataField = 'CENTAVOPLURAL'
              DataBinding.DataSource = dsrDados
              TabOrder = 7
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
          end
          object cxTabSheet5: TcxTabSheet
            Caption = 'Mensagens'
            ImageIndex = 4
            object Label20: TLabel
              Left = 8
              Top = 8
              Width = 183
              Height = 13
              Caption = 'Condi'#231#245'es gerais do Or'#231'amento'
              FocusControl = cxDBMemo1
            end
            object Label21: TLabel
              Left = 8
              Top = 112
              Width = 230
              Height = 13
              Caption = 'Condi'#231#245'es de pagamento do Or'#231'amento'
              FocusControl = cxDBMemo2
            end
            object Label22: TLabel
              Left = 8
              Top = 216
              Width = 128
              Height = 13
              Caption = 'Mensagem final da OS'
              FocusControl = cxDBTextEdit18
            end
            object Label23: TLabel
              Left = 8
              Top = 256
              Width = 147
              Height = 13
              Caption = 'Mensagem final da Venda'
              FocusControl = cxDBTextEdit19
            end
            object cxDBMemo1: TcxDBMemo
              Left = 7
              Top = 23
              DataBinding.DataField = 'OSCOND1'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Height = 82
              Width = 498
            end
            object cxDBMemo2: TcxDBMemo
              Left = 7
              Top = 127
              DataBinding.DataField = 'OSCOND2'
              DataBinding.DataSource = dsrDados
              TabOrder = 1
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Height = 82
              Width = 498
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 7
              Top = 231
              DataBinding.DataField = 'MENSAGEM_OS'
              DataBinding.DataSource = dsrDados
              TabOrder = 2
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 498
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 7
              Top = 271
              DataBinding.DataField = 'MENSAGEM_VENDA'
              DataBinding.DataSource = dsrDados
              TabOrder = 3
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 498
            end
          end
          object cxTabSheet6: TcxTabSheet
            Caption = 'Seguran'#231'a'
            ImageIndex = 5
            object Label24: TLabel
              Left = 8
              Top = 8
              Width = 150
              Height = 13
              Caption = 'Timer LOGOFF (segundos)'
              FocusControl = cxDBTextEdit20
            end
            object cxDBTextEdit20: TcxDBTextEdit
              Left = 7
              Top = 23
              DataBinding.DataField = 'LOGTIMEOFF'
              DataBinding.DataSource = dsrDados
              TabOrder = 0
              OnEnter = edtPesquisar2Enter
              OnExit = edtPesquisar2Exit
              Width = 121
            end
            object cxDBCheckBox7: TcxDBCheckBox
              Left = 8
              Top = 56
              Caption = 'Confirmar altera'#231#245'es com senha'
              DataBinding.DataField = 'SENHA_BAIXA'
              DataBinding.DataSource = dsrDados
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Style.TransparentBorder = True
              TabOrder = 1
              Width = 241
            end
          end
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 463
    Width = 559
    ExplicitTop = 463
    ExplicitWidth = 559
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 456
    Top = 223
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
  end
  inherited cdsDados: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, SI.CODIGO, SI.CODCLIENTE, C1.NOME AS EMPRESA,' +
      ' SI.CODCLIENTE_PADRAO, C2.NOME AS CONSUMIDOR, SI.VALOR_LIMITE, S' +
      'I.ALIQUOTA_ISS, SI.ALIQUOTA_ICMSSIMPLES, SI.ICMSSIMPLES, SI.PADR' +
      'AO, SI.MOEDASINGULAR, SI.MOEDAPLURAL, SI.CENTAVOSINGULAR, SI.CEN' +
      'TAVOPLURAL, SI.NOTA_PADRAO, SI.OSABERTA_PADRAO, SI.OSABERTA_PADR' +
      'AO_2A, SI.OSFECHADA_PADRAO, SI.RECIBO_PADRAO, SI.LOGTIMEOFF, SI.' +
      'OSCOND1, SI.OSCOND2, SI.BLOQUEIO_DIAS, SI.CODHISTORICO_COMPRA, H' +
      'C.DESCRICAO AS HISTORICOCOMPRA, SI.CODHISTORICO_VENDA, HV.DESCRI' +
      'CAO AS HISTORICOVENDA, SI.MENSAGEM_OS, SI.MENSAGEM_VENDA, SI.SEN' +
      'HA_CLIENTES, SI.SENHA_PRODUTOS, SI.SENHA_OS, SI.SENHA_FECHAMENTO' +
      ', SI.SENHA_BAIXA, SI.VERIFICA_LIMITE, SI.COPIAS_OS, SI.COPIAS_OS' +
      '2, SI.COPIAS_RECIBO, SI.PRECO_CLIENTE FROM SISCONFIG SI JOIN CLI' +
      'ENTES C1 ON (C1.CODIGO = SI.CODCLIENTE) LEFT JOIN CLIENTES C2 ON' +
      ' (C2.CODIGO = SI.CODCLIENTE_PADRAO) LEFT JOIN HISTORICOPAG HC ON' +
      ' (HC.CODIGO = SI.CODHISTORICO_COMPRA) LEFT JOIN HISTORICOPAG HV ' +
      'ON (HV.CODIGO = SI.CODHISTORICO_VENDA)'
    ProviderName = 'pvPerfil'
    Left = 536
    Top = 272
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
    object cdsDadosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsDadosEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosCODCLIENTE_PADRAO: TIntegerField
      FieldName = 'CODCLIENTE_PADRAO'
      Required = True
    end
    object cdsDadosCONSUMIDOR: TStringField
      FieldName = 'CONSUMIDOR'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsDadosVALOR_LIMITE: TFloatField
      FieldName = 'VALOR_LIMITE'
    end
    object cdsDadosALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      DisplayFormat = '##0.0000'
    end
    object cdsDadosALIQUOTA_ICMSSIMPLES: TFloatField
      FieldName = 'ALIQUOTA_ICMSSIMPLES'
      DisplayFormat = '##0.0000'
    end
    object cdsDadosICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosPADRAO: TStringField
      FieldName = 'PADRAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosMOEDASINGULAR: TStringField
      FieldName = 'MOEDASINGULAR'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosMOEDAPLURAL: TStringField
      FieldName = 'MOEDAPLURAL'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosCENTAVOSINGULAR: TStringField
      FieldName = 'CENTAVOSINGULAR'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosCENTAVOPLURAL: TStringField
      FieldName = 'CENTAVOPLURAL'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDadosNOTA_PADRAO: TIntegerField
      FieldName = 'NOTA_PADRAO'
    end
    object cdsDadosOSABERTA_PADRAO: TIntegerField
      FieldName = 'OSABERTA_PADRAO'
    end
    object cdsDadosOSABERTA_PADRAO_2A: TIntegerField
      FieldName = 'OSABERTA_PADRAO_2A'
    end
    object cdsDadosOSFECHADA_PADRAO: TIntegerField
      FieldName = 'OSFECHADA_PADRAO'
    end
    object cdsDadosRECIBO_PADRAO: TIntegerField
      FieldName = 'RECIBO_PADRAO'
    end
    object cdsDadosLOGTIMEOFF: TIntegerField
      FieldName = 'LOGTIMEOFF'
      Required = True
    end
    object cdsDadosOSCOND1: TStringField
      FieldName = 'OSCOND1'
      Size = 254
    end
    object cdsDadosOSCOND2: TStringField
      FieldName = 'OSCOND2'
      Size = 254
    end
    object cdsDadosBLOQUEIO_DIAS: TIntegerField
      FieldName = 'BLOQUEIO_DIAS'
      Required = True
    end
    object cdsDadosCODHISTORICO_COMPRA: TIntegerField
      FieldName = 'CODHISTORICO_COMPRA'
    end
    object cdsDadosHISTORICOCOMPRA: TStringField
      FieldName = 'HISTORICOCOMPRA'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosCODHISTORICO_VENDA: TIntegerField
      FieldName = 'CODHISTORICO_VENDA'
    end
    object cdsDadosHISTORICOVENDA: TStringField
      FieldName = 'HISTORICOVENDA'
      ProviderFlags = []
      FixedChar = True
      Size = 60
    end
    object cdsDadosMENSAGEM_OS: TStringField
      FieldName = 'MENSAGEM_OS'
      Size = 254
    end
    object cdsDadosMENSAGEM_VENDA: TStringField
      FieldName = 'MENSAGEM_VENDA'
      Size = 254
    end
    object cdsDadosSENHA_CLIENTES: TStringField
      FieldName = 'SENHA_CLIENTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosSENHA_PRODUTOS: TStringField
      FieldName = 'SENHA_PRODUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosSENHA_OS: TStringField
      FieldName = 'SENHA_OS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosSENHA_FECHAMENTO: TStringField
      FieldName = 'SENHA_FECHAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosSENHA_BAIXA: TStringField
      FieldName = 'SENHA_BAIXA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosVERIFICA_LIMITE: TStringField
      FieldName = 'VERIFICA_LIMITE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosCOPIAS_OS: TIntegerField
      FieldName = 'COPIAS_OS'
      Required = True
    end
    object cdsDadosCOPIAS_OS2: TIntegerField
      FieldName = 'COPIAS_OS2'
      Required = True
    end
    object cdsDadosCOPIAS_RECIBO: TIntegerField
      FieldName = 'COPIAS_RECIBO'
      Required = True
    end
    object cdsDadosPRECO_CLIENTE: TStringField
      FieldName = 'PRECO_CLIENTE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dsrDados: TDataSource
    Left = 536
    Top = 320
  end
  inherited tmrFocus: TTimer
    Left = 536
    Top = 224
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 632
    Top = 224
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39837.508464444440000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 712
    Top = 224
  end
  inherited actDetalhes: TActionList
    Left = 632
    Top = 168
  end
  inherited tmrRelogio: TTimer
    Left = 536
    Top = 168
  end
  inherited tmrLabel: TTimer
    Left = 800
    Top = 168
  end
  inherited menuGrade: TPopupMenu
    Left = 792
    Top = 224
  end
  inherited tmrFocus2: TTimer
    Left = 632
    Top = 280
  end
  inherited SaveDialog: TSaveDialog
    Left = 712
    Top = 168
  end
end
