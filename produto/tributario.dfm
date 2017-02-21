object formTributario: TformTributario
  Left = 327
  Top = 281
  BorderStyle = bsDialog
  Caption = 'Tribut'#225'rio'
  ClientHeight = 167
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 246
    Height = 167
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 124
      Width = 246
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
      ExplicitTop = 123
      ExplicitWidth = 309
    end
    object pnlDados: TPanel
      Left = 0
      Top = 0
      Width = 246
      Height = 124
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 13
        Width = 108
        Height = 13
        Caption = 'Situa'#231#227'o Tribut'#225'ria'
      end
      object Label2: TLabel
        Left = 24
        Top = 69
        Width = 97
        Height = 13
        Caption = 'ICMS Venda (%)'
        FocusControl = edtICMS
      end
      object edtICMS: TcxCurrencyEdit
        Left = 23
        Top = 84
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000;(,0.0000)'
        TabOrder = 0
        OnEnter = edtSenhaEnter
        OnExit = edtSenhaExit
        Width = 121
      end
      object edtSitTribu: TcxComboBox
        Left = 23
        Top = 28
        Properties.Items.Strings = (
          '000'
          '010'
          '020'
          '030'
          '040'
          '041'
          '050'
          '051'
          '060'
          '070'
          '090'
          '100'
          '110'
          '120'
          '130'
          '140'
          '141'
          '150'
          '151'
          '160'
          '170'
          '190'
          '200'
          '210'
          '220'
          '230'
          '240'
          '241'
          '250'
          '251'
          '260'
          '270'
          '290')
        TabOrder = 1
        Width = 66
      end
    end
    object pnlBotoes: TPanel
      Left = 0
      Top = 126
      Width = 246
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object cxButton1: TcxButton
        Left = 23
        Top = 6
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Caption = 'OK'
        TabOrder = 0
        OnClick = cxButton1Click
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
      end
      object cxButton2: TcxButton
        Left = 127
        Top = 6
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = cxButton2Click
        LookAndFeel.Kind = lfOffice11
      end
    end
  end
  object cdsTributario: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 3
        Name = 'SITTRIBUTARIA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 9
        NumericScale = 4
        Name = 'ICMSVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'pmTributario'
    RemoteServer = formPrincipal.SocketConnection
    Left = 176
    Top = 64
  end
  object dsrTributario: TDataSource
    AutoEdit = False
    DataSet = cdsTributario
    Left = 176
    Top = 112
  end
  object dxMemProdutos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 176
    Top = 16
    object dxMemProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
  end
end
