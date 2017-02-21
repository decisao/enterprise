unit TIMO_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 8291 $
// File generated on 22/01/2012 21:35:12 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Taligent\Documents\RAD Studio\Projects\enterprise\SERVIDOR\CLIENTES\TIMO\TIMO.tlb (1)
// LIBID: {8FF11238-2550-4E46-B7B2-440000000000}
// LCID: 0
// Helpfile: 
// HelpString: HBOX Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\SysWOW64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  TIMOMajorVersion = 1;
  TIMOMinorVersion = 0;

  LIBID_TIMO: TGUID = '{8FF11238-2550-4E46-B7B2-440000000000}';

  IID_IServerModule: TGUID = '{F2C42F65-316E-4E77-8EF1-440000001100}';
  CLASS_ServerModule: TGUID = '{B9C5880E-91F6-485F-82B4-440000002200}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IServerModule = interface;
  IServerModuleDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ServerModule = IServerModule;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IServerModule
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F2C42F65-316E-4E77-8EF1-440000001100}
// *********************************************************************//
  IServerModule = interface(IAppServer)
    ['{F2C42F65-316E-4E77-8EF1-440000001100}']
    function GetID(var tabela: OleVariant): OleVariant; safecall;
    function GetServerTime: OleVariant; safecall;
    function GetServerPath: OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IServerModuleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F2C42F65-316E-4E77-8EF1-440000001100}
// *********************************************************************//
  IServerModuleDisp = dispinterface
    ['{F2C42F65-316E-4E77-8EF1-440000001100}']
    function GetID(var tabela: OleVariant): OleVariant; dispid 301;
    function GetServerTime: OleVariant; dispid 302;
    function GetServerPath: OleVariant; dispid 303;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoServerModule provides a Create and CreateRemote method to          
// create instances of the default interface IServerModule exposed by              
// the CoClass ServerModule. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerModule = class
    class function Create: IServerModule;
    class function CreateRemote(const MachineName: string): IServerModule;
  end;

implementation

uses ComObj;

class function CoServerModule.Create: IServerModule;
begin
  Result := CreateComObject(CLASS_ServerModule) as IServerModule;
end;

class function CoServerModule.CreateRemote(const MachineName: string): IServerModule;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerModule) as IServerModule;
end;

end.
