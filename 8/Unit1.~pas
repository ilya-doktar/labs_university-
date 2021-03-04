unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Grids,
  jpeg;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Series1: TLineSeries;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    img1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses math;
procedure TForm1.Button1Click(Sender: TObject);
function t(x,y,z:double):double;
var a,b,c:double;
begin
a := 2*cos(x-(3.14/6));
b := 0.5+ (sin(y)*sin(y));
c := 1+((exp(2*ln(z)))/3-((exp(2*ln(z)))/5));
t:= (a/b)*c;
end;
var x,y,z,xn,xk,h:double;
    k:integer;
begin
with StringGrid1 do
 begin
  fixedrows:=1;
  fixedcols:=0;
  colcount:=2;
  rowcount:=2;
  cells[0,0]:='x';
  cells[1,0]:='t';
 end;
y:=strtofloat(Edit1.Text);
z:=strtofloat(Edit2.Text);
xn:=strtofloat(Edit3.Text);
xk:=strtofloat(Edit4.Text);
h:=strtofloat(Edit5.Text);
k:=1;
x:=xn;
while x<xk+h/2 do
 begin
  StringGrid1.RowCount:=k+1;
  StringGrid1.Cells[0,k]:=formatfloat('0.00',x);
  StringGrid1.Cells[1,k]:=formatfloat('0.000',t(x,y,z));
  series1.AddXY(x,t(x,y,z),'',clRed);
  x:=x+h;
  k:=k+1;
 end;
end;

end.
