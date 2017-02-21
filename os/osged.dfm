inherited formOSGed: TformOSGed
  Caption = 'O.S. Gerenciador de Documentos'
  ExplicitWidth = 707
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDados: TcxPageControl
    inherited tabVisual: TcxTabSheet
      inherited pnlFundoGrade: TPanel
        inherited grdDados: TcxGrid
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            object cxGrid1DBTableView1SEL: TcxGridDBColumn
              Caption = '**'
              DataBinding.FieldName = 'SEL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Options.Editing = False
              Width = 27
            end
            object cxGrid1DBTableView1DATA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA'
              PropertiesClassName = 'TcxDateEditProperties'
              SortIndex = 0
              SortOrder = soDescending
              Width = 149
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              Width = 268
            end
            object cxGrid1DBTableView1EXTENSAO: TcxGridDBColumn
              DataBinding.FieldName = 'EXTENSAO'
            end
            object cxGrid1DBTableView1TAMANHO: TcxGridDBColumn
              DataBinding.FieldName = 'TAMANHO'
              Width = 104
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
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
          Left = 16
          Top = 16
          Width = 80
          Height = 13
          Caption = 'Nome arquivo'
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 52
          Height = 13
          Caption = 'Extens'#227'o'
        end
        object Label3: TLabel
          Left = 16
          Top = 96
          Width = 53
          Height = 13
          Caption = 'Tamanho'
        end
        object Label4: TLabel
          Left = 16
          Top = 136
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = cxDBTextEdit4
        end
        object Label5: TLabel
          Left = 16
          Top = 176
          Width = 27
          Height = 13
          Caption = 'Data'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 15
          Top = 31
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = dsrDados
          Properties.CharCase = ecLowerCase
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 586
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 15
          Top = 71
          DataBinding.DataField = 'EXTENSAO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 81
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 15
          Top = 111
          DataBinding.DataField = 'TAMANHO'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 15
          Top = 151
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsrDados
          TabOrder = 3
          Width = 586
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 15
          Top = 191
          DataBinding.DataField = 'DATA'
          DataBinding.DataSource = dsrDados
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 178
        end
      end
    end
  end
  inherited dxStatusBar: TdxStatusBar
    ExplicitLeft = 8
    ExplicitTop = 439
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 376
    Top = 247
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar5: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAjuda'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSalvar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnUpload'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDownload'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAbrir'
        end>
    end
    inherited btnAdicionar: TdxBarLargeButton
      ImageIndex = 96
    end
    inherited cmbSelecionar: TdxBarCombo
      Tag = 1
    end
    object btnUpload: TdxBarLargeButton
      Caption = 'Upload'
      Category = 0
      Hint = 'Upload'
      Visible = ivAlways
      LargeImageIndex = 19
      OnClick = btnUploadClick
      AutoGrayScale = False
    end
    object btnDownload: TdxBarLargeButton
      Caption = 'Download'
      Category = 0
      Hint = 'Download'
      Visible = ivAlways
      LargeImageIndex = 23
      OnClick = btnDownloadClick
      AutoGrayScale = False
    end
    object btnAbrir: TdxBarLargeButton
      Caption = 'Abrir'
      Category = 0
      Hint = 'Abrir'
      Visible = ivAlways
      LargeImageIndex = 36
      OnClick = btnAbrirClick
      AutoGrayScale = False
    end
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, OSGED.* FROM OSGED'
    ProviderName = 'pvOSGed'
    Left = 456
    Top = 312
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODMOVIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd.Movimento'
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Nome arquivo'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 60
    end
    object cdsDadosEXTENSAO: TStringField
      DisplayLabel = 'Extens'#227'o'
      FieldName = 'EXTENSAO'
      FixedChar = True
      Size = 3
    end
    object cdsDadosTAMANHO: TFMTBCDField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      OnGetText = cdsDadosTAMANHOGetText
      Precision = 20
      Size = 3
    end
    object cdsDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 60
    end
    object cdsDadosDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
    end
  end
  inherited dsrDados: TDataSource
    Left = 456
    Top = 368
  end
  inherited tmrFocus: TTimer
    Left = 456
    Top = 256
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 552
    Top = 256
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 40258.826552476850000000
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 632
    Top = 256
  end
  inherited actDetalhes: TActionList
    Left = 552
    Top = 200
  end
  inherited tmrRelogio: TTimer
    Left = 456
    Top = 200
  end
  inherited tmrLabel: TTimer
    Left = 720
    Top = 200
  end
  inherited menuGrade: TPopupMenu
    Left = 720
    Top = 256
  end
  inherited tmrFocus2: TTimer
    Left = 552
    Top = 312
  end
  inherited memDataEntre: TdxMemData
    Left = 824
    Top = 200
  end
  inherited dsrDataEntre: TDataSource
    Left = 824
    Top = 256
  end
  inherited tmrSemDireito: TTimer
    Left = 632
    Top = 312
  end
  inherited tmrSel: TTimer
    Left = 912
    Top = 200
  end
  inherited memCampos: TdxMemData
    Left = 824
    Top = 320
  end
  inherited dsrCampos: TDataSource
    Left = 824
    Top = 376
  end
  inherited tmrMove: TTimer
    Left = 912
    Top = 256
  end
  inherited memDataGraph: TdxMemData
    Left = 912
    Top = 320
  end
  inherited FileSaveDialog: TFileSaveDialog
    Left = 632
    Top = 200
  end
  inherited SaveDialog: TSaveDialog
    Left = 632
    Top = 368
  end
  inherited tmrShift: TTimer
    Left = 552
    Top = 368
  end
  object DownloadDialog: TSaveDialog
    Filter = 'Todos os arquivos (*.*)|*.*'
    Title = 'Salvar arquivo como...'
    Left = 704
    Top = 448
  end
  object UploadDialog: TOpenDialog
    Filter = 'Todos os arquivos (*.*)|*.*'
    Title = 'Arquivo para Upload'
    Left = 624
    Top = 448
  end
end
