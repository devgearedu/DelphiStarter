unit utest2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Vcl.DBCtrls, Vcl.ExtCtrls,
  Data.Bind.Grid, Data.Bind.DBScope, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabsSheet1: TTabSheet;
    메모장: TTabSheet;
    이미지: TTabSheet;
    TabControl1: TTabControl;
    StringGrid1: TStringGrid;
    ClientDataSet1: TClientDataSet;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Image1: TImage;
    LinkControlToField1: TLinkControlToField;
    DBImage1: TDBImage;
    LinkPropertyToFieldPicture: TLinkPropertyToField;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
