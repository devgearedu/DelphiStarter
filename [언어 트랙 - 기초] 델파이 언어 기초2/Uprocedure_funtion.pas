unit Uprocedure_funtion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
function Add(x,y:integer):integer;
function Sub(x,y:integer):integer;
implementation
function Add(x,y:integer):integer;
begin
  result := x + y;
end;
function Sub(x,y:integer):integer;
begin
  result := x- y;
end;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   x,y:integer;
begin
   x := Strtoint(Edit1.text);
   y := Strtoint(Edit2.text);

   Label2.Caption := IntTostr(Add(x,y));
end;

procedure TForm1.Edit2Change(Sender: TObject);
var
   x,y:integer;
begin
      x := Strtoint(Edit1.text);
   y := Strtoint(Edit2.text);

   Label2.Caption := IntTostr(Sub(x,y));
end;

end.
