unit Ustringgrid_excel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  ComObj;
var
  Excel :olevariant;
  WorkBook :olevariant;
  workSheet :olevariant;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i:integer;
begin
 Excel := CreateOleObject('Excel.Application');
    Excel.Visible := True;

  // ��ũ�� �߰�
   Excel.WorkBooks.Add;
   WorkBook := Excel.ActiveWorkBook;

  // ��ũ��Ʈ �߰�
   Workbook.sheets.add;

  try
    // �۾���  ��ũ��Ʈ ����
    WorkSheet := WorkBook.WorkSheets[1];
     for I := 0 to StringGrid1.RowCount do
     begin
       WorkSheet.Cells[i+1,1].value := StringGrid1.Cells[0,i];
       WorkSheet.Cells[i+1,2].value := StringGrid1.Cells[1,i];
       WorkSheet.Cells[i+1,3].value := StringGrid1.Cells[2,i];
     end;
   //  WorkBook.SaveAs('d:\sample.xlsx');

  finally
    // ��ũ�� �ݱ�
    WorkBook.close;
    WorkBook:=unAssigned;
    WorkSheet:=unAssigned;
    // ���� ����
    Excel.Quit;
    Excel:=unAssigned;
  end ;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i,j:integer;
begin
  StringGrid1.colcount := 3;
  StringGrid1.rowCount := 11;
  with StringGrid1 do
  begin
    Cells[0,0] := '����1';
    Cells[1,0] := '����2';
    Cells[2,0] := '����3';
    for i := 1 to RowCount do
    begin
        Cells[0,i] := '�÷�1' + inttostr(i);
        Cells[1,i] := '�÷�2' + inttostr(i);
        Cells[2,i] := '�÷�3' + inttostr(i);
    end;
  end;
end;

end.
