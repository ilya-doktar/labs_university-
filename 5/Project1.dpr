program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainFormOfLab5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainFormOfLab5, MainFormOfLab5);
  Application.Run;
end.
