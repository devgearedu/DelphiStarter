program Project_ch12_1;

uses
  Vcl.Forms,
  Unit_ch12_1 in 'Unit_ch12_1.pas' {Form88};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm1, Form1);
  pplication.Run;
end.
