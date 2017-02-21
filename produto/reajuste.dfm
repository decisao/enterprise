object formReajuste: TformReajuste
  Left = 327
  Top = 281
  BorderStyle = bsDialog
  Caption = 'Reajuste'
  ClientHeight = 171
  ClientWidth = 230
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
    Width = 230
    Height = 171
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 128
      Width = 230
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
      ExplicitTop = 123
      ExplicitWidth = 309
    end
    object pnlDados: TPanel
      Left = 0
      Top = 0
      Width = 230
      Height = 128
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 26
        Top = 13
        Width = 34
        Height = 13
        Caption = 'Marca'
        FocusControl = dlcMarca
      end
      object Label2: TLabel
        Left = 27
        Top = 66
        Width = 76
        Height = 13
        Caption = 'Reajuste (%)'
        FocusControl = edtReajuste
      end
      object dlcMarca: TcxLookupComboBox
        Left = 25
        Top = 27
        BeepOnEnter = False
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsrMarcas
        Style.TransparentBorder = True
        TabOrder = 0
        OnEnter = edtSenhaEnter
        OnExit = edtSenhaExit
        Width = 170
      end
      object edtReajuste: TcxCurrencyEdit
        Left = 26
        Top = 81
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000;(,0.0000)'
        TabOrder = 1
        OnEnter = edtSenhaEnter
        OnExit = edtSenhaExit
        Width = 95
      end
    end
    object pnlBotoes: TPanel
      Left = 0
      Top = 130
      Width = 230
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object cxButton1: TcxButton
        Left = 16
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
        Left = 120
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
  object cdsMarcas: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'pvMarcas'
    RemoteServer = formPrincipal.SocketConnection
    Left = 152
  end
  object dsrMarcas: TDataSource
    AutoEdit = False
    DataSet = cdsMarcas
    Left = 152
    Top = 48
  end
  object cdsReajuste: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODMARCA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 9
        NumericScale = 4
        Name = 'PORCENTAGEM'
        ParamType = ptInput
      end>
    ProviderName = 'pmReajuste'
    RemoteServer = formPrincipal.SocketConnection
    Left = 72
  end
  object dsrReajuste: TDataSource
    AutoEdit = False
    DataSet = cdsReajuste
    Left = 72
    Top = 48
  end
end
