unit data_orcamentos;

interface

uses
  SysUtils, Classes, ppStrtch, ppMemo, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  DBClient, ppModule, raCodMod, ppParameter, ppDesignLayer;

type
  TdmoOrcamentos = class(TDataModule)
    cdsORCorpo: TClientDataSet;
    dsrOSCorpo: TDataSource;
    cdsORItens: TClientDataSet;
    dsrOSItens: TDataSource;
    ppDBPipeCorpo: TppDBPipeline;
    ppDBPipeItens: TppDBPipeline;
    ppOrcamento: TppReport;
    ppDBPipeEmpresa: TppDBPipeline;
    ppParameterList1: TppParameterList;
    cdsORItens2: TClientDataSet;
    dsrOSItens2: TDataSource;
    ppDBPipeItens2: TppDBPipeline;
    ppOrcamento2: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppShape8: TppShape;
    ppLabel23: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText34: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel33: TppLabel;
    ppDBText43: TppDBText;
    ppLabel34: TppLabel;
    ppDBText44: TppDBText;
    ppLabel35: TppLabel;
    ppDBText45: TppDBText;
    ppLabel36: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel37: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLine7: TppLine;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppLabel38: TppLabel;
    ppLine8: TppLine;
    ppDBImage2: TppDBImage;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine9: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBCalc4: TppDBCalc;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppDBMemo1: TppDBMemo;
    ppDBMemo5: TppDBMemo;
    ppShape11: TppShape;
    ppLabel45: TppLabel;
    ppDBMemo6: TppDBMemo;
    ppLine10: TppLine;
    ppDBText69: TppDBText;
    ppLine11: TppLine;
    ppDBText70: TppDBText;
    ppLabel46: TppLabel;
    ppLine12: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppShape12: TppShape;
    ppLabel49: TppLabel;
    ppLabel52: TppLabel;
    ppDBCalc5: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppCompra: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppLabel57: TppLabel;
    ppDBText78: TppDBText;
    ppLabel58: TppLabel;
    ppDBText79: TppDBText;
    ppLabel59: TppLabel;
    ppDBText80: TppDBText;
    ppLabel60: TppLabel;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppLabel61: TppLabel;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppLine13: TppLine;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppLabel62: TppLabel;
    ppLine14: TppLine;
    ppDBImage3: TppDBImage;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLine15: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBCalc6: TppDBCalc;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine16: TppLine;
    ppDBText104: TppDBText;
    ppLine17: TppLine;
    ppDBText105: TppDBText;
    ppLabel70: TppLabel;
    ppLine18: TppLine;
    ppShape18: TppShape;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    raCodeModule3: TraCodeModule;
    ppParameterList3: TppParameterList;
    ppPV: TppReport;
    ppParameterList4: TppParameterList;
    ppPV2: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppLabel106: TppLabel;
    ppDBText148: TppDBText;
    ppLabel107: TppLabel;
    ppDBText149: TppDBText;
    ppLabel108: TppLabel;
    ppDBText150: TppDBText;
    ppLabel109: TppLabel;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppLabel110: TppLabel;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppLine25: TppLine;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppLabel111: TppLabel;
    ppLine26: TppLine;
    ppDBImage5: TppDBImage;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLine27: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBCalc12: TppDBCalc;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppShape26: TppShape;
    ppLabel118: TppLabel;
    ppDBMemo12: TppDBMemo;
    ppLine28: TppLine;
    ppDBText174: TppDBText;
    ppLine29: TppLine;
    ppDBText175: TppDBText;
    ppLabel119: TppLabel;
    ppLine30: TppLine;
    ppShape27: TppShape;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppDBCalc13: TppDBCalc;
    raCodeModule5: TraCodeModule;
    ppParameterList5: TppParameterList;
    ppShape17: TppShape;
    ppLabel94: TppLabel;
    ppDBMemo7: TppDBMemo;
    ppOV: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape19: TppShape;
    ppShape24: TppShape;
    ppLabel95: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppLabel127: TppLabel;
    ppDBText183: TppDBText;
    ppLabel128: TppLabel;
    ppDBText184: TppDBText;
    ppLabel129: TppLabel;
    ppDBText185: TppDBText;
    ppLabel130: TppLabel;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppLabel131: TppLabel;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppLine31: TppLine;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppDBText200: TppDBText;
    ppLabel132: TppLabel;
    ppLine32: TppLine;
    ppDBImage6: TppDBImage;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLine33: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBCalc14: TppDBCalc;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppDBText205: TppDBText;
    ppDBText206: TppDBText;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppShape25: TppShape;
    ppShape28: TppShape;
    ppDBMemo8: TppDBMemo;
    ppDBMemo10: TppDBMemo;
    ppShape29: TppShape;
    ppLabel139: TppLabel;
    ppDBMemo11: TppDBMemo;
    ppLine34: TppLine;
    ppDBText209: TppDBText;
    ppLine35: TppLine;
    ppDBText210: TppDBText;
    ppLabel140: TppLabel;
    ppLine36: TppLine;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppShape30: TppShape;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    raCodeModule6: TraCodeModule;
    ppParameterList6: TppParameterList;
    ppOV2: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppLabel153: TppLabel;
    ppDBText218: TppDBText;
    ppLabel154: TppLabel;
    ppDBText219: TppDBText;
    ppLabel155: TppLabel;
    ppDBText220: TppDBText;
    ppLabel156: TppLabel;
    ppDBText221: TppDBText;
    ppDBText222: TppDBText;
    ppLabel157: TppLabel;
    ppDBText223: TppDBText;
    ppDBText224: TppDBText;
    ppLine37: TppLine;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    ppDBText227: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppDBText234: TppDBText;
    ppDBText235: TppDBText;
    ppLabel158: TppLabel;
    ppLine38: TppLine;
    ppDBImage7: TppDBImage;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLine39: TppLine;
    ppDetailBand7: TppDetailBand;
    ppDBCalc17: TppDBCalc;
    ppDBText236: TppDBText;
    ppDBText237: TppDBText;
    ppDBText238: TppDBText;
    ppDBText239: TppDBText;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppDBMemo13: TppDBMemo;
    ppDBMemo14: TppDBMemo;
    ppShape35: TppShape;
    ppLabel165: TppLabel;
    ppDBMemo15: TppDBMemo;
    ppLine40: TppLine;
    ppDBText244: TppDBText;
    ppLine41: TppLine;
    ppDBText245: TppDBText;
    ppLabel166: TppLabel;
    ppLine42: TppLine;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppShape36: TppShape;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppDBCalc18: TppDBCalc;
    raCodeModule7: TraCodeModule;
    ppParameterList7: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppLabel11: TppLabel;
    ppDBText22: TppDBText;
    ppLabel12: TppLabel;
    ppDBText23: TppDBText;
    ppLabel13: TppLabel;
    ppDBText24: TppDBText;
    ppLabel14: TppLabel;
    ppDBText25: TppDBText;
    ppDBText11: TppDBText;
    ppLabel3: TppLabel;
    ppDBText13: TppDBText;
    ppDBText31: TppDBText;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppLabel20: TppLabel;
    ppLine4: TppLine;
    ppDBImage1: TppDBImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBCalc1: TppDBCalc;
    ppDBText20: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText32: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText33: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppShape7: TppShape;
    ppLabel25: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppLine1: TppLine;
    ppDBText35: TppDBText;
    ppLine5: TppLine;
    ppDBText36: TppDBText;
    ppLabel26: TppLabel;
    ppLine6: TppLine;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppShape3: TppShape;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppVariable1: TppVariable;
    ppVariable4: TppVariable;
    cdsORItens3: TClientDataSet;
    dsrOSItens3: TDataSource;
    ppDBPipeItens3: TppDBPipeline;
    ppVariable2: TppVariable;
    ppHeaderBand4: TppHeaderBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel69: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppLabel80: TppLabel;
    ppDBText113: TppDBText;
    ppLabel81: TppLabel;
    ppDBText114: TppDBText;
    ppLabel82: TppLabel;
    ppDBText115: TppDBText;
    ppLabel83: TppLabel;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppLabel84: TppLabel;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppLine19: TppLine;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppLine20: TppLine;
    ppDBImage4: TppDBImage;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLine21: TppLine;
    ppLabel85: TppLabel;
    ppLabel88: TppLabel;
    ppLabel114: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBCalc9: TppDBCalc;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppVariable3: TppVariable;
    ppDBText133: TppDBText;
    ppDBText168: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppShape20: TppShape;
    ppLabel92: TppLabel;
    ppDBMemo9: TppDBMemo;
    ppLine22: TppLine;
    ppDBText139: TppDBText;
    ppLine23: TppLine;
    ppDBText140: TppDBText;
    ppLabel93: TppLabel;
    ppLine24: TppLine;
    ppShape21: TppShape;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppVariable5: TppVariable;
    raCodeModule4: TraCodeModule;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppLabel171: TppLabel;
    ppDBText246: TppDBText;
    ppDBText247: TppDBText;
    ppLabel172: TppLabel;
    ppDBText248: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintOrcamento(codOR, tipo: longint);
    procedure PrintOV(codOR, tipo: longint);
    procedure PrintCompra(codCO: longint);
    procedure PrintVenda(codOR, tipo: longint);
  end;

var
  dmoOrcamentos: TdmoOrcamentos;

implementation

uses principal;

{$R *.dfm}

procedure TdmoOrcamentos.PrintOrcamento(codOR, tipo: longint);
begin

  { Perfil - Empresa cabeçalho }
  if not formPrincipal.cdsPerfil.Active then
    formPrincipal.cdsPerfil.Open;

  { corpo do orçamento }
  cdsORCorpo.Params[0].AsInteger := codOR;
  cdsORCorpo.Open;


  if tipo = 1 then
   begin

     { itens do orçamento }
     cdsORItens.Params[0].AsInteger := codOR;
     cdsORItens.Open;
     cdsORItens.RemoteServer.Close;

     ppOrcamento.EmailSettings.Recipients.Add(
       cdsORCorpo.FieldByName('EMAIL').AsString);
     ppOrcamento.EmailSettings.Subject := 'Orçamento';
     ppOrcamento.EmailSettings.Body.Add(
       'Para:');
     ppOrcamento.EmailSettings.Body.Add(
       cdsORCorpo.FieldByName('NOME').AsString);
     ppOrcamento.EmailSettings.Body.Add(
       '');
     ppOrcamento.EmailSettings.Body.Add(
       'Segue anexo o orçamento solicitado.');
     ppOrcamento.EmailSettings.Body.Add(
       'Estamos a disposição para fornecer maiores informações.');
     ppOrcamento.EmailSettings.Body.Add(
       '');
     ppOrcamento.EmailSettings.Body.Add(
       'atenciosamente,');
     ppOrcamento.EmailSettings.Body.Add(
       '');
     ppOrcamento.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
     ppOrcamento.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
     ppOrcamento.EmailSettings.Body.Add('Fone ' +
       formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
     ppOrcamento.EmailSettings.Body.Add(
       '');
     ppOrcamento.EmailSettings.Body.Add(
       '');
     ppOrcamento.EmailSettings.Body.Add(
       '---------------------------------------------------');
     ppOrcamento.EmailSettings.Body.Add(
       'Caso não possua o Adobe Acrobat Reader para abrir o');
     ppOrcamento.EmailSettings.Body.Add(
       'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
     ppOrcamento.EmailSettings.Body.Add(
       '---------------------------------------------------');

     ppOrcamento.Print;

   end else
   begin

     { itens do orçamento }
     cdsORItens2.Params[0].AsInteger := codOR;
     cdsORItens2.Open;
     cdsORItens2.RemoteServer.Close;

     ppOrcamento2.EmailSettings.Recipients.Add(
       cdsORCorpo.FieldByName('EMAIL').AsString);
     ppOrcamento2.EmailSettings.Subject := 'Orçamento';
     ppOrcamento2.EmailSettings.Body.Add(
       'Para:');
     ppOrcamento2.EmailSettings.Body.Add(
       cdsORCorpo.FieldByName('NOME').AsString);
     ppOrcamento2.EmailSettings.Body.Add(
       '');
     ppOrcamento2.EmailSettings.Body.Add(
       'Segue anexo o orçamento solicitado.');
     ppOrcamento2.EmailSettings.Body.Add(
       'Estamos a disposição para fornecer maiores informações.');
     ppOrcamento2.EmailSettings.Body.Add(
       '');
     ppOrcamento2.EmailSettings.Body.Add(
       'atenciosamente,');
     ppOrcamento2.EmailSettings.Body.Add(
       '');
     ppOrcamento2.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
     ppOrcamento2.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
     ppOrcamento2.EmailSettings.Body.Add('Fone ' +
       formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
     ppOrcamento2.EmailSettings.Body.Add(
       '');
     ppOrcamento2.EmailSettings.Body.Add(
       '');
     ppOrcamento2.EmailSettings.Body.Add(
       '---------------------------------------------------');
     ppOrcamento2.EmailSettings.Body.Add(
       'Caso não possua o Adobe Acrobat Reader para abrir o');
     ppOrcamento2.EmailSettings.Body.Add(
       'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
     ppOrcamento2.EmailSettings.Body.Add(
       '---------------------------------------------------');

     ppOrcamento2.Print;

   end;


end;

procedure TdmoOrcamentos.PrintOV(codOR, tipo: longint);
begin

  { Perfil - Empresa cabeçalho }
  if not formPrincipal.cdsPerfil.Active then
    formPrincipal.cdsPerfil.Open;

  { corpo do orçamento }
  cdsORCorpo.Params[0].AsInteger := codOR;
  cdsORCorpo.Open;


  if tipo = 1 then
   begin

     { itens do orçamento }
     cdsORItens.Params[0].AsInteger := codOR;
     cdsORItens.Open;
     cdsORItens.RemoteServer.Close;

     ppOV.EmailSettings.Recipients.Add(
       cdsORCorpo.FieldByName('EMAIL').AsString);
     ppOV.EmailSettings.Subject := 'Orçamento';
     ppOV.EmailSettings.Body.Add(
       'Para:');
     ppOV.EmailSettings.Body.Add(
       cdsORCorpo.FieldByName('NOME').AsString);
     ppOV.EmailSettings.Body.Add(
       '');
     ppOV.EmailSettings.Body.Add(
       'Segue anexo o orçamento solicitado.');
     ppOV.EmailSettings.Body.Add(
       'Estamos a disposição para fornecer maiores informações.');
     ppOV.EmailSettings.Body.Add(
       '');
     ppOV.EmailSettings.Body.Add(
       'atenciosamente,');
     ppOV.EmailSettings.Body.Add(
       '');
     ppOV.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
     ppOV.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
     ppOV.EmailSettings.Body.Add('Fone ' +
       formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
     ppOV.EmailSettings.Body.Add(
       '');
     ppOV.EmailSettings.Body.Add(
       '');
     ppOV.EmailSettings.Body.Add(
       '---------------------------------------------------');
     ppOV.EmailSettings.Body.Add(
       'Caso não possua o Adobe Acrobat Reader para abrir o');
     ppOV.EmailSettings.Body.Add(
       'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
     ppOV.EmailSettings.Body.Add(
       '---------------------------------------------------');

     ppOV.Print;

   end else
   begin

     { itens do orçamento }
     cdsORItens2.Params[0].AsInteger := codOR;
     cdsORItens2.Open;
     cdsORItens2.RemoteServer.Close;

     ppOV2.EmailSettings.Recipients.Add(
       cdsORCorpo.FieldByName('EMAIL').AsString);
     ppOV2.EmailSettings.Subject := 'Orçamento';
     ppOV2.EmailSettings.Body.Add(
       'Para:');
     ppOV2.EmailSettings.Body.Add(
       cdsORCorpo.FieldByName('NOME').AsString);
     ppOV2.EmailSettings.Body.Add(
       '');
     ppOV2.EmailSettings.Body.Add(
       'Segue anexo o orçamento solicitado.');
     ppOV2.EmailSettings.Body.Add(
       'Estamos a disposição para fornecer maiores informações.');
     ppOV2.EmailSettings.Body.Add(
       '');
     ppOV2.EmailSettings.Body.Add(
       'atenciosamente,');
     ppOV2.EmailSettings.Body.Add(
       '');
     ppOV2.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
     ppOV2.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
     ppOV2.EmailSettings.Body.Add('Fone ' +
       formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
     ppOV2.EmailSettings.Body.Add(
       '');
     ppOV2.EmailSettings.Body.Add(
       '');
     ppOV2.EmailSettings.Body.Add(
       '---------------------------------------------------');
     ppOV2.EmailSettings.Body.Add(
       'Caso não possua o Adobe Acrobat Reader para abrir o');
     ppOV2.EmailSettings.Body.Add(
       'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
     ppOV2.EmailSettings.Body.Add(
       '---------------------------------------------------');

     ppOV2.Print;

   end;


end;

procedure TdmoOrcamentos.PrintCompra(codCO: longint);
begin

  { Perfil - Empresa cabeçalho }
  if not formPrincipal.cdsPerfil.Active then
    formPrincipal.cdsPerfil.Open;

  { corpo do orçamento }
  cdsORCorpo.Params[0].AsInteger := codCO;
  cdsORCorpo.Open;


  { itens do orçamento }
  cdsORItens.Params[0].AsInteger := codCO;
  cdsORItens.Open;
  cdsORItens.RemoteServer.Close;

  ppCompra.EmailSettings.Recipients.Add(
    cdsORCorpo.FieldByName('EMAIL').AsString);
  ppCompra.EmailSettings.Subject := 'Orçamento';
  ppCompra.EmailSettings.Body.Add(
    'Para:');
  ppCompra.EmailSettings.Body.Add(
    cdsORCorpo.FieldByName('NOME').AsString);
  ppCompra.EmailSettings.Body.Add(
    '');
  ppCompra.EmailSettings.Body.Add(
    'Segue anexo o pedido de compra.');
  ppCompra.EmailSettings.Body.Add(
    'Estamos a disposição para fornecer maiores informações.');
  ppCompra.EmailSettings.Body.Add(
    '');
  ppCompra.EmailSettings.Body.Add(
    'atenciosamente,');
  ppCompra.EmailSettings.Body.Add(
    '');
  ppCompra.EmailSettings.Body.Add(
    formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
  ppCompra.EmailSettings.Body.Add(
    formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
  ppCompra.EmailSettings.Body.Add('Fone ' +
    formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
  ppCompra.EmailSettings.Body.Add(
    '');
  ppCompra.EmailSettings.Body.Add(
    '');
  ppCompra.EmailSettings.Body.Add(
    '---------------------------------------------------');
  ppCompra.EmailSettings.Body.Add(
    'Caso não possua o Adobe Acrobat Reader para abrir o');
  ppCompra.EmailSettings.Body.Add(
    'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
  ppCompra.EmailSettings.Body.Add(
    '---------------------------------------------------');

  ppCompra.Print;

end;

procedure TdmoOrcamentos.PrintVenda(codOR, tipo: longint);
begin

  { Perfil - Empresa cabeçalho }
  if not formPrincipal.cdsPerfil.Active then
    formPrincipal.cdsPerfil.Open;

  { corpo do orçamento }
  cdsORCorpo.Params[0].AsInteger := codOR;
  cdsORCorpo.Open;


  if tipo = 1 then
   begin

     { itens do orçamento }
     cdsORItens3.Params[0].AsInteger := codOR;
     cdsORItens3.Open;
     cdsORItens3.RemoteServer.Close;

     ppPV.EmailSettings.Recipients.Add(
       cdsORCorpo.FieldByName('EMAIL').AsString);
     ppPV.EmailSettings.Subject := 'Orçamento';
     ppPV.EmailSettings.Body.Add(
       'Para:');
     ppPV.EmailSettings.Body.Add(
       cdsORCorpo.FieldByName('NOME').AsString);
     ppPV.EmailSettings.Body.Add(
       '');
     ppPV.EmailSettings.Body.Add(
       'Segue anexo o orçamento solicitado.');
     ppPV.EmailSettings.Body.Add(
       'Estamos a disposição para fornecer maiores informações.');
     ppPV.EmailSettings.Body.Add(
       '');
     ppPV.EmailSettings.Body.Add(
       'atenciosamente,');
     ppPV.EmailSettings.Body.Add(
       '');
     ppPV.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
     ppPV.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
     ppPV.EmailSettings.Body.Add('Fone ' +
       formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
     ppPV.EmailSettings.Body.Add(
       '');
     ppPV.EmailSettings.Body.Add(
       '');
     ppPV.EmailSettings.Body.Add(
       '---------------------------------------------------');
     ppPV.EmailSettings.Body.Add(
       'Caso não possua o Adobe Acrobat Reader para abrir o');
     ppPV.EmailSettings.Body.Add(
       'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
     ppPV.EmailSettings.Body.Add(
       '---------------------------------------------------');

     ppPV.Print;

   end else
   begin

     { itens do orçamento }
     cdsORItens3.Params[0].AsInteger := codOR;
     cdsORItens3.Open;
     cdsORItens3.RemoteServer.Close;

     ppPV2.EmailSettings.Recipients.Add(
       cdsORCorpo.FieldByName('EMAIL').AsString);
     ppPV2.EmailSettings.Subject := 'Orçamento';
     ppPV2.EmailSettings.Body.Add(
       'Para:');
     ppPV2.EmailSettings.Body.Add(
       cdsORCorpo.FieldByName('NOME').AsString);
     ppPV2.EmailSettings.Body.Add(
       '');
     ppPV2.EmailSettings.Body.Add(
       'Segue anexo o orçamento solicitado.');
     ppPV2.EmailSettings.Body.Add(
       'Estamos a disposição para fornecer maiores informações.');
     ppPV2.EmailSettings.Body.Add(
       '');
     ppPV2.EmailSettings.Body.Add(
       'atenciosamente,');
     ppPV2.EmailSettings.Body.Add(
       '');
     ppPV2.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
     ppPV2.EmailSettings.Body.Add(
       formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
     ppPV2.EmailSettings.Body.Add('Fone ' +
       formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
     ppPV2.EmailSettings.Body.Add(
       '');
     ppPV2.EmailSettings.Body.Add(
       '');
     ppPV2.EmailSettings.Body.Add(
       '---------------------------------------------------');
     ppPV2.EmailSettings.Body.Add(
       'Caso não possua o Adobe Acrobat Reader para abrir o');
     ppPV2.EmailSettings.Body.Add(
       'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
     ppPV2.EmailSettings.Body.Add(
       '---------------------------------------------------');

     ppPV2.Print;

   end;


end;

end.
