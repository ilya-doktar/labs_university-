unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    EditLine: TEdit;
    LabelLine: TLabel;
    EditColumn: TEdit;
    LabelColumn: TLabel;
    ButtonFillMatrix: TButton;
    ButtonCalculationResult: TButton;
    StringGridInitialMatrix: TStringGrid;
    StringGridReceivedMassiv: TStringGrid;
    CheckBoxGenerateMatrix: TCheckBox;
    CheckBoxManualFilling: TCheckBox;
    procedure ButtonCalculationResultClick(Sender: TObject);
    procedure ButtonFillMatrixClick(Sender: TObject);
    procedure FormCreate(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const MaxSize=20;

var
  Form1: TForm1;
  Line,Column:integer;

implementation

{$R *.dfm}


procedure TForm1.ButtonCalculationResultClick(Sender: TObject);
var Matrix:array[1..MaxSize,1..MaxSize] of integer;
    Massiv:array[1..MaxSize] of integer;
    i,j,Sum:integer;
begin
  if CheckBoxManualFilling.Checked then
    begin
      for i:=1 to Line do
        for j:=1 to Column do
          Matrix[i,j]:=StrToInt(StringGridInitialMatrix.Cells[j,i]);
    end;
  for i:=1 to Line do
    begin
      Sum:=0;
      for j:=1 to Column do
        Sum:=Sum+Matrix[i,j];
      if Sum=0 then
        Massiv[i]:=0
      else
        Massiv[i]:=1;
    end;
  for i:=1 to Line do
    StringGridReceivedMassiv.Cells[0,i]:=IntToStr(Massiv[i]);
end;

procedure TForm1.ButtonFillMatrixClick(Sender: TObject);
var i,j:integer;
begin
  Line:=StrToInt(EditLine.Text);
  Column:=StrToInt(EditColumn.Text);
  StringGridInitialMatrix.RowCount:=Line+1;
  StringGridInitialMatrix.ColCount:=Column+1;
  StringGridReceivedMassiv.RowCount:=Line+1;
  StringGridInitialMatrix.Cells[0,0]:='Матрица';
  StringGridReceivedMassiv.Cells[0,0]:='Массив';
  for i:=1 to Line do
    StringGridInitialMatrix.Cells[0,i]:=IntToStr(i);
  for i:=1 to Column do
    StringGridInitialMatrix.Cells[i,0]:=IntToStr(i);
  if CheckBoxGenerateMatrix.Checked then
    begin
      for i:=1 to Line do
        for j:=1 to Column do
          StringGridInitialMatrix.Cells[i,j]:=IntToStr(random(2));
    end
end;

procedure TForm1.FormCreate(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8]) then
    Key:=#0;
end;

end.
