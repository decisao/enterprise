object formAtivacao: TformAtivacao
  Left = 244
  Top = 176
  BorderIcons = [biSystemMenu]
  Caption = 'Ativa'#231#227'o'
  ClientHeight = 346
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 552
    Height = 346
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 303
      Width = 552
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
      ExplicitTop = 256
      ExplicitWidth = 541
    end
    object Panel2: TPanel
      Left = 0
      Top = 305
      Width = 552
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 176
        Top = 8
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Caption = 'OK'
        TabOrder = 0
        OnClick = cxButton1Click
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
      end
      object cxButton2: TcxButton
        Left = 296
        Top = 8
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = cxButton2Click
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 552
      Height = 303
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object lbAPARELHO: TLabel
        Left = 16
        Top = 8
        Width = 51
        Height = 13
        Caption = 'Aparelho'
        FocusControl = dedAPARELHO
      end
      object lbSERIE: TLabel
        Left = 336
        Top = 8
        Width = 54
        Height = 13
        Caption = 'ESN/IMEI'
        FocusControl = dedSERIE
      end
      object lbSERIE2: TLabel
        Left = 336
        Top = 56
        Width = 37
        Height = 13
        Caption = 'ICCID'
        FocusControl = dedSERIE2
      end
      object lbVALOR1: TLabel
        Left = 16
        Top = 56
        Width = 78
        Height = 13
        Caption = 'Valor Original'
        FocusControl = dedVALOR1
      end
      object lbVALOR2: TLabel
        Left = 128
        Top = 56
        Width = 62
        Height = 13
        Caption = 'Valor Pago'
        FocusControl = dedVALOR2
      end
      object lbOPERADORA: TLabel
        Left = 16
        Top = 104
        Width = 61
        Height = 13
        Caption = 'Operadora'
        FocusControl = dedOPERADORA
      end
      object lbPLANO: TLabel
        Left = 336
        Top = 104
        Width = 96
        Height = 13
        Caption = 'Plano de Servi'#231'o'
        FocusControl = dedPLANO
      end
      object lbNUMERO: TLabel
        Left = 16
        Top = 152
        Width = 30
        Height = 13
        Caption = 'Linha'
      end
      object Label1: TLabel
        Left = 160
        Top = 152
        Width = 50
        Height = 13
        Caption = 'Contrato'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 291
        Top = 152
        Width = 57
        Height = 13
        Caption = 'C'#243'd. HDC'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 403
        Top = 152
        Width = 83
        Height = 13
        Caption = 'Desconto ADM'
        FocusControl = cxDBTextEdit3
      end
      object dedAPARELHO: TcxDBTextEdit
        Left = 15
        Top = 23
        DataBinding.DataField = 'APARELHO'
        DataBinding.DataSource = dsrAtivacao
        Properties.CharCase = ecUpperCase
        Style.Color = clWindow
        TabOrder = 0
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 305
      end
      object dedSERIE: TcxDBTextEdit
        Left = 335
        Top = 23
        DataBinding.DataField = 'SERIE'
        DataBinding.DataSource = dsrAtivacao
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 193
      end
      object dedSERIE2: TcxDBTextEdit
        Left = 335
        Top = 71
        DataBinding.DataField = 'SERIE2'
        DataBinding.DataSource = dsrAtivacao
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 193
      end
      object dedVALOR1: TcxDBTextEdit
        Left = 15
        Top = 71
        DataBinding.DataField = 'VALOR1'
        DataBinding.DataSource = dsrAtivacao
        Style.Color = clWindow
        TabOrder = 3
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 98
      end
      object dedVALOR2: TcxDBTextEdit
        Left = 127
        Top = 71
        DataBinding.DataField = 'VALOR2'
        DataBinding.DataSource = dsrAtivacao
        Style.Color = clWindow
        TabOrder = 4
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 98
      end
      object dedREBATE: TcxDBCheckBox
        Left = 248
        Top = 72
        Caption = 'Rebate'
        DataBinding.DataField = 'REBATE'
        DataBinding.DataSource = dsrAtivacao
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 5
        Width = 73
      end
      object dedOPERADORA: TcxDBLookupComboBox
        Left = 15
        Top = 119
        DataBinding.DataField = 'CODOPERADORA'
        DataBinding.DataSource = dsrAtivacao
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = cdrOperadoras
        TabOrder = 6
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 305
      end
      object dedPLANO: TcxDBLookupComboBox
        Left = 335
        Top = 119
        DataBinding.DataField = 'CODPLANO'
        DataBinding.DataSource = dsrAtivacao
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsrPlanos
        TabOrder = 7
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 193
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 159
        Top = 167
        DataBinding.DataField = 'CONTRATO'
        DataBinding.DataSource = dsrAtivacao
        TabOrder = 8
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 108
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 290
        Top = 167
        DataBinding.DataField = 'VOUCHER'
        DataBinding.DataSource = dsrAtivacao
        TabOrder = 9
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 97
      end
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 16
        Top = 200
        Caption = ' Tipo de Ativa'#231#227'o '
        DataBinding.DataField = 'TIPOATIVACAO'
        DataBinding.DataSource = dsrAtivacao
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Nova Ativa'#231#227'o'
            Value = 'N'
          end
          item
            Caption = 'Cliente da Base'
            Value = 'B'
          end
          item
            Caption = 'Refideliza'#231#227'o'
            Value = 'R'
          end
          item
            Caption = 'Migra'#231#227'o'
            Value = 'M'
          end
          item
            Caption = 'Troca de Chip'
            Value = 'T'
          end>
        TabOrder = 12
        Height = 89
        Width = 513
      end
      object cxDBMaskEdit1: TcxDBMaskEdit
        Left = 15
        Top = 167
        DataBinding.DataField = 'NUMERO'
        DataBinding.DataSource = dsrAtivacao
        Properties.EditMask = '!\(99\)0000-0000;1;_'
        Properties.MaxLength = 0
        TabOrder = 10
        Width = 130
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 402
        Top = 167
        DataBinding.DataField = 'DESCONTO_ADM'
        DataBinding.DataSource = dsrAtivacao
        TabOrder = 11
        OnEnter = dedAPARELHOEnter
        OnExit = dedAPARELHOExit
        Width = 126
      end
    end
  end
  object memAtivacao: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 264
    Top = 40
    object memAtivacaoAPARELHO: TStringField
      FieldName = 'APARELHO'
      Size = 60
    end
    object memAtivacaoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 30
    end
    object memAtivacaoSERIE2: TStringField
      FieldName = 'SERIE2'
      Size = 30
    end
    object memAtivacaoVALOR1: TFloatField
      FieldName = 'VALOR1'
      DisplayFormat = '######0.00'
    end
    object memAtivacaoVALOR2: TFloatField
      FieldName = 'VALOR2'
      DisplayFormat = '######0.00'
    end
    object memAtivacaoREBATE: TStringField
      FieldName = 'REBATE'
      Size = 1
    end
    object memAtivacaoCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
      OnChange = memAtivacaoCODOPERADORAChange
    end
    object memAtivacaoCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object memAtivacaoNUMERO: TStringField
      FieldName = 'NUMERO'
      EditMask = '(##)####-####'
    end
    object memAtivacaoCODATIVACAO: TIntegerField
      FieldName = 'CODATIVACAO'
    end
    object memAtivacaoCODAPARELHO: TIntegerField
      FieldName = 'CODAPARELHO'
    end
    object memAtivacaoCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object memAtivacaoVOUCHER: TStringField
      FieldName = 'VOUCHER'
    end
    object memAtivacaoTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      Size = 1
    end
    object memAtivacaoDESCONTO_ADM: TFloatField
      FieldName = 'DESCONTO_ADM'
    end
  end
  object dsrAtivacao: TDataSource
    DataSet = memAtivacao
    Left = 312
    Top = 40
  end
  object cdsAtivacaoLer: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMOVIMENTO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'pcAtivacaoler'
    RemoteServer = formPrincipal.SocketConnection
    Left = 144
    Top = 88
    object cdsAtivacaoLerCODATIVACAO: TIntegerField
      FieldName = 'CODATIVACAO'
    end
    object cdsAtivacaoLerCODAPARELHO: TIntegerField
      FieldName = 'CODAPARELHO'
    end
    object cdsAtivacaoLerAPARELHO: TStringField
      FieldName = 'APARELHO'
      Size = 60
    end
    object cdsAtivacaoLerSERIE: TStringField
      FieldName = 'SERIE'
      Size = 30
    end
    object cdsAtivacaoLerSERIE2: TStringField
      FieldName = 'SERIE2'
      Size = 30
    end
    object cdsAtivacaoLerNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsAtivacaoLerCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
    end
    object cdsAtivacaoLerCODPLANO: TIntegerField
      FieldName = 'CODPLANO'
    end
    object cdsAtivacaoLerVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object cdsAtivacaoLerVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object cdsAtivacaoLerREBATE: TStringField
      FieldName = 'REBATE'
      FixedChar = True
      Size = 1
    end
    object cdsAtivacaoLerCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 10
    end
    object cdsAtivacaoLerVOUCHER: TStringField
      FieldName = 'VOUCHER'
    end
    object cdsAtivacaoLerTIPOATIVACAO: TStringField
      FieldName = 'TIPOATIVACAO'
      FixedChar = True
      Size = 1
    end
    object cdsAtivacaoLerDESCONTO_ADM: TFloatField
      FieldName = 'DESCONTO_ADM'
    end
  end
  object cdsOperadoras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pcOperadoras'
    RemoteServer = formPrincipal.SocketConnection
    Left = 408
    Top = 8
    object cdsOperadorasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOperadorasNOME: TStringField
      FieldName = 'NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
  end
  object cdrOperadoras: TDataSource
    DataSet = cdsOperadoras
    Left = 408
    Top = 56
  end
  object cdsPlanos: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'CODOPERADORA'
        ParamType = ptInput
      end>
    ProviderName = 'pcPlanos'
    RemoteServer = formPrincipal.SocketConnection
    Left = 488
    Top = 8
    object cdsPlanosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanosCODOPERADORA: TIntegerField
      FieldName = 'CODOPERADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsPlanosTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsrPlanos: TDataSource
    DataSet = cdsPlanos
    Left = 488
    Top = 56
  end
  object cdsAtivacaoGravar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODATIVACAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODAPARELHO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 60
        Name = 'APARELHO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'SERIE2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODOPERADORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODPLANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'VOUCHER'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'TIPOATIVACAO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'REBATE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 9
        NumericScale = 2
        Name = 'DESCONTO_ADM'
        ParamType = ptInput
      end>
    ProviderName = 'pmAtivacaogravar'
    RemoteServer = formPrincipal.SocketConnection
    Left = 232
    Top = 88
  end
end
