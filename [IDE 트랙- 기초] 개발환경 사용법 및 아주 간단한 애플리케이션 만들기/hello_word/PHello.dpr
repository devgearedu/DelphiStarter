program PHello;

uses
  System.StartUpCopy,
  FMX.Forms,
  UHello in 'UHello.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
