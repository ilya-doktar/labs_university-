program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainFormOfLab6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainFormOfLab6, MainFormOfLab6);
  Application.Run;
end.
