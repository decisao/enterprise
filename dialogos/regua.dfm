object formRegua: TformRegua
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'R'#233'gua de Impress'#227'o'
  ClientHeight = 184
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 184
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitWidth = 319
    object Bevel1: TBevel
      Left = 0
      Top = 141
      Width = 322
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
      ExplicitTop = 123
      ExplicitWidth = 309
    end
    object pnlDados: TPanel
      Left = 0
      Top = 0
      Width = 322
      Height = 141
      Align = alClient
      BevelOuter = bvNone
      Color = clCream
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 319
      object Label1: TLabel
        Left = 65
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Linhas'
      end
      object Label2: TLabel
        Left = 64
        Top = 76
        Width = 38
        Height = 13
        Caption = 'Colunas'
      end
      object Label3: TLabel
        Left = 160
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Linhas'
      end
      object nLinhas: TcxSpinEdit
        Left = 63
        Top = 30
        TabOrder = 0
        Value = 88
        Width = 73
      end
      object nColunas: TcxSpinEdit
        Left = 62
        Top = 91
        TabOrder = 1
        Value = 80
        Width = 73
      end
      object cComp: TcxCheckBox
        Left = 160
        Top = 76
        Caption = 'Comprimido'
        TabOrder = 2
        Width = 137
      end
      object c18: TcxCheckBox
        Left = 160
        Top = 92
        Caption = '1/8 de linha'
        State = cbsChecked
        TabOrder = 3
        Width = 137
      end
      object ePorta: TcxTextEdit
        Left = 159
        Top = 30
        TabOrder = 4
        Text = 'LPT1:'
        Width = 137
      end
    end
    object pnlBotoes: TPanel
      Left = 0
      Top = 143
      Width = 322
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 319
      object cxButton1: TcxButton
        Left = 104
        Top = 8
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
        Left = 208
        Top = 8
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
end
