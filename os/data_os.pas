unit data_os;

interface

uses
  SysUtils, Classes, DB, DBClient, raCodMod, ppStrtch, ppMemo,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppParameter, jpeg, ppModule, ppDesignLayer;
  
type
  TdmoOS = class(TDataModule)
    cdsItens: TClientDataSet;
    dsrItens: TDataSource;
    cdsEstorno: TClientDataSet;
    cdsItensBARRA: TStringField;
    cdsItensDESCRICAO2: TStringField;
    cdsItensOPERADORA: TStringField;
    cdsItensPLANO: TStringField;
    cdsItensLINHA: TStringField;
    cdsItensCONTRATO: TStringField;
    cdsItensVOUCHER: TStringField;
    cdsItensTIPOATIVACAO: TStringField;
    cdsOSCorpo: TClientDataSet;
    cdsOSItens: TClientDataSet;
    dsrOSCorpo: TDataSource;
    dsrOSItens: TDataSource;
    ppDBPipeCorpo: TppDBPipeline;
    ppDBPipeItens: TppDBPipeline;
    ppDBPipeEmpresa: TppDBPipeline;
    ppOS: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape4: TppShape;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
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
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBImage1: TppDBImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppDBText27: TppDBText;
    ppLabel23: TppLabel;
    ppDBText29: TppDBText;
    ppLabel28: TppLabel;
    ppDBText30: TppDBText;
    ppLabel29: TppLabel;
    ppDBText33: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText37: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText38: TppDBText;
    ppLabel34: TppLabel;
    ppDBText39: TppDBText;
    ppLabel35: TppLabel;
    ppDBText40: TppDBText;
    ppLabel36: TppLabel;
    ppDBText41: TppDBText;
    ppLabel37: TppLabel;
    ppDBText42: TppDBText;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    ppDBText43: TppDBText;
    ppLine3: TppLine;
    ppDBText34: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBCalc1: TppDBCalc;
    ppDBText20: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText32: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape7: TppShape;
    ppLabel25: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppDBText36: TppDBText;
    ppLine6: TppLine;
    ppShape3: TppShape;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    raCodeModule1: TraCodeModule;
    ppLabel18: TppLabel;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppDBText35: TppDBText;
    ppDBText44: TppDBText;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel38: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel39: TppLabel;
    ppDBText47: TppDBText;
    ppLabel40: TppLabel;
    ppDBText48: TppDBText;
    ppLabel41: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel43: TppLabel;
    ppDBText13: TppDBText;
    ppDBText31: TppDBText;
    ppDBText53: TppDBText;
    ppLabel44: TppLabel;
    ppDBText54: TppDBText;
    ppLabel45: TppLabel;
    ppDBText55: TppDBText;
    ppLabel46: TppLabel;
    ppDBText56: TppDBText;
    ppLabel47: TppLabel;
    ppDBText57: TppDBText;
    ppLabel48: TppLabel;
    ppDBText58: TppDBText;
    ppLabel49: TppLabel;
    ppDBText59: TppDBText;
    ppLabel50: TppLabel;
    ppDBText60: TppDBText;
    ppLabel51: TppLabel;
    ppDBText61: TppDBText;
    ppLabel52: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel53: TppLabel;
    ppDBText14: TppDBText;
    ppLabel42: TppLabel;
    ppDBText64: TppDBText;
    cdsItensQUANTIDADE: TFMTBCDField;
    cdsItensVALOR_PAGO: TFMTBCDField;
    ppOS2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppShape8: TppShape;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppLabel60: TppLabel;
    ppDBText71: TppDBText;
    ppLabel61: TppLabel;
    ppDBText72: TppDBText;
    ppLabel62: TppLabel;
    ppDBText73: TppDBText;
    ppLabel63: TppLabel;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBImage2: TppDBImage;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLine7: TppLine;
    ppLabel69: TppLabel;
    ppDBText86: TppDBText;
    ppLabel70: TppLabel;
    ppDBText87: TppDBText;
    ppLabel71: TppLabel;
    ppDBText88: TppDBText;
    ppLabel72: TppLabel;
    ppDBText89: TppDBText;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBText90: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText91: TppDBText;
    ppLabel77: TppLabel;
    ppDBText92: TppDBText;
    ppLabel78: TppLabel;
    ppDBText93: TppDBText;
    ppLabel79: TppLabel;
    ppDBText94: TppDBText;
    ppLabel80: TppLabel;
    ppDBText95: TppDBText;
    ppLine9: TppLine;
    ppLabel81: TppLabel;
    ppDBText96: TppDBText;
    ppLine10: TppLine;
    ppDBText97: TppDBText;
    ppLabel82: TppLabel;
    ppDBText98: TppDBText;
    ppLabel83: TppLabel;
    ppDBText99: TppDBText;
    ppLabel84: TppLabel;
    ppDBText100: TppDBText;
    ppLabel85: TppLabel;
    ppDBText101: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBCalc2: TppDBCalc;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppShape9: TppShape;
    ppLabel86: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppShape10: TppShape;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLabel95: TppLabel;
    ppDBText110: TppDBText;
    ppLabel96: TppLabel;
    ppDBText111: TppDBText;
    ppLabel97: TppLabel;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppLabel98: TppLabel;
    ppDBText119: TppDBText;
    ppLabel99: TppLabel;
    ppDBText120: TppDBText;
    ppLabel100: TppLabel;
    ppDBText121: TppDBText;
    ppLabel101: TppLabel;
    ppDBText122: TppDBText;
    ppLabel102: TppLabel;
    ppDBText123: TppDBText;
    ppLabel103: TppLabel;
    ppDBText124: TppDBText;
    ppLabel104: TppLabel;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppLabel105: TppLabel;
    ppDBText127: TppDBText;
    ppLabel106: TppLabel;
    ppDBText128: TppDBText;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel107: TppLabel;
    ppDBText129: TppDBText;
    ppLine15: TppLine;
    ppLabel108: TppLabel;
    ppLine16: TppLine;
    ppOSF: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppLabel115: TppLabel;
    ppDBText136: TppDBText;
    ppLabel116: TppLabel;
    ppDBText137: TppDBText;
    ppLabel117: TppLabel;
    ppDBText138: TppDBText;
    ppLabel118: TppLabel;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBImage3: TppDBImage;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLine17: TppLine;
    ppLabel124: TppLabel;
    ppDBText151: TppDBText;
    ppLabel125: TppLabel;
    ppDBText152: TppDBText;
    ppLabel126: TppLabel;
    ppDBText153: TppDBText;
    ppLabel127: TppLabel;
    ppDBText154: TppDBText;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppDBText155: TppDBText;
    ppDBMemo5: TppDBMemo;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppDBText156: TppDBText;
    ppLabel132: TppLabel;
    ppDBText157: TppDBText;
    ppLabel133: TppLabel;
    ppDBText158: TppDBText;
    ppLabel134: TppLabel;
    ppDBText159: TppDBText;
    ppLabel135: TppLabel;
    ppDBText160: TppDBText;
    ppLine18: TppLine;
    ppLabel136: TppLabel;
    ppDBText161: TppDBText;
    ppLine19: TppLine;
    ppDBText162: TppDBText;
    ppLabel137: TppLabel;
    ppDBText163: TppDBText;
    ppLabel138: TppLabel;
    ppDBText164: TppDBText;
    ppLabel139: TppLabel;
    ppDBText165: TppDBText;
    ppLabel140: TppLabel;
    ppDBText166: TppDBText;
    ppLabel141: TppLabel;
    ppDBText167: TppDBText;
    ppLine20: TppLine;
    ppLabel142: TppLabel;
    ppLine21: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBCalc3: TppDBCalc;
    ppDBText168: TppDBText;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppShape15: TppShape;
    ppLabel143: TppLabel;
    ppDBMemo6: TppDBMemo;
    ppShape16: TppShape;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppDBText174: TppDBText;
    ppDBText175: TppDBText;
    ppLabel152: TppLabel;
    ppDBText176: TppDBText;
    ppLabel153: TppLabel;
    ppDBText177: TppDBText;
    ppLabel154: TppLabel;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText192: TppDBText;
    raCodeModule3: TraCodeModule;
    ppParameterList3: TppParameterList;
    cdsAtend: TClientDataSet;
    dsrAtend: TDataSource;
    cdsAtendCODMOVIMENTO: TIntegerField;
    cdsAtendDATA: TSQLTimeStampField;
    cdsAtendUSUARIO: TStringField;
    cdsAtendCOMENTARIOS: TStringField;
    cdsItensDESCONTO_ADM: TFloatField;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintOS(codOS: longint);
    procedure PrintOS2(codOS: longint);
    procedure PrintOSF(codOS: longint);
  end;

var
  dmoOS: TdmoOS;

implementation

uses principal, os;

{$R *.dfm}

procedure TdmoOS.PrintOS(codOS: longint);
begin

   { Perfil - Empresa cabeçalho }
   if not formPrincipal.cdsPerfil.Active then
     formPrincipal.cdsPerfil.Open;

   { corpo do orçamento }
   cdsOSCorpo.Close;
   cdsOSCorpo.FetchParams;
   cdsOSCorpo.Params[0].AsInteger := codOS;
   cdsOSCorpo.Open;

   { itens do orçamento }
   cdsOSItens.Close;
   cdsOSItens.Params.ParamByName('CODMOVIMENTO').AsInteger := codOS;
   cdsOSItens.Open;
   cdsOSItens.RemoteServer.Close;

   ppOS.EmailSettings.Recipients.Add(
     cdsOSCorpo.FieldByName('CLI_EMAIL').AsString);
   ppOS.EmailSettings.Subject := 'Ordem de Serviço';
   ppOS.EmailSettings.Body.Add(
     'Para:');
   ppOS.EmailSettings.Body.Add(
     cdsOSCorpo.FieldByName('CLI_NOME').AsString);
   ppOS.EmailSettings.Body.Add(
     '');
   ppOS.EmailSettings.Body.Add(
     'Segue anexo a ordem de serviço.');
   ppOS.EmailSettings.Body.Add(
     'Estamos a disposição para fornecer maiores informações.');
   ppOS.EmailSettings.Body.Add(
     '');
   ppOS.EmailSettings.Body.Add(
     'atenciosamente,');
   ppOS.EmailSettings.Body.Add(
     '');
   ppOS.EmailSettings.Body.Add(
     formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
   ppOS.EmailSettings.Body.Add(
     formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
   ppOS.EmailSettings.Body.Add('Fone ' +
     formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
   ppOS.EmailSettings.Body.Add(
     '');
   ppOS.EmailSettings.Body.Add(
     '');
   ppOS.EmailSettings.Body.Add(
     '---------------------------------------------------');
   ppOS.EmailSettings.Body.Add(
     'Caso não possua o Adobe Acrobat Reader para abrir o');
   ppOS.EmailSettings.Body.Add(
     'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
   ppOS.EmailSettings.Body.Add(
     '---------------------------------------------------');

   ppOS.Print;

end;

procedure TdmoOS.PrintOS2(codOS: longint);
begin

   { Perfil - Empresa cabeçalho }
   if not formPrincipal.cdsPerfil.Active then
     formPrincipal.cdsPerfil.Open;

   { corpo do orçamento }
   cdsOSCorpo.Close;
   cdsOSCorpo.FetchParams;
   cdsOSCorpo.Params[0].AsInteger := codOS;
   cdsOSCorpo.Open;

   { itens do orçamento }
   cdsOSItens.Close;
   cdsOSItens.Params.ParamByName('CODMOVIMENTO').AsInteger := codOS;
   cdsOSItens.Open;
   cdsOSItens.RemoteServer.Close;

   ppOS2.EmailSettings.Recipients.Add(
     cdsOSCorpo.FieldByName('CLI_EMAIL').AsString);
   ppOS2.EmailSettings.Subject := 'Ordem de Serviço';
   ppOS2.EmailSettings.Body.Add(
     'Para:');
   ppOS2.EmailSettings.Body.Add(
     cdsOSCorpo.FieldByName('CLI_NOME').AsString);
   ppOS2.EmailSettings.Body.Add(
     '');
   ppOS2.EmailSettings.Body.Add(
     'Segue anexo a ordem de serviço.');
   ppOS2.EmailSettings.Body.Add(
     'Estamos a disposição para fornecer maiores informações.');
   ppOS2.EmailSettings.Body.Add(
     '');
   ppOS2.EmailSettings.Body.Add(
     'atenciosamente,');
   ppOS2.EmailSettings.Body.Add(
     '');
   ppOS2.EmailSettings.Body.Add(
     formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
   ppOS2.EmailSettings.Body.Add(
     formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
   ppOS2.EmailSettings.Body.Add('Fone ' +
     formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
   ppOS2.EmailSettings.Body.Add(
     '');
   ppOS2.EmailSettings.Body.Add(
     '');
   ppOS2.EmailSettings.Body.Add(
     '---------------------------------------------------');
   ppOS2.EmailSettings.Body.Add(
     'Caso não possua o Adobe Acrobat Reader para abrir o');
   ppOS2.EmailSettings.Body.Add(
     'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
   ppOS2.EmailSettings.Body.Add(
     '---------------------------------------------------');

   ppOS2.Print;

end;

procedure TdmoOS.PrintOSF(codOS: longint);
begin

   { Perfil - Empresa cabeçalho }
   if not formPrincipal.cdsPerfil.Active then
     formPrincipal.cdsPerfil.Open;

   { corpo do orçamento }
   cdsOSCorpo.Close;
   cdsOSCorpo.FetchParams;
   cdsOSCorpo.Params[0].AsInteger := codOS;
   cdsOSCorpo.Open;

   { itens do orçamento }
   cdsOSItens.Close;
   cdsOSItens.Params.ParamByName('CODMOVIMENTO').AsInteger := codOS;
   cdsOSItens.Open;
   cdsOSItens.RemoteServer.Close;

   ppOSF.EmailSettings.Recipients.Add(
     cdsOSCorpo.FieldByName('CLI_EMAIL').AsString);
   ppOSF.EmailSettings.Subject := 'Ordem de Serviço';
   ppOSF.EmailSettings.Body.Add(
     'Para:');
   ppOSF.EmailSettings.Body.Add(
     cdsOSCorpo.FieldByName('CLI_NOME').AsString);
   ppOSF.EmailSettings.Body.Add(
     '');
   ppOSF.EmailSettings.Body.Add(
     'Segue anexo a ordem de serviço.');
   ppOSF.EmailSettings.Body.Add(
     'Estamos a disposição para fornecer maiores informações.');
   ppOSF.EmailSettings.Body.Add(
     '');
   ppOSF.EmailSettings.Body.Add(
     'atenciosamente,');
   ppOSF.EmailSettings.Body.Add(
     '');
   ppOSF.EmailSettings.Body.Add(
     formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString);
   ppOSF.EmailSettings.Body.Add(
     formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
   ppOSF.EmailSettings.Body.Add('Fone ' +
     formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString);
   ppOSF.EmailSettings.Body.Add(
     '');
   ppOSF.EmailSettings.Body.Add(
     '');
   ppOSF.EmailSettings.Body.Add(
     '---------------------------------------------------');
   ppOSF.EmailSettings.Body.Add(
     'Caso não possua o Adobe Acrobat Reader para abrir o');
   ppOSF.EmailSettings.Body.Add(
     'orçamento, pode baixá-lo em www.adobe.com/go/BOZPY');
   ppOSF.EmailSettings.Body.Add(
     '---------------------------------------------------');

   ppOSF.Print;

end;

end.
