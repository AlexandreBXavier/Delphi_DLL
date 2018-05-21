library LibTEST;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  DataLocal in 'DataLocal.pas' {DMLocal: TDataModule};

{$R *.res}

function SampleCalc(vParam1, vParam2: Double): Double;
begin
     try
          Result := (vParam1 * vParam2);
     except
          Result := 0;
     end;
end;

function SampleText: String;
var
     DMLocal : TDMLocal;
begin
     try
          DMLocal := TDMLocal.Create(Nil);
          //
          Result := DMLocal.Local;
          //
          DMLocal.Free;
     except
          Result := '';
     end;
end;

exports SampleCalc, SampleText;

begin

end.
