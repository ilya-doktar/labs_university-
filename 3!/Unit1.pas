unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    mmo1: TMemo;
    btn1: TButton;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm;
const
  Xmin : extended = 0.1;
  Xmax : extended = 1;
  e : extended =  16;
implementation
{$R *.dfm}

 procedure TForm1.FormCreate (Sender: TObject);
 begin
  lbl1.Caption := 'Xn = ' + FloatToStr(Xmin);
  lbl2.Caption := 'Xk = ' + FloatToStr(Xmax);
  edt1.Text := '';
  lbl3.Caption := 'e = ' + FloatToStr(e);
end;




function getStep(Xn, Xk: extended; m: integer): Extended;
var step: Extended;
begin
  step := (Xk - Xn) / m;
  result := step;
end;

function factorial(n: integer):Integer;
begin
  result := n;
  while  n > 0 do
  begin
    result := result * n;
    Dec(n);      //декремент
  end;
end;

function calculateY(x: Extended): Extended;
begin
  result := Sin(x);
end;

function calculateS(x: extended; n: integer): Extended;
begin
    result := (Exp(n*ln(-1)) * (Exp((2*n+1)*ln(x))/(factorial(2*n+1))));
  
end;

function getString(Xn, Y, S: extended):String;
begin
  result := '|  ' + FloatToStr(Xn) + '|' + FloatToStr(Y) + '|' + FloatToStr(S) + '|';
end;


procedure run();
var m, counter: integer;
var resultY, resultS, p, y, Sum: extended;
var Xn:extended;
var Xk:extended;
begin
  Xn:= Xmin;
  Xk:= Xmax;
  m:= StrToInt(TForm1.edt1.Text);
  drawTableHeader();
  while Xn <= Xk+getStep(Xmin, Xmax, m)/2 do
  begin
    Sum := 1;
    counter:=1;
    while counter <= m do
      begin;
         Sum := Sum + calculateS(Xn, counter);
         Inc(counter);
      end;
    TForm1.mmo1.Lines.Add(getString(Xn, calculateY(Xn), Sum));
    Xn := Xn + getStep(Xmin, Xmax, m);
  end;
end;



procedure TForm1.btn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  run();
end;

end.
