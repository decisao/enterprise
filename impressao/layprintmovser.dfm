inherited formImpMovSer: TformImpMovSer
  Caption = 'Layout Servi'#231'os do Movimento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited grdDados: TcxGrid
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1COLUNA: TcxGridDBColumn
              DataBinding.FieldName = 'COLUNA'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1CAMPO: TcxGridDBColumn
              DataBinding.FieldName = 'CAMPO'
            end
            object cxGrid1DBTableView1TAMANHO: TcxGridDBColumn
              DataBinding.FieldName = 'TAMANHO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited pnlEdicao: TPanel
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'Coluna'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 41
          Height = 13
          Caption = 'Campo'
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
          Top = 88
          Width = 53
          Height = 13
          Caption = 'Tamanho'
          FocusControl = cxDBTextEdit3
        end
        object Label4: TLabel
          Left = 160
          Top = 88
          Width = 34
          Height = 13
          Caption = 'Altura'
          FocusControl = cxDBTextEdit4
        end
        object Label5: TLabel
          Left = 7
          Top = 136
          Width = 47
          Height = 13
          Caption = 'M'#225'scara'
          FocusControl = cxDBTextEdit5
        end
        object Label6: TLabel
          Left = 7
          Top = 176
          Width = 71
          Height = 13
          Caption = 'Alinhamento'
          FocusControl = cxDBTextEdit6
        end
        object Label7: TLabel
          Left = 160
          Top = 176
          Width = 32
          Height = 13
          Caption = 'Efeito'
          FocusControl = cxDBTextEdit7
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 22
          DataBinding.DataField = 'COLUNA'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 62
          DataBinding.DataField = 'CAMPO'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          Width = 466
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 7
          Top = 102
          DataBinding.DataField = 'TAMANHO'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 159
          Top = 102
          DataBinding.DataField = 'ALTURA'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 6
          Top = 150
          DataBinding.DataField = 'MASCARA'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          Width = 274
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 6
          Top = 190
          DataBinding.DataField = 'ALINHAMENTO'
          DataBinding.DataSource = dsrDados
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 160
          Top = 190
          DataBinding.DataField = 'EFEITO'
          DataBinding.DataSource = dsrDados
          TabOrder = 6
          Width = 121
        end
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 424
    Top = 239
    DockControlHeights = (
      0
      0
      0
      0)
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 96
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, ITIMPNOTASER.* FROM ITIMPNOTASER'
    ProviderName = 'pvImpnotaser'
    Left = 504
    Top = 304
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosNUMIMPNOTA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NUMIMPNOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosCOLUNA: TSmallintField
      DisplayLabel = 'Coluna'
      FieldName = 'COLUNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'CAMPO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsDadosTAMANHO: TSmallintField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      Required = True
    end
    object cdsDadosALTURA: TSmallintField
      DisplayLabel = 'Altura'
      FieldName = 'ALTURA'
      Required = True
    end
    object cdsDadosMASCARA: TStringField
      DisplayLabel = 'M'#225'scara'
      FieldName = 'MASCARA'
      FixedChar = True
      Size = 60
    end
    object cdsDadosALINHAMENTO: TStringField
      DisplayLabel = 'Alinhamento'
      FieldName = 'ALINHAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosEFEITO: TStringField
      DisplayLabel = 'Efeito'
      FieldName = 'EFEITO'
      FixedChar = True
      Size = 10
    end
  end
  inherited dsrDados: TDataSource
    Left = 504
    Top = 360
  end
  inherited tmrFocus: TTimer
    Left = 504
    Top = 248
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 600
    Top = 248
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.756434444450000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 680
    Top = 248
  end
  inherited actDetalhes: TActionList
    Left = 600
    Top = 192
  end
  inherited tmrRelogio: TTimer
    Left = 504
    Top = 192
  end
  inherited tmrLabel: TTimer
    Left = 768
    Top = 192
  end
  inherited menuGrade: TPopupMenu
    Left = 768
    Top = 248
  end
  inherited tmrFocus2: TTimer
    Left = 600
    Top = 304
  end
  inherited memDataEntre: TdxMemData
    Left = 872
    Top = 192
  end
  inherited dsrDataEntre: TDataSource
    Left = 872
    Top = 248
  end
  inherited tmrSemDireito: TTimer
    Left = 680
    Top = 304
  end
  inherited tmrSel: TTimer
    Left = 960
    Top = 192
  end
  inherited memCampos: TdxMemData
    Left = 872
    Top = 312
  end
  inherited dsrCampos: TDataSource
    Left = 872
    Top = 368
  end
  inherited tmrMove: TTimer
    Left = 960
    Top = 248
  end
  inherited memDataGraph: TdxMemData
    Left = 960
    Top = 312
  end
  inherited SaveDialog: TSaveDialog
    Left = 680
    Top = 192
  end
end
