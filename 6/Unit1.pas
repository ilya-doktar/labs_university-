unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons;

type
  TMainFormOfLab6 = class(TForm)
    EditSerialNumber: TEdit;
    EditFIO: TEdit;
    EditHomeAdress: TEdit;
    EditDateOfStatement: TEdit;
    LabelSerialNumber: TLabel;
    LabelFIO: TLabel;
    LabelHomeAdress: TLabel;
    LabelDateOfStatement: TLabel;
    SgData: TStringGrid;
    BtnAddRecord: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    BtnSave: TButton;
    BtnLoad: TButton;
    BtnDelRepeatedRecords: TButton;
    BtnExport: TButton;
    BtnClear: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnAddRecordClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnLoadClick(Sender: TObject);
    procedure BtnDelRepeatedRecordsClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TPurchaseGoods=record
    SerialNumber:integer;
    FIO:string[50];
    HomeAdress:string[50];
    DateOfStatement:string[10];
  end;

  TPurchaseFile = File of TPurchaseGoods;

const
  //�������� ���������� ���������� ����� � �������.
  Capacity = 10;

var
  MainFormOfLab6: TMainFormOfLab6;

implementation

{$R *.dfm}

procedure TMainFormOfLab6.FormCreate(Sender: TObject);
begin
  EditSerialNumber.Text:='';
  EditFIO.Text:='';
  EditHomeAdress.Text:='';
  EditDateOfStatement.Text:='';
  with SgData do
    begin
      Cells[1,0]:='���������� �����';
      Cells[2,0]:='�������, ��������';
      Cells[3,0]:='�������� �����';
      Cells[4,0]:='���� ���������� �� ����';
    end;
end;

procedure TMainFormOfLab6.BtnAddRecordClick(Sender: TObject);
var
  RowNum : Integer;
begin
  RowNum := SgData.RowCount - 1;
  if SgData.Cells[1, RowNum] <> '' then begin
    //��������� ������ � �������.
    SgData.RowCount := SgData.RowCount + 1;
  end;

  RowNum := SgData.RowCount - 1;
  with SgData do begin
    Cells[1, RowNum] := EditSerialNumber.Text;
    Cells[2, RowNum] := EditFIO.Text;
    Cells[3, RowNum] := EditHomeAdress.Text;
    Cells[4, RowNum] := EditDateOfStatement.Text;
  end;
  EditSerialNumber.Text:='';
  EditFIO.Text:='';
  EditHomeAdress.Text:='';
  EditDateOfStatement.Text:='';
end;

//��������� �������� �� ������� � �������������� ����.
procedure TMainFormOfLab6.BtnSaveClick(Sender: TObject);
var
  F         : TPurchaseFile;
  FileName  : String;
  MdRes     : Integer;
  RowNum    : Integer;
  Pg        : TPurchaseGoods;
begin
  SaveDialog1.FilterIndex := 1; //����� ������.

  if SaveDialog1.InitialDir = '' then begin
    SaveDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  end;

  if not SaveDialog1.Execute then Exit;

  if FileExists(SaveDialog1.FileName) then begin
    MdRes := MessageDlg(
      '���� � ��������� ���� ������ ��� ����������. ������������?'
      , mtConfirmation, [mbYes, mbNo], 0
    );
    if MdRes = mrNo then Exit;
  end;

  FileName := SaveDialog1.FileName;
  AssignFile(F, FileName);
  Rewrite(F);

  for RowNum := 1 to SgData.RowCount - 1 do begin
    with SgData, Pg do begin
      if Cells[1, RowNum] = '' then Continue;
      SerialNumber     := StrToInt(Cells[1, RowNum]);
      FIO              := Cells[2, RowNum];
      HomeAdress       := Cells[3, RowNum];
      DateOfStatement  := Cells[4, RowNum];
    end;
    Write(F, pg);
  end;

  CloseFile(F);
end;

procedure TMainFormOfLab6.BtnLoadClick(Sender: TObject);//��� ����� ���� �� ����������
var
  F         : TPurchaseFile;
  FileName  : String;
  i, RowNum : Integer;
  Pg        : TPurchaseGoods;
begin
  OpenDialog1.FilterIndex := 1; //����� ������.

  if OpenDialog1.InitialDir = '' then begin
    OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  end;

  if not OpenDialog1.Execute then Exit;

  if not FileExists(OpenDialog1.FileName) then begin
    ShowMessage('���� � ��������� ���� ������ �� ����������. �������� ��������.');
    Exit;
  end;

  FileName := OpenDialog1.FileName;
  AssignFile(F, FileName);
  Reset(F);

  i := 0;
  RowNum := SgData.FixedRows;
  while not Eof(F) do begin
    RowNum := SgData.FixedRows + i;
    //���� ���������, ��������� ������ � �������.
    if RowNum + 1 >= SgData.RowCount then begin
      SgData.RowCount := SgData.RowCount + Capacity;
    end;
    read(F, Pg);
    with SgData, Pg do begin
      Cells[1, RowNum] := IntToStr(SerialNumber);
      Cells[2, RowNum] := FIO;
      Cells[3, RowNum] := HomeAdress;
      Cells[4, RowNum] := DateOfStatement;
    end;
    Inc(i);
  end;

  CloseFile(F);

  //������������ ���������� ����� � ������������ � �����������
  //����������� � ������� �������.
  SgData.RowCount := RowNum + 1;
end;

procedure TMainFormOfLab6.BtnDelRepeatedRecordsClick(Sender: TObject);
var
  Arr             : array of TPurchaseGoods;
  LengthArr       : Integer;
  i, j, k         : Integer;
  RowNum          : Integer;
begin

  LengthArr := SgData.RowCount - SgData.FixedRows;

  RowNum := SgData.FixedRows;
  if (LengthArr = 1) and (SgData.Cells[1, RowNum] = '') then Exit;

  SetLength(Arr, LengthArr);

  //����������� ������ � ������.
  for i := 0 to LengthArr - 1 do begin
    with SgData, Arr[i] do begin
      RowNum := FixedRows + i;
      SerialNumber := StrToInt(Cells[1, RowNum]);
      FIO := Cells[2, RowNum];
      HomeAdress := Cells[3, RowNum];
      DateOfStatement := Cells[4, RowNum];
    end;
  end;

  //��������� �� ������� �������� � ����������� ��� � �������.
  i := 0;
  while i < LengthArr - 1 - 1 do begin
    j := i + 1;
    while j < LengthArr do begin
      if (Arr[i].FIO = Arr[j].FIO) and (Arr[i].HomeAdress = Arr[j].HomeAdress) then begin
        //������� j-� �������. �������� ����������� � ������ �� ���� ������� �����
        //��������� ������� � ��������� (j + 1) ... (LengthArr - 1).
        for k := j + 1 to LengthArr - 1 do begin
          Arr[k - 1] := Arr[k];
        end;
        Dec(LengthArr);
      end else begin
        Inc(j);
      end;
    end;
    Inc(i);
  end;

  //��������� ������������ ������ � �������.
  for i := 0 to LengthArr - 1 do begin
    RowNum := SgData.FixedRows + i;
    (* ���� ���� �� �����, �. �. ����� ���������� ��������� �� ����� ���� ������ ��������.
    if RowNum + 1 >= SgData.RowCount then begin
      SgData.RowCount := SgData.RowCount + Capacity;
    end;
    *)
    with SgData, Arr[i] do begin
      Cells[1, RowNum] := IntToStr(SerialNumber);
      Cells[2, RowNum] := FIO;
      Cells[3, RowNum] := HomeAdress;
      Cells[4, RowNum] := DateOfStatement;
    end;
  end;

  //������������ ���������� ����� � �������.
  SgData.RowCount := RowNum + 1;

  Finalize(Arr);
end;

procedure TMainFormOfLab6.BtnExportClick(Sender: TObject);
var
  F         : TextFile;
  FileName  : String;
  MdRes     : Integer;
  RowNum    : Integer;
begin
  SaveDialog1.FilterIndex := 2; //��������� �����.

  if not SaveDialog1.Execute then Exit;
  if FileExists(SaveDialog1.FileName) then begin
    MdRes := MessageDlg(
      '���� � ��������� ������ ��� ����������. ������������?'
      , mtConfirmation, [mbYes, mbNo], 0
    );
    if MdRes = mrNo then Exit;
  end;

  FileName := SaveDialog1.FileName;
  AssignFile(F, FileName);
  Rewrite(F);
  for RowNum := 1 to SgData.RowCount - 1 do begin
    with SgData do begin
      Writeln(F, Cells[1, RowNum],'  |*|  ',Cells[2, RowNum]:20,'  |*|  ',Cells[3, RowNum]:20,'  |*|  ',Cells[4, RowNum]:10);
    end;
  end;
  CloseFile(F);
end;

procedure TMainFormOfLab6.BtnClearClick(Sender: TObject);
begin
  //� ������� ������ ������ �������� ���� ��������������� ������
  //(��� �������� ��������� TStringGrid).
  SgData.RowCount := SgData.FixedRows + 1;
  //������� ��������������� ������ � ������ ��� ��� ����� SgData.FixedRows.
  SgData.Rows[SgData.FixedRows].Clear;
end;

end.
