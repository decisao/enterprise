inherited formOSLocaliza: TformOSLocaliza
  Caption = 'Localiza'#231#227'o da O.S.'
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
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object cxGrid1DBTableView1LOCALIZACAO: TcxGridDBColumn
              DataBinding.FieldName = 'LOCALIZACAO'
              Width = 365
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
          Top = 8
          Width = 92
          Height = 13
          Caption = 'C'#243'd.Localiza'#231#227'o'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 16
          Top = 48
          Width = 65
          Height = 13
          Caption = 'Localiza'#231#227'o'
          FocusControl = cxDBTextEdit2
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 23
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsrDados
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 16
          Top = 63
          DataBinding.DataField = 'LOCALIZACAO'
          DataBinding.DataSource = dsrDados
          TabOrder = 1
          Width = 361
        end
      end
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    Left = 408
    Top = 295
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
  end
  inherited cdsDados: TClientDataSet
    CommandText = 'SELECT '#39'N'#39' AS SEL, OS_LOCALIZACAO.* FROM OS_LOCALIZACAO'
    ProviderName = 'pvLocaliza'
    Left = 488
    Top = 360
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Localiza'#231#227'o'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosLOCALIZACAO: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'LOCALIZACAO'
      FixedChar = True
      Size = 40
    end
    object cdsDadosSISTEMA: TStringField
      DisplayLabel = 'Sistema'
      FieldName = 'SISTEMA'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsrDados: TDataSource
    Left = 488
    Top = 416
  end
  inherited tmrFocus: TTimer
    Left = 488
    Top = 304
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 584
    Top = 304
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 40943.403423182870000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited dxBarPopupPrint: TdxBarPopupMenu
    Left = 664
    Top = 304
  end
  inherited actDetalhes: TActionList
    Left = 584
    Top = 248
  end
  inherited tmrRelogio: TTimer
    Left = 488
    Top = 248
  end
  inherited tmrLabel: TTimer
    Left = 752
    Top = 248
  end
  inherited menuGrade: TPopupMenu
    Left = 752
    Top = 304
  end
  inherited tmrFocus2: TTimer
    Left = 584
    Top = 360
  end
  inherited memDataEntre: TdxMemData
    Left = 856
    Top = 248
  end
  inherited dsrDataEntre: TDataSource
    Left = 856
    Top = 304
  end
  inherited tmrSemDireito: TTimer
    Left = 664
    Top = 360
  end
  inherited tmrSel: TTimer
    Left = 944
    Top = 248
  end
  inherited memCampos: TdxMemData
    Left = 856
    Top = 368
  end
  inherited dsrCampos: TDataSource
    Left = 856
    Top = 424
  end
  inherited tmrMove: TTimer
    Left = 944
    Top = 304
  end
  inherited memDataGraph: TdxMemData
    Left = 944
    Top = 368
  end
  inherited FileSaveDialog: TFileSaveDialog
    Left = 664
    Top = 248
  end
  inherited SaveDialog: TSaveDialog
    Left = 664
    Top = 416
  end
  inherited tmrShift: TTimer
    Left = 584
    Top = 416
  end
end
