inherited formImpMovPro: TformImpMovPro
  Caption = 'Layout Produtos do Movimento'
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
          Left = 152
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
          Left = 152
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
          Width = 442
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
          Left = 151
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
          Width = 266
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
          Left = 151
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
    Left = 448
    Top = 263
    DockControlHeights = (
      0
      0
      0
      0)
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
    CommandText = 'SELECT '#39'N'#39' AS SEL, ITIMPNOTAPRO.* FROM ITIMPNOTAPRO'
    ProviderName = 'pvImpnotapro'
    Left = 528
    Top = 328
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
    Left = 528
    Top = 384
  end
  inherited tmrFocus: TTimer
    Left = 528
    Top = 272
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 624
    Top = 272
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.756393877320000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 704
    Top = 272
  end
  inherited actDetalhes: TActionList
    Left = 624
    Top = 216
  end
  inherited tmrRelogio: TTimer
    Left = 528
    Top = 216
  end
  inherited tmrLabel: TTimer
    Left = 792
    Top = 216
  end
  inherited menuGrade: TPopupMenu
    Left = 792
    Top = 272
  end
  inherited tmrFocus2: TTimer
    Left = 624
    Top = 328
  end
  inherited memDataEntre: TdxMemData
    Left = 896
    Top = 216
  end
  inherited dsrDataEntre: TDataSource
    Left = 896
    Top = 272
  end
  inherited tmrSemDireito: TTimer
    Left = 704
    Top = 328
  end
  inherited tmrSel: TTimer
    Left = 984
    Top = 216
  end
  inherited memCampos: TdxMemData
    Left = 896
    Top = 336
  end
  inherited dsrCampos: TDataSource
    Left = 896
    Top = 392
  end
  inherited tmrMove: TTimer
    Left = 984
    Top = 272
  end
  inherited memDataGraph: TdxMemData
    Left = 984
    Top = 336
  end
  inherited SaveDialog: TSaveDialog
    Left = 704
    Top = 216
  end
end
