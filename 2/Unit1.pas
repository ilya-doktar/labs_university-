unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
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

uses Math;
 
procedure TForm1.Button2Click(Sender: TObject);
begin
Memo1.Clear;
end;
 
procedure TForm1.Button1Click(Sender: TObject);
VAR
a,x,y,f :Double;
begin
 
  try
    x := StrToFloat(Edit1.Text);
    y := StrToFloat(Edit2.Text);
  except
    Exit;
  end;
 
  case RadioGroup1.ItemIndex of
    -1: exit;
     0: f := sinh(x); 
     1: f := x*x;
     2: f := exp(x);
  end;

  try
    if (x*y > 0) then a := SQR(f + y) - SQRT(f * y) else
    if (x*y < 0) then a := SQR(f + y) - SQRT(abs(f * y)) else
    a := SQR(f + y) + 1;
  except
    exit;
  end;
 
  Memo1.Lines.Add('A=' + FloatToStr(a));

end;
end.

