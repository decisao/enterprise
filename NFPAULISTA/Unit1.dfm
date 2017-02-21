object Form1: TForm1
  Left = 158
  Top = 106
  BorderStyle = bsDialog
  Caption = 'Gerador Nota Fiscal Paulista'
  ClientHeight = 439
  ClientWidth = 554
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 554
    Height = 439
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Nota Fiscal Paulista'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 546
        Height = 277
        Align = alTop
        TabOrder = 2
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 116
          Height = 13
          AutoSize = False
          Caption = 'Diretorio de Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 40
          Width = 113
          Height = 13
          AutoSize = False
          Caption = 'Diret'#243'rio de Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 128
          Top = 56
          Width = 320
          Height = 13
          Caption = 
            'O diret'#243'rio de entrada deve conter os arquivos CFOP.res e NCM.re' +
            's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 8
          Top = 88
          Width = 113
          Height = 13
          AutoSize = False
          Caption = 'Empresa para Gerar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 200
          Width = 113
          Height = 13
          AutoSize = False
          Caption = 'Data Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 227
          Width = 113
          Height = 13
          AutoSize = False
          Caption = 'Data Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 130
          Top = 10
          Width = 367
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'C:\'
        end
        object Edit2: TEdit
          Left = 130
          Top = 34
          Width = 367
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 
            'C:\Documents and Settings\alexandre\Desktop\Arquivos\DLL_v5.0\De' +
            'mo_Sintegra32Dll\Delphi\Sintegra_Sem_BD\Erro.txt'
        end
        object BitBtn1: TBitBtn
          Left = 504
          Top = 10
          Width = 21
          Height = 21
          TabOrder = 2
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
            B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
            B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
            0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
            55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
            55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
            55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
            5555575FFF755555555557000075555555555577775555555555}
          NumGlyphs = 2
        end
        object BitBtn2: TBitBtn
          Left = 504
          Top = 34
          Width = 21
          Height = 21
          TabOrder = 3
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
            B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
            B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
            0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
            55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
            55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
            55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
            5555575FFF755555555557000075555555555577775555555555}
          NumGlyphs = 2
        end
        object DBGrid1: TDBGrid
          Left = 128
          Top = 88
          Width = 369
          Height = 97
          DataSource = dsrEmpresas
          Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Visible = True
            end>
        end
        object DateTimePicker1: TDateTimePicker
          Left = 127
          Top = 200
          Width = 114
          Height = 21
          Date = 39561.331796979170000000
          Time = 39561.331796979170000000
          TabOrder = 5
        end
        object DateTimePicker2: TDateTimePicker
          Left = 127
          Top = 227
          Width = 114
          Height = 21
          Date = 39561.331796979170000000
          Time = 39561.331796979170000000
          TabOrder = 6
        end
        object Button1: TButton
          Left = 288
          Top = 200
          Width = 75
          Height = 25
          Caption = 'Gerar'
          TabOrder = 7
          OnClick = Button1Click
        end
      end
      object Button7: TButton
        Left = 436
        Top = 494
        Width = 100
        Height = 25
        Caption = 'Sai&r'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 277
        Width = 546
        Height = 134
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 1
        Visible = False
        object TabSheet4: TTabSheet
          Caption = 'Nota Fiscal Paulista'
          object GroupBox1: TGroupBox
            Left = 344
            Top = 3
            Width = 177
            Height = 62
            Caption = 'Legenda:'
            TabOrder = 0
            object Label5: TLabel
              Left = 9
              Top = 19
              Width = 160
              Height = 13
              Caption = 'Negrito: Abertura ou enceramento'
            end
            object Label7: TLabel
              Left = 9
              Top = 35
              Width = 80
              Height = 13
              Caption = 'do arquivo digital'
            end
          end
          object SairBtn: TButton
            Left = 380
            Top = 71
            Width = 113
            Height = 25
            Hint = 
              'Registro de Total de Documento Fical  quanto a substitui'#231#227'o trib' +
              'ut'#225'ria'#13#10'Informado por Quem Realizou Substitui'#231#227'o e Pelo Substitu' +
              'to Tribut'#225'rio/ Realizou Antecipa'#231#227'o'
            Caption = 'Sair'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = SairBtnClick
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 8
            Width = 137
            Height = 209
            Caption = 'CAT 102/07'
            TabOrder = 2
            object Reg10Btn: TButton
              Left = 10
              Top = 24
              Width = 113
              Height = 25
              Caption = 'Registro 10'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Reg10BtnClick
            end
            object Reg20Btn: TButton
              Left = 10
              Top = 48
              Width = 113
              Height = 25
              Hint = 
                'Registro Mestre do Estabelecimento'#13#10'Indentifi'#231#227'o do Estabelecime' +
                'nto informante'
              Caption = 'Registro 20'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = Reg20BtnClick
            end
            object Reg30Btn: TButton
              Left = 10
              Top = 72
              Width = 113
              Height = 25
              Hint = 'Dados complementares do informante'
              Caption = 'Registro 30'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = Reg30BtnClick
            end
            object Reg40Btn: TButton
              Left = 10
              Top = 96
              Width = 113
              Height = 25
              Hint = 'Registro de Total de Nota Fiscal'
              Caption = 'Registro 40'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = Reg40BtnClick
            end
            object Reg50Btn: TButton
              Left = 10
              Top = 120
              Width = 113
              Height = 25
              Hint = 'Registros de Total de Nota Fiscal Quanto ao IPI'
              Caption = 'Registro 50'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = Reg50BtnClick
            end
            object Reg60Btn: TButton
              Left = 10
              Top = 144
              Width = 113
              Height = 25
              Hint = 
                'Registro de Total de Documento Fical  quanto a substitui'#231#227'o trib' +
                'ut'#225'ria'#13#10'Informado por Quem Realizou Substitui'#231#227'o e Pelo Substitu' +
                'to Tribut'#225'rio/ Realizou Antecipa'#231#227'o'
              Caption = 'Registro 60'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = Reg60BtnClick
            end
            object Reg90Btn: TButton
              Left = 10
              Top = 168
              Width = 113
              Height = 25
              Hint = 'Registro de Produto (Classifica'#231#227'o Fiscal)'
              Caption = 'Registro 90'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = Reg90BtnClick
            end
          end
          object GroupBox3: TGroupBox
            Left = 144
            Top = 8
            Width = 137
            Height = 153
            Caption = 'CAT 98/07'
            TabOrder = 3
            object Reg10_CAT9807: TButton
              Left = 10
              Top = 24
              Width = 113
              Height = 25
              Caption = 'Registro 10'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Reg10_CAT9807Click
            end
            object Reg20_CAT9807: TButton
              Left = 10
              Top = 48
              Width = 113
              Height = 25
              Hint = 
                'Registro Mestre do Estabelecimento'#13#10'Indentifi'#231#227'o do Estabelecime' +
                'nto informante'
              Caption = 'Registro 20'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = Reg20_CAT9807Click
            end
            object Reg21_CAT9807: TButton
              Left = 10
              Top = 72
              Width = 113
              Height = 25
              Hint = 'Dados complementares do informante'
              Caption = 'Registro 21'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = Reg21_CAT9807Click
            end
            object Reg22_CAT9807: TButton
              Left = 10
              Top = 96
              Width = 113
              Height = 25
              Hint = 'Registro de Total de Nota Fiscal'
              Caption = 'Registro 22'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = Reg22_CAT9807Click
            end
            object Reg90_CAT9807: TButton
              Left = 10
              Top = 120
              Width = 113
              Height = 25
              Hint = 'Registro de Produto (Classifica'#231#227'o Fiscal)'
              Caption = 'Registro 90'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = Reg90_CAT9807Click
            end
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 337
    Top = 519
    object Sequencia203040506090: TMenuItem
      Caption = 'Sequencia (10,20,30,40,50,60,90)'
      OnClick = Sequencia10_20_30_40_50_60_90Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.txt'
    Filter = 'Todos os arquivos (*.*)|*.*|Arquivos de Texto|*.txt'
    Title = 'Selecione..'
    Left = 373
    Top = 520
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'BASE'
    DriverName = 'InterBase by Core Lab'
    GetDriverFunc = 'getSQLDriverInterBase'
    LibraryName = 'dbexpida40.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=InterBase by Core Lab'
      'DataBase=localhost:C:\TALIGENT\fbdata\SERVTEC.FDB'
      'User_Name=REMOTO'
      'Password=r3m0t0'
      'SQLDialect=3'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode='
      'InterBase by Core Lab TransIsolation=ReadCommited'
      'ProductName=Interbase'
      
        'DriverAssemblyLoader=CoreLab.DbxIda.DriverLoader.TCRDynalinkDriv' +
        'erLoader,CoreLab.DbxIda.DriverLoader,Version=1.0.0.5001,Culture=' +
        'neutral,PublicKeyToken=09af7300eec23701'
      'TrimFixedChar=True')
    VendorLib = 'gds32.DLL'
    Left = 440
    Top = 256
  end
  object dsrEmpresas: TDataSource
    DataSet = cdsEmpresas
    Left = 440
    Top = 144
  end
  object qryEmpresas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  SISCONFIG.CODIGO,'
      '  CLIENTES.NOME,'
      '  CLIENTES.CGC AS CNPJ'
      'FROM'
      '  SISCONFIG'
      '  JOIN CLIENTES ON'
      '    (CLIENTES.CODIGO = SISCONFIG.CODCLIENTE)')
    SQLConnection = SQLConnection
    Left = 440
    Top = 200
    object qryEmpresasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qryEmpresasNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
    object qryEmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
  end
  object provEmpresas: TDataSetProvider
    DataSet = qryEmpresas
    Left = 368
    Top = 192
  end
  object cdsEmpresas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provEmpresas'
    Left = 368
    Top = 144
    object cdsEmpresasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsEmpresasNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 40
    end
    object cdsEmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
  end
  object cdsMovimentos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'provMovimentos'
    Left = 216
    Top = 144
    object cdsMovimentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object provMovimentos: TDataSetProvider
    DataSet = qryMovimentos
    Left = 216
    Top = 200
  end
  object dsrMovimentos: TDataSource
    DataSet = cdsMovimentos
    Left = 288
    Top = 144
  end
  object qryMovimentos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  CODIGO'
      'FROM'
      '  MOVIMENTOS'
      'WHERE'
      
        '  (CAST(NOTA_DATAEMISSAO AS DATE) BETWEEN :DATAINI AND :DATAFIM)' +
        ' AND'
      '  (ES = 2) AND'
      '  (TIPO IN (3, 6)) AND'
      '  (NOTA_NUMERO > 0) AND'
      '  (VALOR_PRODUTOS > 0) AND'
      '  (CODEMPRESA = :CODIGO)'
      'ORDER BY '
      '  NOTA_NUMERO')
    SQLConnection = SQLConnection
    Left = 288
    Top = 184
    object qryMovimentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'provVenda'
    Left = 216
    Top = 32
    object cdsVendaES: TSmallintField
      FieldName = 'ES'
    end
    object cdsVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsVendaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsVendaSERVICOS: TStringField
      FieldName = 'SERVICOS'
      Size = 254
    end
    object cdsVendaVALOR_SERVICOS: TFloatField
      FieldName = 'VALOR_SERVICOS'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaVALOR_ITENS: TFloatField
      FieldName = 'VALOR_ITENS'
    end
    object cdsVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsVendaVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object cdsVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object cdsVendaNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object cdsVendaNOTA_DATAEMISSAO: TSQLTimeStampField
      FieldName = 'NOTA_DATAEMISSAO'
    end
    object cdsVendaNOTA_CODNATUOPER: TStringField
      FieldName = 'NOTA_CODNATUOPER'
      Size = 10
    end
    object cdsVendaNOTA_CODTRANSPORTADOR: TIntegerField
      FieldName = 'NOTA_CODTRANSPORTADOR'
    end
    object cdsVendaNOTA_PLACAVEICULO: TStringField
      FieldName = 'NOTA_PLACAVEICULO'
      Size = 10
    end
    object cdsVendaNOTA_UFVEICULO: TStringField
      FieldName = 'NOTA_UFVEICULO'
      Size = 2
    end
    object cdsVendaNOTA_FRETE: TSmallintField
      FieldName = 'NOTA_FRETE'
    end
    object cdsVendaNOTA_VALOR_FRETE: TFloatField
      FieldName = 'NOTA_VALOR_FRETE'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaNOTA_VALOR_SEGURO: TFloatField
      FieldName = 'NOTA_VALOR_SEGURO'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaNOTA_VALOR_OUTROS: TFloatField
      FieldName = 'NOTA_VALOR_OUTROS'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaNOTA_VALOR_TOTAL: TFloatField
      FieldName = 'NOTA_VALOR_TOTAL'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaNOTA_QUANTIDADE: TFloatField
      FieldName = 'NOTA_QUANTIDADE'
    end
    object cdsVendaNOTA_ESPECIE: TStringField
      FieldName = 'NOTA_ESPECIE'
      Size = 30
    end
    object cdsVendaNOTA_MARCA: TStringField
      FieldName = 'NOTA_MARCA'
    end
    object cdsVendaNOTA_VOLNUM: TIntegerField
      FieldName = 'NOTA_VOLNUM'
    end
    object cdsVendaNOTA_PESOBRUTO: TFloatField
      FieldName = 'NOTA_PESOBRUTO'
      DisplayFormat = '####0.000'
    end
    object cdsVendaNOTA_PESOLIQUIDO: TFloatField
      FieldName = 'NOTA_PESOLIQUIDO'
      DisplayFormat = '####0.000'
    end
    object cdsVendaNOTA_DADOSADICIONAIS: TStringField
      FieldName = 'NOTA_DADOSADICIONAIS'
      Size = 254
    end
    object cdsVendaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object cdsVendaCONDICAO: TStringField
      FieldName = 'CONDICAO'
      Size = 40
    end
    object cdsVendaDATAINICIO: TSQLTimeStampField
      FieldName = 'DATAINICIO'
    end
    object cdsVendaDATATERMINO: TSQLTimeStampField
      FieldName = 'DATATERMINO'
    end
    object cdsVendaICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsVendaICMSSIMPALIQ: TFloatField
      FieldName = 'ICMSSIMPALIQ'
    end
    object cdsVendaISSALIQ: TFloatField
      FieldName = 'ISSALIQ'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaNOTA_IESUBST: TStringField
      FieldName = 'NOTA_IESUBST'
    end
    object cdsVendaNOTA_DATASAIDA: TSQLTimeStampField
      FieldName = 'NOTA_DATASAIDA'
    end
    object cdsVendaNOTA_BASEICMS: TFloatField
      FieldName = 'NOTA_BASEICMS'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaNOTA_BASEICMSSUBST: TFloatField
      FieldName = 'NOTA_BASEICMSSUBST'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaNOTA_VALORICMSSUBST: TFloatField
      FieldName = 'NOTA_VALORICMSSUBST'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '#######0.00'
    end
    object cdsVendaCODVENDEDOR_ABRE: TIntegerField
      FieldName = 'CODVENDEDOR_ABRE'
    end
    object cdsVendaDESCONTOTXT: TStringField
      FieldName = 'DESCONTOTXT'
      Size = 40
    end
    object cdsVendaCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 40
    end
    object cdsVendaCLI_RAZAOSOCIAL: TStringField
      FieldName = 'CLI_RAZAOSOCIAL'
      Size = 40
    end
    object cdsVendaCLI_LOGRADOURO: TStringField
      FieldName = 'CLI_LOGRADOURO'
      Size = 60
    end
    object cdsVendaCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
    end
    object cdsVendaCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 40
    end
    object cdsVendaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 60
    end
    object cdsVendaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object cdsVendaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 60
    end
    object cdsVendaCLI_ESTADO: TStringField
      FieldName = 'CLI_ESTADO'
      Size = 2
    end
    object cdsVendaCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
    end
    object cdsVendaCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
    end
    object cdsVendaCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
    end
    object cdsVendaCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 50
    end
    object cdsVendaCLI_RGIE: TStringField
      FieldName = 'CLI_RGIE'
    end
    object cdsVendaCLI_CPFCGC: TStringField
      FieldName = 'CLI_CPFCGC'
    end
    object cdsVendaTRA_NOME: TStringField
      FieldName = 'TRA_NOME'
      Size = 40
    end
    object cdsVendaTRA_LOGRADOURO: TStringField
      FieldName = 'TRA_LOGRADOURO'
      Size = 60
    end
    object cdsVendaTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
    end
    object cdsVendaTRA_COMPLEMENTO: TStringField
      FieldName = 'TRA_COMPLEMENTO'
      Size = 40
    end
    object cdsVendaTRA_BAIRRO: TStringField
      FieldName = 'TRA_BAIRRO'
      Size = 60
    end
    object cdsVendaTRA_CEP: TStringField
      FieldName = 'TRA_CEP'
      Size = 10
    end
    object cdsVendaTRA_CIDADE: TStringField
      FieldName = 'TRA_CIDADE'
      Size = 60
    end
    object cdsVendaTRA_ESTADO: TStringField
      FieldName = 'TRA_ESTADO'
      Size = 2
    end
    object cdsVendaTRA_FONE: TStringField
      FieldName = 'TRA_FONE'
    end
    object cdsVendaTRA_FAX: TStringField
      FieldName = 'TRA_FAX'
    end
    object cdsVendaTRA_EMAIL: TStringField
      FieldName = 'TRA_EMAIL'
      Size = 50
    end
    object cdsVendaTRA_RGIE: TStringField
      FieldName = 'TRA_RGIE'
    end
    object cdsVendaTRA_CPFCGC: TStringField
      FieldName = 'TRA_CPFCGC'
    end
    object cdsVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 40
    end
    object cdsVendaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 40
    end
    object cdsVendaDEFEITO: TStringField
      FieldName = 'DEFEITO'
      Size = 40
    end
    object cdsVendaGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsVendaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 40
    end
    object cdsVendaACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      Size = 50
    end
    object cdsVendaCONDICAOEXTERNA: TStringField
      FieldName = 'CONDICAOEXTERNA'
      Size = 40
    end
    object cdsVendaSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 40
    end
    object cdsVendaVENDEDORABRE: TStringField
      FieldName = 'VENDEDORABRE'
      Size = 40
    end
    object cdsVendaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 40
    end
    object cdsVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 40
    end
    object cdsVendaCLI_CONTRATO: TStringField
      FieldName = 'CLI_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsVendaCLI_KM: TIntegerField
      FieldName = 'CLI_KM'
    end
    object cdsVendaNATUREZAOPERACAO: TStringField
      FieldName = 'NATUREZAOPERACAO'
      Size = 30
    end
    object cdsVendaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object cdsVendaEMPRESA_NOME: TStringField
      FieldName = 'EMPRESA_NOME'
      Size = 40
    end
    object cdsVendaEMPRESA_RAZAOSOCIAL: TStringField
      FieldName = 'EMPRESA_RAZAOSOCIAL'
      Size = 50
    end
    object cdsVendaEMPRESA_CNPJ: TStringField
      FieldName = 'EMPRESA_CNPJ'
    end
    object cdsVendaEMPRESA_IE: TStringField
      FieldName = 'EMPRESA_IE'
    end
    object cdsVendaEMPRESA_LOGRADOURO: TStringField
      FieldName = 'EMPRESA_LOGRADOURO'
      Size = 60
    end
    object cdsVendaEMPRESA_NUMERO: TIntegerField
      FieldName = 'EMPRESA_NUMERO'
    end
    object cdsVendaEMPRESA_COMPLEMENTO: TStringField
      FieldName = 'EMPRESA_COMPLEMENTO'
      Size = 40
    end
    object cdsVendaEMPRESA_BAIRRO: TStringField
      FieldName = 'EMPRESA_BAIRRO'
      Size = 60
    end
    object cdsVendaEMPRESA_CIDADE: TStringField
      FieldName = 'EMPRESA_CIDADE'
      Size = 60
    end
    object cdsVendaEMPRESA_ESTADO: TStringField
      FieldName = 'EMPRESA_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsVendaEMPRESA_CEP: TStringField
      FieldName = 'EMPRESA_CEP'
      Size = 9
    end
    object cdsVendaEMPRESA_FONE: TStringField
      FieldName = 'EMPRESA_FONE'
    end
    object cdsVendaTIPOOS: TStringField
      FieldName = 'TIPOOS'
      Size = 40
    end
    object cdsVendaXX_ENTRADA: TStringField
      FieldName = 'XX_ENTRADA'
      FixedChar = True
      Size = 2
    end
    object cdsVendaXX_SAIDA: TStringField
      FieldName = 'XX_SAIDA'
      FixedChar = True
      Size = 2
    end
    object cdsVendaEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 254
    end
    object cdsVendaTECNICO: TStringField
      FieldName = 'TECNICO'
    end
    object cdsVendaDEFEITO_DETECTADO: TStringField
      FieldName = 'DEFEITO_DETECTADO'
      Size = 60
    end
    object cdsVendaSERVICO_REALIZAR: TStringField
      FieldName = 'SERVICO_REALIZAR'
      Size = 60
    end
    object cdsVendaAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object cdsVendaDATA_AUTORIZADO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZADO'
    end
    object cdsVendaQUEM_AUTORIZOU: TStringField
      FieldName = 'QUEM_AUTORIZOU'
      Size = 40
    end
    object cdsVendaDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object cdsVendaQUEM_ENTREGOU: TStringField
      FieldName = 'QUEM_ENTREGOU'
      Size = 40
    end
    object cdsVendaQUEM_RECEBEU: TStringField
      FieldName = 'QUEM_RECEBEU'
      Size = 40
    end
    object cdsVendaNOTA_ENTRADA: TIntegerField
      FieldName = 'NOTA_ENTRADA'
    end
    object cdsVendaAUTORIZADO_SIM: TStringField
      FieldName = 'AUTORIZADO_SIM'
      FixedChar = True
      Size = 1
    end
    object cdsVendaAUTORIZADO_NAO: TStringField
      FieldName = 'AUTORIZADO_NAO'
      FixedChar = True
      Size = 1
    end
    object cdsVendaPARCEIRO: TStringField
      FieldName = 'PARCEIRO'
      Size = 40
    end
    object cdsVendaMENSAGEM_OS: TStringField
      FieldName = 'MENSAGEM_OS'
      Size = 254
    end
    object cdsVendaMENSAGEM_VENDA: TStringField
      FieldName = 'MENSAGEM_VENDA'
      Size = 254
    end
    object cdsVendaOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 40
    end
    object cdsVendaNO_IPI: TStringField
      FieldName = 'NO_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object provVenda: TDataSetProvider
    DataSet = qryVenda
    Left = 216
    Top = 88
  end
  object dsrVenda: TDataSource
    DataSet = cdsVenda
    Left = 288
    Top = 32
  end
  object qryVenda: TSQLQuery
    DataSource = dsrMovimentos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  REL_NOTACORPO(:CODIGO)')
    SQLConnection = SQLConnection
    Left = 288
    Top = 88
    object qryVendaES: TSmallintField
      FieldName = 'ES'
    end
    object qryVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qryVendaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object qryVendaSERVICOS: TStringField
      FieldName = 'SERVICOS'
      Size = 254
    end
    object qryVendaVALOR_SERVICOS: TFloatField
      FieldName = 'VALOR_SERVICOS'
    end
    object qryVendaVALOR_ITENS: TFloatField
      FieldName = 'VALOR_ITENS'
    end
    object qryVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qryVendaVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qryVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qryVendaVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object qryVendaOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object qryVendaNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object qryVendaNOTA_DATAEMISSAO: TSQLTimeStampField
      FieldName = 'NOTA_DATAEMISSAO'
    end
    object qryVendaNOTA_CODNATUOPER: TStringField
      FieldName = 'NOTA_CODNATUOPER'
      Size = 10
    end
    object qryVendaNOTA_CODTRANSPORTADOR: TIntegerField
      FieldName = 'NOTA_CODTRANSPORTADOR'
    end
    object qryVendaNOTA_PLACAVEICULO: TStringField
      FieldName = 'NOTA_PLACAVEICULO'
      Size = 10
    end
    object qryVendaNOTA_UFVEICULO: TStringField
      FieldName = 'NOTA_UFVEICULO'
      Size = 2
    end
    object qryVendaNOTA_FRETE: TSmallintField
      FieldName = 'NOTA_FRETE'
    end
    object qryVendaNOTA_VALOR_FRETE: TFloatField
      FieldName = 'NOTA_VALOR_FRETE'
    end
    object qryVendaNOTA_VALOR_SEGURO: TFloatField
      FieldName = 'NOTA_VALOR_SEGURO'
    end
    object qryVendaNOTA_VALOR_OUTROS: TFloatField
      FieldName = 'NOTA_VALOR_OUTROS'
    end
    object qryVendaNOTA_VALOR_TOTAL: TFloatField
      FieldName = 'NOTA_VALOR_TOTAL'
    end
    object qryVendaNOTA_QUANTIDADE: TFloatField
      FieldName = 'NOTA_QUANTIDADE'
    end
    object qryVendaNOTA_ESPECIE: TStringField
      FieldName = 'NOTA_ESPECIE'
      Size = 30
    end
    object qryVendaNOTA_MARCA: TStringField
      FieldName = 'NOTA_MARCA'
    end
    object qryVendaNOTA_VOLNUM: TIntegerField
      FieldName = 'NOTA_VOLNUM'
    end
    object qryVendaNOTA_PESOBRUTO: TFloatField
      FieldName = 'NOTA_PESOBRUTO'
    end
    object qryVendaNOTA_PESOLIQUIDO: TFloatField
      FieldName = 'NOTA_PESOLIQUIDO'
    end
    object qryVendaNOTA_DADOSADICIONAIS: TStringField
      FieldName = 'NOTA_DADOSADICIONAIS'
      Size = 254
    end
    object qryVendaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qryVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object qryVendaCONDICAO: TStringField
      FieldName = 'CONDICAO'
      Size = 40
    end
    object qryVendaDATAINICIO: TSQLTimeStampField
      FieldName = 'DATAINICIO'
    end
    object qryVendaDATATERMINO: TSQLTimeStampField
      FieldName = 'DATATERMINO'
    end
    object qryVendaICMSSIMPLES: TStringField
      FieldName = 'ICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qryVendaICMSSIMPALIQ: TFloatField
      FieldName = 'ICMSSIMPALIQ'
    end
    object qryVendaISSALIQ: TFloatField
      FieldName = 'ISSALIQ'
    end
    object qryVendaVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
    end
    object qryVendaNOTA_IESUBST: TStringField
      FieldName = 'NOTA_IESUBST'
    end
    object qryVendaNOTA_DATASAIDA: TSQLTimeStampField
      FieldName = 'NOTA_DATASAIDA'
    end
    object qryVendaNOTA_BASEICMS: TFloatField
      FieldName = 'NOTA_BASEICMS'
    end
    object qryVendaNOTA_BASEICMSSUBST: TFloatField
      FieldName = 'NOTA_BASEICMSSUBST'
    end
    object qryVendaNOTA_VALORICMSSUBST: TFloatField
      FieldName = 'NOTA_VALORICMSSUBST'
    end
    object qryVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qryVendaCODVENDEDOR_ABRE: TIntegerField
      FieldName = 'CODVENDEDOR_ABRE'
    end
    object qryVendaDESCONTOTXT: TStringField
      FieldName = 'DESCONTOTXT'
      Size = 40
    end
    object qryVendaCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 40
    end
    object qryVendaCLI_RAZAOSOCIAL: TStringField
      FieldName = 'CLI_RAZAOSOCIAL'
      Size = 40
    end
    object qryVendaCLI_LOGRADOURO: TStringField
      FieldName = 'CLI_LOGRADOURO'
      Size = 60
    end
    object qryVendaCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
    end
    object qryVendaCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 40
    end
    object qryVendaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 60
    end
    object qryVendaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object qryVendaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 60
    end
    object qryVendaCLI_ESTADO: TStringField
      FieldName = 'CLI_ESTADO'
      Size = 2
    end
    object qryVendaCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
    end
    object qryVendaCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
    end
    object qryVendaCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
    end
    object qryVendaCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 50
    end
    object qryVendaCLI_RGIE: TStringField
      FieldName = 'CLI_RGIE'
    end
    object qryVendaCLI_CPFCGC: TStringField
      FieldName = 'CLI_CPFCGC'
    end
    object qryVendaTRA_NOME: TStringField
      FieldName = 'TRA_NOME'
      Size = 40
    end
    object qryVendaTRA_LOGRADOURO: TStringField
      FieldName = 'TRA_LOGRADOURO'
      Size = 60
    end
    object qryVendaTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
    end
    object qryVendaTRA_COMPLEMENTO: TStringField
      FieldName = 'TRA_COMPLEMENTO'
      Size = 40
    end
    object qryVendaTRA_BAIRRO: TStringField
      FieldName = 'TRA_BAIRRO'
      Size = 60
    end
    object qryVendaTRA_CEP: TStringField
      FieldName = 'TRA_CEP'
      Size = 10
    end
    object qryVendaTRA_CIDADE: TStringField
      FieldName = 'TRA_CIDADE'
      Size = 60
    end
    object qryVendaTRA_ESTADO: TStringField
      FieldName = 'TRA_ESTADO'
      Size = 2
    end
    object qryVendaTRA_FONE: TStringField
      FieldName = 'TRA_FONE'
    end
    object qryVendaTRA_FAX: TStringField
      FieldName = 'TRA_FAX'
    end
    object qryVendaTRA_EMAIL: TStringField
      FieldName = 'TRA_EMAIL'
      Size = 50
    end
    object qryVendaTRA_RGIE: TStringField
      FieldName = 'TRA_RGIE'
    end
    object qryVendaTRA_CPFCGC: TStringField
      FieldName = 'TRA_CPFCGC'
    end
    object qryVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qryVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 40
    end
    object qryVendaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 40
    end
    object qryVendaDEFEITO: TStringField
      FieldName = 'DEFEITO'
      Size = 40
    end
    object qryVendaGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 1
    end
    object qryVendaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 40
    end
    object qryVendaACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      Size = 50
    end
    object qryVendaCONDICAOEXTERNA: TStringField
      FieldName = 'CONDICAOEXTERNA'
      Size = 40
    end
    object qryVendaSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 40
    end
    object qryVendaVENDEDORABRE: TStringField
      FieldName = 'VENDEDORABRE'
      Size = 40
    end
    object qryVendaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 40
    end
    object qryVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 40
    end
    object qryVendaCLI_CONTRATO: TStringField
      FieldName = 'CLI_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object qryVendaCLI_KM: TIntegerField
      FieldName = 'CLI_KM'
    end
    object qryVendaNATUREZAOPERACAO: TStringField
      FieldName = 'NATUREZAOPERACAO'
      Size = 30
    end
    object qryVendaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qryVendaEMPRESA_NOME: TStringField
      FieldName = 'EMPRESA_NOME'
      Size = 40
    end
    object qryVendaEMPRESA_RAZAOSOCIAL: TStringField
      FieldName = 'EMPRESA_RAZAOSOCIAL'
      Size = 50
    end
    object qryVendaEMPRESA_CNPJ: TStringField
      FieldName = 'EMPRESA_CNPJ'
    end
    object qryVendaEMPRESA_IE: TStringField
      FieldName = 'EMPRESA_IE'
    end
    object qryVendaEMPRESA_LOGRADOURO: TStringField
      FieldName = 'EMPRESA_LOGRADOURO'
      Size = 60
    end
    object qryVendaEMPRESA_NUMERO: TIntegerField
      FieldName = 'EMPRESA_NUMERO'
    end
    object qryVendaEMPRESA_COMPLEMENTO: TStringField
      FieldName = 'EMPRESA_COMPLEMENTO'
      Size = 40
    end
    object qryVendaEMPRESA_BAIRRO: TStringField
      FieldName = 'EMPRESA_BAIRRO'
      Size = 60
    end
    object qryVendaEMPRESA_CIDADE: TStringField
      FieldName = 'EMPRESA_CIDADE'
      Size = 60
    end
    object qryVendaEMPRESA_ESTADO: TStringField
      FieldName = 'EMPRESA_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryVendaEMPRESA_CEP: TStringField
      FieldName = 'EMPRESA_CEP'
      Size = 9
    end
    object qryVendaEMPRESA_FONE: TStringField
      FieldName = 'EMPRESA_FONE'
    end
    object qryVendaTIPOOS: TStringField
      FieldName = 'TIPOOS'
      Size = 40
    end
    object qryVendaXX_ENTRADA: TStringField
      FieldName = 'XX_ENTRADA'
      FixedChar = True
      Size = 2
    end
    object qryVendaXX_SAIDA: TStringField
      FieldName = 'XX_SAIDA'
      FixedChar = True
      Size = 2
    end
    object qryVendaEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 254
    end
    object qryVendaTECNICO: TStringField
      FieldName = 'TECNICO'
    end
    object qryVendaDEFEITO_DETECTADO: TStringField
      FieldName = 'DEFEITO_DETECTADO'
      Size = 60
    end
    object qryVendaSERVICO_REALIZAR: TStringField
      FieldName = 'SERVICO_REALIZAR'
      Size = 60
    end
    object qryVendaAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object qryVendaDATA_AUTORIZADO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZADO'
    end
    object qryVendaQUEM_AUTORIZOU: TStringField
      FieldName = 'QUEM_AUTORIZOU'
      Size = 40
    end
    object qryVendaDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object qryVendaQUEM_ENTREGOU: TStringField
      FieldName = 'QUEM_ENTREGOU'
      Size = 40
    end
    object qryVendaQUEM_RECEBEU: TStringField
      FieldName = 'QUEM_RECEBEU'
      Size = 40
    end
    object qryVendaNOTA_ENTRADA: TIntegerField
      FieldName = 'NOTA_ENTRADA'
    end
    object qryVendaAUTORIZADO_SIM: TStringField
      FieldName = 'AUTORIZADO_SIM'
      FixedChar = True
      Size = 1
    end
    object qryVendaAUTORIZADO_NAO: TStringField
      FieldName = 'AUTORIZADO_NAO'
      FixedChar = True
      Size = 1
    end
    object qryVendaPARCEIRO: TStringField
      FieldName = 'PARCEIRO'
      Size = 40
    end
    object qryVendaMENSAGEM_OS: TStringField
      FieldName = 'MENSAGEM_OS'
      Size = 254
    end
    object qryVendaMENSAGEM_VENDA: TStringField
      FieldName = 'MENSAGEM_VENDA'
      Size = 254
    end
    object qryVendaOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 40
    end
    object qryVendaNO_IPI: TStringField
      FieldName = 'NO_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'provItens'
    Left = 368
    Top = 32
    object cdsItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsItensBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 13
    end
    object cdsItensDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Size = 60
    end
    object cdsItensDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 80
    end
    object cdsItensSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsItensSERIE2: TStringField
      FieldName = 'SERIE2'
    end
    object cdsItensVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Precision = 20
      Size = 3
    end
    object cdsItensICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      DisplayFormat = '###0.00'
      Precision = 20
      Size = 4
    end
    object cdsItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 20
      Size = 3
    end
    object cdsItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#####0.0000'
      Precision = 20
      Size = 3
    end
    object cdsItensVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '######0.00'
      Precision = 20
      Size = 3
    end
    object cdsItensVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 20
      Size = 3
    end
    object cdsItensSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      FixedChar = True
      Size = 3
    end
    object cdsItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object cdsItensVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      DisplayFormat = '#######0.0000'
      Precision = 20
      Size = 3
    end
    object cdsItensIPI: TFMTBCDField
      FieldName = 'IPI'
      DisplayFormat = '###0.00'
      Precision = 20
      Size = 4
    end
    object cdsItensLINHA: TStringField
      FieldName = 'LINHA'
    end
    object cdsItensOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 40
    end
    object cdsItensPLANO: TStringField
      FieldName = 'PLANO'
      Size = 40
    end
    object cdsItensCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object cdsItensVOUCHER: TStringField
      FieldName = 'VOUCHER'
      Size = 10
    end
    object cdsItensTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object cdsItensCLASSFISCAL: TStringField
      FieldName = 'CLASSFISCAL'
    end
    object cdsItensPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsItensVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '#####0.00'
      Precision = 20
      Size = 3
    end
  end
  object provItens: TDataSetProvider
    DataSet = qryItens
    Left = 368
    Top = 88
  end
  object dsrItens: TDataSource
    DataSet = cdsItens
    Left = 440
    Top = 32
  end
  object qryItens: TSQLQuery
    DataSource = dsrMovimentos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  REL_NOTAPRO(:CODIGO)')
    SQLConnection = SQLConnection
    Left = 440
    Top = 88
    object qryItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qryItensBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 13
    end
    object qryItensDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Size = 60
    end
    object qryItensDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 80
    end
    object qryItensSERIE: TStringField
      FieldName = 'SERIE'
    end
    object qryItensSERIE2: TStringField
      FieldName = 'SERIE2'
    end
    object qryItensVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Precision = 20
      Size = 3
    end
    object qryItensICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 20
      Size = 4
    end
    object qryItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 20
      Size = 3
    end
    object qryItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 3
    end
    object qryItensVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 20
      Size = 3
    end
    object qryItensVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 20
      Size = 3
    end
    object qryItensSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      FixedChar = True
      Size = 3
    end
    object qryItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object qryItensVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Precision = 20
      Size = 3
    end
    object qryItensIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 20
      Size = 4
    end
    object qryItensLINHA: TStringField
      FieldName = 'LINHA'
    end
    object qryItensOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 40
    end
    object qryItensPLANO: TStringField
      FieldName = 'PLANO'
      Size = 40
    end
    object qryItensCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object qryItensVOUCHER: TStringField
      FieldName = 'VOUCHER'
      Size = 10
    end
    object qryItensTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object qryItensCLASSFISCAL: TStringField
      FieldName = 'CLASSFISCAL'
    end
    object qryItensPESO: TFloatField
      FieldName = 'PESO'
    end
    object qryItensVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 20
      Size = 3
    end
  end
  object qryServ: TSQLQuery
    DataSource = dsrMovimentos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  REL_NOTASER(:CODIGO)')
    SQLConnection = SQLConnection
    Left = 344
    Top = 328
    object qryServCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qryServBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 13
    end
    object qryServDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Size = 40
    end
    object qryServDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 60
    end
    object qryServSERIE: TStringField
      FieldName = 'SERIE'
    end
    object qryServSERIE2: TStringField
      FieldName = 'SERIE2'
    end
    object qryServVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object qryServICMS_VENDA: TFloatField
      FieldName = 'ICMS_VENDA'
    end
    object qryServDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qryServQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qryServVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qryServVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qryServSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      FixedChar = True
      Size = 3
    end
    object qryServVALOR_ITEM: TFloatField
      FieldName = 'VALOR_ITEM'
    end
    object qryServLINHA: TStringField
      FieldName = 'LINHA'
    end
    object qryServOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 40
    end
    object qryServPLANO: TStringField
      FieldName = 'PLANO'
      Size = 40
    end
    object qryServATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsrServ: TDataSource
    DataSet = cdsServ
    Left = 344
    Top = 272
  end
  object cdsServ: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'provServ'
    Left = 272
    Top = 272
    object cdsServCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsServBARRA: TStringField
      FieldName = 'BARRA'
      FixedChar = True
      Size = 13
    end
    object cdsServDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Size = 40
    end
    object cdsServDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 60
    end
    object cdsServSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsServSERIE2: TStringField
      FieldName = 'SERIE2'
    end
    object cdsServVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object cdsServICMS_VENDA: TFloatField
      FieldName = 'ICMS_VENDA'
    end
    object cdsServDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsServQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsServVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object cdsServVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsServSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      FixedChar = True
      Size = 3
    end
    object cdsServVALOR_ITEM: TFloatField
      FieldName = 'VALOR_ITEM'
    end
    object cdsServLINHA: TStringField
      FieldName = 'LINHA'
    end
    object cdsServOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 40
    end
    object cdsServPLANO: TStringField
      FieldName = 'PLANO'
      Size = 40
    end
    object cdsServATIVACAO: TStringField
      FieldName = 'ATIVACAO'
      FixedChar = True
      Size = 1
    end
  end
  object provServ: TDataSetProvider
    DataSet = qryServ
    Left = 272
    Top = 328
  end
end
