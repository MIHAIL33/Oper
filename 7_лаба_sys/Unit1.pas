unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var RegIni:TRegIniFile;
begin
RegIni:=TRegIniFile.Create('Software');
if RegIni.OpenKey('Musor Musora',true) then
RegIni.WriteString('Musor','Parametr',Edit1.Text);
RegIni.Free;
Label1.Caption:='Подразделы созданы, Параметр задан';
end;

procedure TForm1.Button2Click(Sender: TObject);
var RegIni:TRegistry;
begin
RegIni:=TRegistry.Create;
RegIni.RootKey:=HKEY_CURRENT_USER;
if RegIni.DeleteKey('Software\Musor Musora') then
Label1.Caption:='Весь созданный мусор удалён';
RegIni.Free;
end;

end.
