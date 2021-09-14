program Form_BasicControl;

uses
  Vcl.Forms,
  utest1 in 'utest1.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  utest2 in '..\[IDE 트랙 - 향상]일반적인 화면 만들기\utest2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Silver');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
