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

  // 워크북 추가
   Excel.WorkBooks.Add;
   WorkBook := Excel.ActiveWorkBook;

  // 워크시트 추가
   Workbook.sheets.add;

  try
    // 작업할  워크시트 선택
    WorkSheet := WorkBook.WorkSheets[1];
     for I := 0 to StringGrid1.RowCount do
     begin
       WorkSheet.Cells[i+1,1].value := StringGrid1.Cells[0,i];
       WorkSheet.Cells[i+1,2].value := StringGrid1.Cells[1,i];
       WorkSheet.Cells[i+1,3].value := StringGrid1.Cells[2,i];
     end;
   //  WorkBook.SaveAs('d:\sample.xlsx');

  finally
    // 워크북 닫기
    WorkBook.close;
    WorkBook:=unAssigned;
    WorkSheet:=unAssigned;
    // 엑셀 종료
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
    Cells[0,0] := '제목1';
    Cells[1,0] := '제목2';
    Cells[2,0] := '제목3';
    for i := 1 to RowCount do
    begin
        Cells[0,i] := '컬럼1' + inttostr(i);
        Cells[1,i] := '컬럼2' + inttostr(i);
        Cells[2,i] := '컬럼3' + inttostr(i);
    end;
  end;
end;

end.
