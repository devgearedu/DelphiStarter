program P_procedure_function;

uses
  Vcl.Forms,
  Uprocedure_funtion in 'Uprocedure_funtion.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Blue');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
