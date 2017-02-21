unit data_etiquetas;

interface

uses
  SysUtils, Classes, DB, DBClient, dxmdaset, ppCtrls, ppDB,
  ppBands, ppPrnabl, ppClass, ppBarCod, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppParameter, ppDesignLayer;

type
  TdmoEtiquetas = class(TDataModule)
    cdsEtiqCompras: TClientDataSet;
    cdsEtiqProdutos: TClientDataSet;
    cdsEtiqComprasBARRA: TStringField;
    cdsEtiqComprasSERIE: TStringField;
    cdsEtiqComprasNUMERO_FONE: TStringField;
    cdsEtiqComprasDESCRICAO: TStringField;
    cdsEtiqComprasNUMETIQ: TIntegerField;
    cdsEtiqComprasETIQUETA: TStringField;
    cdsEtiqComprasCODIGO: TIntegerField;
    cdsEtiqProdutosBARRA: TStringField;
    cdsEtiqProdutosDESCRICAO: TStringField;
    cdsEtiqProdutosNUMETIQ: TIntegerField;
    cdsEtiqProdutosETIQUETA: TStringField;
    cdsEtiqProdutosCODIGO: TIntegerField;
    memEtiqCompras: TdxMemData;
    memEtiqProdutos: TdxMemData;
    memEtiqProdutosBARRA: TStringField;
    memEtiqProdutosCODIGO: TIntegerField;
    memEtiqProdutosDESCRICAO: TStringField;
    memEtiqProdutosPRECO: TStringField;
    ppDBEtiqCompras: TppDBPipeline;
    ppDBEtiqProdutos: TppDBPipeline;
    dsrEtiqCompras: TDataSource;
    dsrEtiqProdutos: TDataSource;
    ppEtiqProdutos04x20: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBBarCode1: TppDBBarCode;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppEtiqProdutos03x10: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBBarCode2: TppDBBarCode;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    ppEtiqProdutos04x20preco: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppFooterBand3: TppFooterBand;
    ppEtiqProdutos03x10preco: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppColumnHeaderBand4: TppColumnHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppDBBarCode3: TppDBBarCode;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppColumnFooterBand4: TppColumnFooterBand;
    ppFooterBand4: TppFooterBand;
    memEtiqComprasBARRA: TStringField;
    memEtiqComprasCODIGO: TIntegerField;
    memEtiqComprasDESCRICAO: TStringField;
    memEtiqComprasPRECO: TStringField;
    memEtiqComprasFONE: TStringField;
    ppEtiqCompras04x20: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppColumnHeaderBand5: TppColumnHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppDBBarCode4: TppDBBarCode;
    ppColumnFooterBand5: TppColumnFooterBand;
    ppFooterBand5: TppFooterBand;
    ppEtiqCompras03x10: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppColumnHeaderBand6: TppColumnHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppDBBarCode5: TppDBBarCode;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppColumnFooterBand6: TppColumnFooterBand;
    ppFooterBand6: TppFooterBand;
    ppEtiqCompras04x20preco: TppReport;
    ppColumnHeaderBand7: TppColumnHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppColumnFooterBand7: TppColumnFooterBand;
    ppFooterBand7: TppFooterBand;
    ppEtiqCompras03x10preco: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppColumnHeaderBand8: TppColumnHeaderBand;
    ppDetailBand8: TppDetailBand;
    ppDBBarCode6: TppDBBarCode;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppColumnFooterBand8: TppColumnFooterBand;
    ppFooterBand8: TppFooterBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    cdsEtiqComprasQUANTIDADE: TFMTBCDField;
    cdsEtiqComprasPRECOVENDA: TFMTBCDField;
    cdsEtiqProdutosPRECOVENDA: TFMTBCDField;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    memEtiqProdutosPRECOVISTA: TStringField;
    memEtiqComprasPRECOVISTA: TStringField;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareEtiquetasProdutos(codproduto, salto,
      copias: integer; parcelas: extended);
    procedure PrepareEtiquetasCompras(codcompra, salto: integer;
      parcelas: extended);
  end;

var
  dmoEtiquetas: TdmoEtiquetas;

implementation

uses principal;

{$R *.dfm}

procedure TdmoEtiquetas.PrepareEtiquetasProdutos(codproduto, salto,
  copias: integer; parcelas: extended);
var
  i: integer;
begin

  { busco as etiquetas no banco de dados }
  with cdsEtiqProdutos do
   begin
     Params.ParamByName('CODPRODUTO').AsInteger := codproduto;
     open;
     RemoteServer.Close;
   end;

  { abro a tabela de memória }
  if memEtiqProdutos.Active then
    memEtiqProdutos.close;
  memEtiqProdutos.open;

  { acrescento etiquetas em branco na quantidade de salto }
  for i := 1 to salto do
    memEtiqProdutos.AppendRecord([
      '',
      nil,
      '',
      '']);

  { copio os dados das etiquetas para a tabela de memória }
  with cdsEtiqProdutos do
   begin
    first;
    while not eof do
     begin
       if fieldByName('ETIQUETA').AsString = 'S' then
        for i := 1 to (copias * fieldByName('NUMETIQ').AsInteger) do
         begin
          memEtiqProdutos.Append;
          memEtiqProdutos['BARRA']     := fieldByName('BARRA').AsString;
          memEtiqProdutos['CODIGO']    := fieldByName('CODIGO').AsInteger;
          memEtiqProdutos['DESCRICAO'] := fieldByName('DESCRICAO').AsString;

          if (parcelas > 1) then
           begin
             memEtiqProdutos['PRECO']     :=
               format('%d x %.2f',
                 [trunc(parcelas), (fieldByName('PRECOVENDA').AsCurrency / parcelas)]);
             memEtiqProdutos['PRECOVISTA']     :=
               format('%.2f', [fieldByName('PRECOVENDA').AsCurrency]);
           end else
           begin
             memEtiqProdutos['PRECO']     := format('%.2f', [fieldByName('PRECOVENDA').AsCurrency]);
             memEtiqProdutos['PRECOVISTA'] := '';
           end;

          memEtiqProdutos.Post;
         end;
      next;
     end;
   end;

end;

procedure TdmoEtiquetas.PrepareEtiquetasCompras(codcompra, salto: integer;
  parcelas: extended);
var
  i: integer;
begin

  { busco as etiquetas no banco de dados }
  with cdsEtiqCompras do
   begin
     Params.ParamByName('CODCOMPRA').AsInteger := codcompra;
     open;
     RemoteServer.Close;
   end;

  { abro a tabela de memória }
  if memEtiqCompras.Active then
    memEtiqCompras.close;
  memEtiqCompras.open;

  { acrescento etiquetas em branco na quantidade de salto }
  for i := 1 to salto do
    memEtiqCompras.AppendRecord([
      nil,
      '',
      nil,
      '',
      '',
      '']);

  { copio os dados das etiquetas para a tabela de memória }
  with cdsEtiqCompras do
   begin
    first;
    while not eof do
     begin
       if fieldByName('ETIQUETA').AsString = 'S' then
        for i := 1 to (fieldByName('QUANTIDADE').AsInteger * fieldByName('NUMETIQ').AsInteger) do
         begin
          memEtiqCompras.Append;
          memEtiqCompras['BARRA']     := fieldByName('BARRA').AsString;
          memEtiqCompras['CODIGO']    := fieldByName('CODIGO').AsInteger;
          memEtiqCompras['DESCRICAO'] := fieldByName('DESCRICAO').AsString;
          memEtiqCompras['FONE']      := fieldByName('NUMERO_FONE').AsString;

          if (parcelas > 1) then
           begin
             memEtiqCompras['PRECO']     :=
               format('%d x %.2f',
                 [trunc(parcelas), (fieldByName('PRECOVENDA').AsCurrency / parcelas)]);
             memEtiqCompras['PRECOVISTA'] :=
               format('%.2f', [fieldByName('PRECOVENDA').AsCurrency]);
           end else
           begin
             memEtiqCompras['PRECO']     := format('%.2f', [fieldByName('PRECOVENDA').AsCurrency]);
             memEtiqCompras['PRECOVISTA'] := '';
           end;

          memEtiqCompras.Post;
         end;
      next;
     end;
   end;

end;

end.
