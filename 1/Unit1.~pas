unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    Label4: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit1.Text := '3,4';     // Начальное значение Х
  Edit2.Text := '0,74';   // Начальное значение Y
  Edit3.Text := '19,43'; // Начальное значение Z
  Memo1.Clear;           //Очистка окна редактора Memo1
// Вывод строки в многострочный редактор Memol
  Memo1.Lines.Add('Лa6.раб.№1. Пешкур А А.');
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  x, y, z : real;
  a, b, c, t : real;
begin
  x := StrToFloat(Edit1.Text);   // Считывается значение x
// Вывод x в окно Memo1
  Memo1.Lines.Add('x = ' + Edit1.Text); 
  y := StrToFloat(Edit2.Text);   // Считывается значение y
// Вывод y в окно Memol
  Memo1.Lines.Add('y =' + Edit2.Text); 
  z := StrToFloat(Edit3.Text);  // Считывается значение z
// Вывод z в окно Memo1
  Memo1.Lines.Add('z = ' + Edit3.Text);
// Вычисляем арифметическое выражение
  a := 2*cos(x-(3.14/6));
b := 0.5+ (sin(y)*sin(y));
c := 1+((exp(2*ln(z)))/3-((exp(2*ln(z)))/5));
t:= (a/b)*c;
//Выводим результат в окно Memo1
  Memo1.Lines.Add('Результат u:= ' + FloatToStrF(t, ffFixed, 8, 3));
end;


end.
