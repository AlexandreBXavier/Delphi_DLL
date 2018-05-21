unit Unit1;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
     Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
     TForm1 = class(TForm)
          edtParam1: TEdit;
          edtParam2: TEdit;
          Label1: TLabel;
          Button1: TButton;
          Label2: TLabel;
    Button2: TButton;
          procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form1: TForm1;

implementation

function SampleCalc(vParam1, vParam2: Double): Double; external 'LibTEST.dll';
function SampleText: String; external 'LibTEST.dll';

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
     ResultCalc: Double;
begin
     ResultCalc := SampleCalc(StrToFloat(edtParam1.Text), StrToFloat(edtParam2.Text));
     //
     ShowMessage(Format('%8.2m', [ResultCalc]));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
     ResultText: String;
begin
     ResultText := SampleText;
     //
     ShowMessage(ResultText);
end;

end.
