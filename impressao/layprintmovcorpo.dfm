inherited formImpMovCorpo: TformImpMovCorpo
  Caption = 'Layout Corpo do Movimento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 323
          Height = 3
          ExplicitTop = 323
          ExplicitHeight = 3
        end
        inherited grdDados: TcxGrid
          Height = 301
          ExplicitHeight = 305
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
            object cxGrid1DBTableView1LINHA: TcxGridDBColumn
              DataBinding.FieldName = 'LINHA'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1COLUNA: TcxGridDBColumn
              DataBinding.FieldName = 'COLUNA'
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
          Width = 30
          Height = 13
          Caption = 'Linha'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 152
          Top = 8
          Width = 40
          Height = 13
          Caption = 'Coluna'
          FocusControl = cxDBTextEdit2
        end
        object Label3: TLabel
          Left = 7
          Top = 48
          Width = 41
          Height = 13
          Caption = 'Campo'
          FocusControl = cxDBTextEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label3Click
        end
        object Label4: TLabel
          Left = 7
          Top = 88
          Width = 53
          Height = 13
          Caption = 'Tamanho'
          FocusControl = cxDBTextEdit4
        end
        object Label5: TLabel
          Left = 153
          Top = 88
          Width = 34
          Height = 13
          Caption = 'Altura'
          FocusControl = cxDBTextEdit5
        end
        object Label6: TLabel
          Left = 7
          Top = 136
          Width = 47
          Height = 13
          Caption = 'M'#225'scara'
          FocusControl = cxDBTextEdit6
        end
        object Label7: TLabel
          Left = 7
          Top = 176
          Width = 71
          Height = 13
          Caption = 'Alinhamento'
          FocusControl = cxDBTextEdit7
        end
        object Label8: TLabel
          Left = 154
          Top = 176
          Width = 32
          Height = 13
          Caption = 'Efeito'
          FocusControl = cxDBTextEdit8
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 22
          DataBinding.DataField = 'LINHA'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 151
          Top = 22
          DataBinding.DataField = 'COLUNA'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 6
          Top = 62
          DataBinding.DataField = 'CAMPO'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          Width = 491
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 6
          Top = 102
          DataBinding.DataField = 'TAMANHO'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 152
          Top = 102
          DataBinding.DataField = 'ALTURA'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 6
          Top = 150
          DataBinding.DataField = 'MASCARA'
          DataBinding.DataSource = dsrDados
          TabOrder = 5
          Width = 266
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 6
          Top = 190
          DataBinding.DataField = 'ALINHAMENTO'
          DataBinding.DataSource = dsrDados
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 153
          Top = 190
          DataBinding.DataField = 'EFEITO'
          DataBinding.DataSource = dsrDados
          TabOrder = 7
          Width = 121
        end
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 472
    Top = 215
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar3: TdxBar
      Visible = False
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 96
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 2
    end
    inherited btnAjuda: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 0
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, ITIMPNOTA.* FROM ITIMPNOTA'
    ProviderName = 'pvImpnotacorpo'
    Left = 552
    Top = 280
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
    object cdsDadosLINHA: TSmallintField
      DisplayLabel = 'Linha'
      FieldName = 'LINHA'
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
    Left = 552
    Top = 336
  end
  inherited tmrFocus: TTimer
    Left = 552
    Top = 224
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 648
    Top = 224
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.756309849540000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 728
    Top = 224
  end
  inherited actDetalhes: TActionList
    Left = 648
    Top = 168
  end
  inherited tmrRelogio: TTimer
    Left = 552
    Top = 168
  end
  inherited tmrLabel: TTimer
    Left = 816
    Top = 168
  end
  inherited menuGrade: TPopupMenu
    Left = 816
    Top = 224
  end
  inherited tmrFocus2: TTimer
    Left = 648
    Top = 280
  end
  inherited memDataEntre: TdxMemData
    Left = 920
    Top = 168
  end
  inherited dsrDataEntre: TDataSource
    Left = 920
    Top = 224
  end
  inherited tmrSemDireito: TTimer
    Left = 728
    Top = 280
  end
  inherited tmrSel: TTimer
    Left = 1008
    Top = 168
  end
  inherited memCampos: TdxMemData
    Left = 920
    Top = 288
  end
  inherited dsrCampos: TDataSource
    Left = 920
    Top = 344
  end
  inherited tmrMove: TTimer
    Left = 1008
    Top = 224
  end
  inherited memDataGraph: TdxMemData
    Left = 1008
    Top = 288
  end
  inherited SaveDialog: TSaveDialog
    Left = 728
    Top = 168
  end
end
