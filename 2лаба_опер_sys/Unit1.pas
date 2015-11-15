unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    Edit2: TEdit;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s,x : TFileStream;
  z : String;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var dir : string;
begin
if DirectoryExists(Edit1.Text) then
Label1.Caption:= Edit1.Text + 'Уже был создан'

else
begin
dir:=Label1.Caption + '\' + Edit1.Text;
ForceDirectories(dir);
if DirectoryExists(dir) then
Label1.Caption:='Каталог'+dir+'Создан';
end;

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
x:=TFileStream.Create(Edit2.Text + '.txt',fmOpenWrite OR fmCreate);
z:=Label1.Caption;
x.Free;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
x:=TFileStream.Create(z + Edit2.Text + '.txt',fmOpenRead);
s:=TFileStream.Create(Edit2.Text + 'copy' + '.txt',fmOpenWrite OR fmCreate);
s.CopyFrom(x,x.Size);
x.Free;
s.Free;
end;


procedure RemoveAll(path: string);
var sr: TSearchRec;
begin
if FindFirst(path + '\*.*', faAnyFile, sr) = 0 then
begin
repeat
if sr.Attr and faDirectory = 0 then
begin
DeleteFile(path + '\' + sr.name);
end
else
begin
if pos('.', sr.name) <= 0 then
RemoveAll(path + '\' + sr.name);
end;
until
FindNext(sr) <> 0;
end;
FindClose(sr);
RemoveDirectory(PChar(path));
end;


procedure TForm1.SpeedButton2Click(Sender: TObject);
 var
  dir: string;
begin
  if SelectDirectory('Удаление каталога', '', dir) then
    RemoveAll(dir);
end;

end.
