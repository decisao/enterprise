object formSelPreco: TformSelPreco
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sele'#231#227'o do Pre'#231'o'
  ClientHeight = 178
  ClientWidth = 163
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rgPreco: TcxRadioGroup
    Left = 20
    Top = 12
    Caption = ' Clique no pre'#231'o '
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'Pre'#231'o 1'
        Value = '1'
      end
      item
        Caption = 'Pre'#231'o 2'
        Value = '2'
      end
      item
        Caption = 'Pre'#231'o 3'
        Value = '3'
      end
      item
        Caption = 'Pre'#231'o 4'
        Value = '4'
      end
      item
        Caption = 'Pre'#231'o 5'
        Value = '5'
      end>
    Properties.OnChange = cxRadioGroup1PropertiesChange
    Style.BorderStyle = ebsThick
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.Shadow = True
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 149
    Width = 123
  end
end
