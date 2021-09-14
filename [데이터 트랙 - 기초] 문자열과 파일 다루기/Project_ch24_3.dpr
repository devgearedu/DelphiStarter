program Project_ch24_3;

uses
  Vcl.Forms,
  Unit_ch24_3 in 'Unit_ch24_3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm1, Form1);
  pplication.Run;
end.
