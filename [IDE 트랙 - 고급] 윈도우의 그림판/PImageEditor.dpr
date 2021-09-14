program PImageEditor;

uses
  Forms,
  UImageEditor in 'UImageEditor.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Coral');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
