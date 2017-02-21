object ReconcileErrorForm: TReconcileErrorForm
  Left = 289
  Top = 210
  BorderStyle = bsDialog
  Caption = 'Problema na grava'#231#227'o das informa'#231#245'es'
  ClientHeight = 228
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = DisplayFieldValues
  PixelsPerInch = 96
  TextHeight = 13
  object ActionGroup: TRadioGroup
    Left = 114
    Top = 50
    Width = 127
    Height = 113
    Caption = ' A'#231#227'o '
    TabOrder = 0
    OnClick = DisplayFieldValues
  end
  object Panel1: TPanel
    Left = 0
    Top = 187
    Width = 499
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 200
      Top = 8
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 187
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 497
      Height = 185
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 179
      ClientRectLeft = 3
      ClientRectRight = 491
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Erro'
        Color = clCream
        ImageIndex = 0
        ParentColor = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object IconImage: TImage
          Left = 12
          Top = 12
          Width = 34
          Height = 34
          Picture.Data = {
            055449636F6E0000010002002020100000000000E80200002600000020200200
            00000000300100000E0300002800000020000000400000000100040000000000
            0002000000000000000000000000000000000000000000000000800000800000
            00808000800000008000800080800000C0C0C000808080000000FF0000FF0000
            00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000008888888888888888888
            8888880000008888888888888888888888888880003000000000000000000000
            0008888803BBBBBBBBBBBBBBBBBBBBBBBB7088883BBBBBBBBBBBBBBBBBBBBBBB
            BBB708883BBBBBBBBBBBBBBBBBBBBBBBBBBB08883BBBBBBBBBBBB7007BBBBBBB
            BBBB08803BBBBBBBBBBBB0000BBBBBBBBBB7088003BBBBBBBBBBB0000BBBBBBB
            BBB0880003BBBBBBBBBBB7007BBBBBBBBB708800003BBBBBBBBBBBBBBBBBBBBB
            BB088000003BBBBBBBBBBB0BBBBBBBBBB70880000003BBBBBBBBB707BBBBBBBB
            B08800000003BBBBBBBBB303BBBBBBBB7088000000003BBBBBBBB000BBBBBBBB
            0880000000003BBBBBBB70007BBBBBB708800000000003BBBBBB30003BBBBBB0
            88000000000003BBBBBB00000BBBBB70880000000000003BBBBB00000BBBBB08
            800000000000003BBBBB00000BBBB7088000000000000003BBBB00000BBBB088
            0000000000000003BBBB00000BBB708800000000000000003BBB70007BBB0880
            00000000000000003BBBBBBBBBB70880000000000000000003BBBBBBBBB08800
            000000000000000003BBBBBBBB7088000000000000000000003BBBBBBB088000
            0000000000000000003BBBBBB708800000000000000000000003BBBBB0880000
            00000000000000000003BBBB70800000000000000000000000003BB700000000
            0000000000000000000003330000000000000000F8000003F0000001C0000000
            80000000000000000000000000000001000000018000000380000003C0000007
            C0000007E000000FE000000FF000001FF000001FF800003FF800003FFC00007F
            FC00007FFE0000FFFE0000FFFF0001FFFF0001FFFF8003FFFF8003FFFFC007FF
            FFC007FFFFE00FFFFFE01FFFFFF07FFFFFF8FFFF280000002000000040000000
            0100010000000000800000000000000000000000000000000000000000000000
            FFFFFF000000000000000000000000003FFFFFC07FFFFFE07FFFFFF07FFCFFF0
            7FF87FE03FF87FE03FFCFFC01FFFFFC01FFDFF800FFDFF800FFDFF0007F8FF00
            07F8FE0003F8FE0003F07C0001F07C0001F0780000F0780000F070000078F000
            007FE000003FE000003FC000001FC000001F8000000F8000000F000000060000
            00000000FFFFFFFFFFFFFFFFC000001F8000000F000000070000000700000007
            000000078000000F8000000FC000001FC000001FE000003FE000003FF000007F
            F000007FF80000FFF80000FFFC0001FFFC0001FFFE0003FFFE0003FFFF0007FF
            FF0007FFFF800FFFFF800FFFFFC01FFFFFC01FFFFFE03FFFFFE03FFFFFF07FFF
            FFF8FFFF}
        end
        object Label1: TLabel
          Left = 57
          Top = 13
          Width = 88
          Height = 13
          Caption = 'Tipo Grava'#231#227'o:'
        end
        object Label3: TLabel
          Left = 57
          Top = 33
          Width = 112
          Height = 13
          Caption = 'Mensagem de erro:'
        end
        object UpdateType: TLabel
          Left = 150
          Top = 13
          Width = 55
          Height = 13
          Caption = 'Modified'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ErrorMsg: TMemo
          Left = 56
          Top = 48
          Width = 425
          Height = 97
          TabStop = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Detalhes'
        Color = clCream
        ImageIndex = 1
        ParentColor = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object UpdateData: TStringGrid
          Left = 0
          Top = 0
          Width = 497
          Height = 131
          Align = alTop
          ColCount = 4
          DefaultColWidth = 119
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
          TabOrder = 0
          OnSelectCell = UpdateDataSelectCell
          OnSetEditText = UpdateDataSetEditText
        end
        object ConflictsOnly: TCheckBox
          Left = 11
          Top = 138
          Width = 78
          Height = 17
          Caption = 'Conflitos'
          TabOrder = 1
          OnClick = DisplayFieldValues
        end
        object ChangedOnly: TCheckBox
          Left = 97
          Top = 138
          Width = 96
          Height = 17
          Caption = 'Modificados'
          TabOrder = 2
          OnClick = DisplayFieldValues
        end
      end
    end
  end
end
