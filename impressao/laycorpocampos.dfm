inherited formCorpoCampos: TformCorpoCampos
  Caption = 'Campos do Corpo'
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
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              SortIndex = 0
              SortOrder = soAscending
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
    end
  end
  inherited dxBarManagerCad: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManagerCadBar3: TdxBar
      Visible = False
    end
    inherited btnAdicionar: TdxBarLargeButton
      Visible = ivNever
      ImageIndex = 96
    end
    inherited btnModificar: TdxBarLargeButton
      Visible = ivNever
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
    CommandText = 
      'SELECT '#39'N'#39' AS SEL, PROC_PARAMS.* FROM PROC_PARAMS('#39'REL_NOTACORPO' +
      #39') WHERE ENTSAI = '#39'S'#39
    ProviderName = 'pvCorpocampos'
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosNOME: TStringField
      DisplayLabel = 'Nome do Campo'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 31
    end
    object cdsDadosTAMANHO: TIntegerField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
    end
    object cdsDadosENTSAI: TStringField
      FieldName = 'ENTSAI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxComponentPrinterLink1: TdxGridReportLink
      ReportDocument.CreationDate = 39476.756143055560000000
      BuiltInReportLink = True
    end
  end
end
