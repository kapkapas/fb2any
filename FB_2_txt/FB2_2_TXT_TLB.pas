unit FB2_2_TXT_TLB;

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

// PASTLWTR : $Revision:   1.130  $
// File generated on 19.09.2004 17:08:23 from Type Library described below.

// ************************************************************************  //
// Type Lib: H:\Work\FB_2_any\FB_2_txt\fb_2_txt.tlb (1)
// LIBID: {96CD3642-F5A7-47B0-8AE3-FA044B5CF81A}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (H:\WINDOWS\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (H:\WINDOWS\system32\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}

interface

uses ActiveX, Classes, Graphics, StdVCL, Variants, Windows;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  FB2_2_TXTMajorVersion = 1;
  FB2_2_TXTMinorVersion = 0;

  LIBID_FB2_2_TXT: TGUID = '{96CD3642-F5A7-47B0-8AE3-FA044B5CF81A}';

  IID_IFBEExportPlugin: TGUID = '{1AFAAB7F-6F66-4EF6-B199-16FA49CC5B52}';
  CLASS_FB2_to_TXT: TGUID = '{4240FA7F-FC53-4C4A-A892-1B9F020BB2EE}';
  IID_IFB2TXTExport: TGUID = '{38206DE7-2530-4967-B5E3-FF54D478A978}';
  CLASS_FB2TXTExport: TGUID = '{D8C4199B-46F4-401A-8DF7-86106356CDB6}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IFBEExportPlugin = interface;
  IFB2TXTExport = interface;
  IFB2TXTExportDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  FB2_to_TXT = IFBEExportPlugin;
  FB2TXTExport = IFB2TXTExport;


// *********************************************************************//
// Interface: IFBEExportPlugin
// Flags:     (256) OleAutomation
// GUID:      {1AFAAB7F-6F66-4EF6-B199-16FA49CC5B52}
// *********************************************************************//
  IFBEExportPlugin = interface(IUnknown)
    ['{1AFAAB7F-6F66-4EF6-B199-16FA49CC5B52}']
    function  Export(hWnd: Integer; const filename: WideString; const document: IDispatch): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IFB2TXTExport
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {38206DE7-2530-4967-B5E3-FF54D478A978}
// *********************************************************************//
  IFB2TXTExport = interface(IDispatch)
    ['{38206DE7-2530-4967-B5E3-FF54D478A978}']
    function  Get_Hyphenator: IDispatch; safecall;
    procedure Set_Hyphenator(const Value: IDispatch); safecall;
    function  Get_XSL: IDispatch; safecall;
    procedure Set_XSL(const Value: IDispatch); safecall;
    function  Get_SkipDescr: WordBool; safecall;
    procedure Set_SkipDescr(Value: WordBool); safecall;
    function  Get_FixedWidth: Integer; safecall;
    procedure Set_FixedWidth(Value: Integer); safecall;
    function  Get_ParaIndent: OleVariant; safecall;
    procedure Set_ParaIndent(Value: OleVariant); safecall;
    function  Get_Encoding: Integer; safecall;
    procedure Set_Encoding(Value: Integer); safecall;
    function  Get_LineBr: OleVariant; safecall;
    procedure Set_LineBr(Value: OleVariant); safecall;
    procedure Convert(const document: IDispatch; FileName: OleVariant); safecall;
    procedure ConvertInteractive(hWnd: Integer; filename: OleVariant; const document: IDispatch); safecall;
    property Hyphenator: IDispatch read Get_Hyphenator write Set_Hyphenator;
    property XSL: IDispatch read Get_XSL write Set_XSL;
    property SkipDescr: WordBool read Get_SkipDescr write Set_SkipDescr;
    property FixedWidth: Integer read Get_FixedWidth write Set_FixedWidth;
    property ParaIndent: OleVariant read Get_ParaIndent write Set_ParaIndent;
    property Encoding: Integer read Get_Encoding write Set_Encoding;
    property LineBr: OleVariant read Get_LineBr write Set_LineBr;
  end;

// *********************************************************************//
// DispIntf:  IFB2TXTExportDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {38206DE7-2530-4967-B5E3-FF54D478A978}
// *********************************************************************//
  IFB2TXTExportDisp = dispinterface
    ['{38206DE7-2530-4967-B5E3-FF54D478A978}']
    property Hyphenator: IDispatch dispid 2;
    property XSL: IDispatch dispid 3;
    property SkipDescr: WordBool dispid 4;
    property FixedWidth: Integer dispid 5;
    property ParaIndent: OleVariant dispid 6;
    property Encoding: Integer dispid 7;
    property LineBr: OleVariant dispid 8;
    procedure Convert(const document: IDispatch; FileName: OleVariant); dispid 9;
    procedure ConvertInteractive(hWnd: Integer; filename: OleVariant; const document: IDispatch); dispid 10;
  end;

// *********************************************************************//
// The Class CoFB2_to_TXT provides a Create and CreateRemote method to          
// create instances of the default interface IFBEExportPlugin exposed by              
// the CoClass FB2_to_TXT. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFB2_to_TXT = class
    class function Create: IFBEExportPlugin;
    class function CreateRemote(const MachineName: string): IFBEExportPlugin;
  end;

// *********************************************************************//
// The Class CoFB2TXTExport provides a Create and CreateRemote method to          
// create instances of the default interface IFB2TXTExport exposed by              
// the CoClass FB2TXTExport. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFB2TXTExport = class
    class function Create: IFB2TXTExport;
    class function CreateRemote(const MachineName: string): IFB2TXTExport;
  end;

implementation

uses ComObj;

class function CoFB2_to_TXT.Create: IFBEExportPlugin;
begin
  Result := CreateComObject(CLASS_FB2_to_TXT) as IFBEExportPlugin;
end;

class function CoFB2_to_TXT.CreateRemote(const MachineName: string): IFBEExportPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FB2_to_TXT) as IFBEExportPlugin;
end;

class function CoFB2TXTExport.Create: IFB2TXTExport;
begin
  Result := CreateComObject(CLASS_FB2TXTExport) as IFB2TXTExport;
end;

class function CoFB2TXTExport.CreateRemote(const MachineName: string): IFB2TXTExport;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FB2TXTExport) as IFB2TXTExport;
end;

end.
