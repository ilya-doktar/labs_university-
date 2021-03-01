unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TMainFormOfLab5 = class(TForm)
    LabelLine: TLabel;
    FieldOfText: TComboBox;
    BitBtnClose: TBitBtn;
    FieldOfPrintResult: TMemo;
    ButtonClearFieldOfPrintResult: TButton;
    procedure RestrictionOfInput(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ButtonClearFieldOfPrintResultClick(Sender: TObject);
    procedure FieldOfTextExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainFormOfLab5: TMainFormOfLab5;

implementation

{$R *.dfm}

procedure TMainFormOfLab5.FieldOfTextExit(Sender: TObject);
var i:integer;
    ChosenNumLine,Temp:string;
begin
  ChosenNumLine:=FieldofText.Text;
  FieldOfPrintResult.Clear;
  FieldOfPrintResult.Lines.Add('Полученные комбинации:');
  Temp:='';
  for i:=1 to Length(ChosenNumLine) do
  begin
    if ChosenNumLine[i]<>' ' then
      Temp:=Temp+ChosenNumLine[i];
    if (ChosenNumLine[i]=' ') or (i=Length(ChosenNumLine)) then
    begin
      if (Temp<>'') and (not odd(Length(Temp))) then
        FieldOfPrintResult.Lines.Add(Temp);
        Temp:='';
    end;
  end;
end;

procedure TMainFormOfLab5.FormCreate(Sender: TObject);
begin
  FieldOfPrintResult.Clear;
end;

procedure TMainFormOfLab5.RestrictionOfInput(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      FieldOfText.Items.Add(FieldOfText.Text);
      FieldOfText.Text:='';
    end
  else
    if not (Key in ['0','1',#8,#32]) then
      Key:=#0;
end;

procedure TMainFormOfLab5.ButtonClearFieldOfPrintResultClick(
  Sender: TObject);
begin
  FieldOfPrintResult.Clear;
end;

end.
