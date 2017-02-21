inherited formImpMov: TformImpMov
  Caption = 'Layout do Movimento'
  ClientHeight = 470
  ClientWidth = 560
  ExplicitWidth = 568
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    Width = 560
    Height = 450
    ExplicitWidth = 560
    ExplicitHeight = 450
    ClientRectBottom = 449
    ClientRectRight = 559
    inherited tabVisual: TcxTabSheet
      ExplicitWidth = 558
      ExplicitHeight = 448
      inherited dxBarDockControl_BotoesSelecao: TdxBarDockControl
        Width = 558
        ExplicitWidth = 558
      end
      inherited dxBarDockControl_Selecao: TdxBarDockControl
        Top = 419
        Width = 558
        ExplicitTop = 419
        ExplicitWidth = 558
      end
      inherited pnlFundoGrade: TPanel
        Width = 558
        Height = 342
        ExplicitWidth = 558
        ExplicitHeight = 342
        inherited dxBarDockControl_Links: TdxBarDockControl
          Top = 320
          Width = 558
          ExplicitTop = 320
          ExplicitWidth = 558
        end
        inherited dxBarDockControlWhere: TdxBarDockControl
          Width = 558
          ExplicitWidth = 558
        end
        inherited grdDados: TcxGrid
          Width = 558
          Height = 298
          ExplicitWidth = 558
          ExplicitHeight = 302
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
            end
            object cxGrid1DBTableView1NUMIMPNOTA: TcxGridDBColumn
              DataBinding.FieldName = 'NUMIMPNOTA'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TcxTabSheet
      ExplicitWidth = 558
      ExplicitHeight = 448
      inherited dbnDetalhes: TDBNavigator
        Hints.Strings = ()
      end
      inherited dxBarDockControl_BotesDetalhes: TdxBarDockControl
        Width = 558
        ExplicitWidth = 558
      end
      inherited pnlEdicao: TPanel
        Width = 558
        Height = 371
        ExplicitWidth = 558
        ExplicitHeight = 373
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = cxDBTextEdit2
        end
        object Label4: TLabel
          Left = 7
          Top = 96
          Width = 34
          Height = 13
          Caption = 'Altura'
          FocusControl = cxDBTextEdit3
        end
        object Label5: TLabel
          Left = 7
          Top = 159
          Width = 125
          Height = 13
          Caption = 'Duplicata Linha Inicial'
          FocusControl = cxDBTextEdit4
        end
        object Label6: TLabel
          Left = 7
          Top = 199
          Width = 103
          Height = 13
          Caption = 'Duplicata Colunas'
          FocusControl = cxDBTextEdit5
        end
        object Label7: TLabel
          Left = 7
          Top = 239
          Width = 154
          Height = 13
          Caption = 'Duplicata Tamanho Coluna'
          FocusControl = cxDBTextEdit6
        end
        object Label8: TLabel
          Left = 7
          Top = 279
          Width = 93
          Height = 13
          Caption = 'Duplicata Linhas'
          FocusControl = cxDBTextEdit7
        end
        object Label9: TLabel
          Left = 7
          Top = 319
          Width = 135
          Height = 13
          Caption = 'Duplicata Coluna Inicial'
          FocusControl = cxDBTextEdit8
        end
        object Label3: TLabel
          Left = 208
          Top = 159
          Width = 116
          Height = 13
          Caption = 'Produto Linha Inicial'
          FocusControl = cxDBTextEdit9
        end
        object Label10: TLabel
          Left = 208
          Top = 199
          Width = 84
          Height = 13
          Caption = 'Produto Linhas'
          FocusControl = cxDBTextEdit10
        end
        object Label11: TLabel
          Left = 208
          Top = 239
          Width = 115
          Height = 13
          Caption = 'Servi'#231'o Linha Inicial'
          FocusControl = cxDBTextEdit11
        end
        object Label12: TLabel
          Left = 208
          Top = 279
          Width = 83
          Height = 13
          Caption = 'Servi'#231'o Linhas'
          FocusControl = cxDBTextEdit12
        end
        object Label13: TLabel
          Left = 206
          Top = 96
          Width = 64
          Height = 13
          Caption = 'Efeito Base'
          FocusControl = cxDBTextEdit13
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 62
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          Width = 402
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 205
          Top = 22
          Caption = '1/8 de linha'
          DataBinding.DataField = 'LINHA18'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 6
          Top = 110
          DataBinding.DataField = 'ALTURA'
          DataBinding.DataSource = dsrDados
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 6
          Top = 173
          DataBinding.DataField = 'DUP_LINHAINI'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 6
          Top = 213
          DataBinding.DataField = 'DUP_COLUNAS'
          DataBinding.DataSource = dsrDados
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 6
          Top = 253
          DataBinding.DataField = 'DUP_TAMANHOCOL'
          DataBinding.DataSource = dsrDados
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 6
          Top = 293
          DataBinding.DataField = 'DUP_LINHAS'
          DataBinding.DataSource = dsrDados
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 6
          Top = 333
          DataBinding.DataField = 'DUP_COLUNAINI'
          DataBinding.DataSource = dsrDados
          TabOrder = 7
          Width = 121
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 207
          Top = 174
          DataBinding.DataField = 'PRO_LINHAINI'
          DataBinding.DataSource = dsrDados
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 207
          Top = 214
          DataBinding.DataField = 'PRO_LINHAS'
          DataBinding.DataSource = dsrDados
          TabOrder = 9
          Width = 121
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 207
          Top = 254
          DataBinding.DataField = 'SER_LINHAINI'
          DataBinding.DataSource = dsrDados
          TabOrder = 10
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 207
          Top = 294
          DataBinding.DataField = 'SER_LINHAS'
          DataBinding.DataSource = dsrDados
          TabOrder = 11
          Width = 121
        end
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 7
        Top = 94
        DataBinding.DataField = 'NUMIMPNOTA'
        DataBinding.DataSource = dsrDados
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 205
        Top = 183
        DataBinding.DataField = 'EFEITOBASE'
        DataBinding.DataSource = dsrDados
        TabOrder = 4
        Width = 121
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 450
    Width = 560
    ExplicitTop = 450
    ExplicitWidth = 560
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 408
    Top = 255
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar3: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbSEL'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEmpresas'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOcultos'
        end>
    end
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
    object dxBarButton6: TdxBarButton
      Tag = 11
      Caption = 'Corpo'
      Category = 0
      Hint = 'Corpo'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Tag = 11
      Caption = 'Duplicatas'
      Category = 0
      Hint = 'Duplicatas'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Tag = 11
      Caption = 'Produtos'
      Category = 0
      Hint = 'Produtos'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Tag = 11
      Caption = 'Servi'#231'os'
      Category = 0
      Hint = 'Servi'#231'os'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton9Click
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, IMPNOTA.* FROM IMPNOTA'
    ProviderName = 'pvImpnota'
    Left = 488
    Top = 320
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
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsDadosLINHA18: TStringField
      DisplayLabel = '1/8 de linha'
      FieldName = 'LINHA18'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosALTURA: TSmallintField
      DisplayLabel = 'Altura'
      FieldName = 'ALTURA'
      Required = True
    end
    object cdsDadosDUP_LINHAINI: TSmallintField
      DisplayLabel = 'Duplicata Linha Inicial'
      FieldName = 'DUP_LINHAINI'
      Required = True
    end
    object cdsDadosDUP_COLUNAS: TSmallintField
      DisplayLabel = 'Duplicata Colunas'
      FieldName = 'DUP_COLUNAS'
      Required = True
    end
    object cdsDadosDUP_TAMANHOCOL: TSmallintField
      DisplayLabel = 'Duplicata Tamanho Coluna'
      FieldName = 'DUP_TAMANHOCOL'
      Required = True
    end
    object cdsDadosDUP_LINHAS: TSmallintField
      DisplayLabel = 'Duplicata Linhas'
      FieldName = 'DUP_LINHAS'
      Required = True
    end
    object cdsDadosPRO_LINHAINI: TSmallintField
      DisplayLabel = 'Produto Linha Inicial'
      FieldName = 'PRO_LINHAINI'
      Required = True
    end
    object cdsDadosPRO_LINHAS: TSmallintField
      DisplayLabel = 'Produto Linhas'
      FieldName = 'PRO_LINHAS'
      Required = True
    end
    object cdsDadosSER_LINHAINI: TSmallintField
      DisplayLabel = 'Servi'#231'o Linha Inicial'
      FieldName = 'SER_LINHAINI'
      Required = True
    end
    object cdsDadosSER_LINHAS: TSmallintField
      DisplayLabel = 'Servi'#231'o Linhas'
      FieldName = 'SER_LINHAS'
      Required = True
    end
    object cdsDadosEFEITOBASE: TStringField
      DisplayLabel = 'Efeito Base'
      FieldName = 'EFEITOBASE'
      FixedChar = True
      Size = 10
    end
    object cdsDadosDUP_COLUNAINI: TSmallintField
      DisplayLabel = 'Duplicata Coluna Inicial'
      FieldName = 'DUP_COLUNAINI'
      Required = True
    end
  end
  inherited dsrDados: TDataSource
    Left = 488
    Top = 376
  end
  inherited tmrFocus: TTimer
    Left = 488
    Top = 264
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 584
    Top = 264
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.756262326390000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 664
    Top = 264
  end
  inherited actDetalhes: TActionList
    Left = 584
    Top = 208
  end
  inherited tmrRelogio: TTimer
    Left = 488
    Top = 208
  end
  inherited tmrLabel: TTimer
    Left = 752
    Top = 208
  end
  inherited menuGrade: TPopupMenu
    Left = 752
    Top = 264
  end
  inherited tmrFocus2: TTimer
    Left = 584
    Top = 320
  end
  inherited memDataEntre: TdxMemData
    Left = 856
    Top = 208
  end
  inherited dsrDataEntre: TDataSource
    Left = 856
    Top = 264
  end
  inherited tmrSemDireito: TTimer
    Left = 664
    Top = 320
  end
  inherited tmrSel: TTimer
    Left = 944
    Top = 208
  end
  inherited memCampos: TdxMemData
    Left = 856
    Top = 328
  end
  inherited dsrCampos: TDataSource
    Left = 856
    Top = 384
  end
  inherited tmrMove: TTimer
    Left = 944
    Top = 264
  end
  inherited memDataGraph: TdxMemData
    Left = 944
    Top = 328
  end
  inherited SaveDialog: TSaveDialog
    Left = 664
    Top = 208
  end
end
