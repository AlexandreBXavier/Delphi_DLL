unit DataLocal;

interface

uses
  System.SysUtils, System.Classes;

type
  TDMLocal = class(TDataModule)
    Function Local: String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLocal: TDMLocal;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

function TDMLocal.Local: String;
begin
     Result := 'Agora';
end;

end.
