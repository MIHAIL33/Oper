unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
  procedure ShowA(Handle: THandle)stdcall;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type  TMyProc  = function(i:integer):integer;
var
  Form1: TForm1;
  procedure ShowA;external 'Project2.dll' index 1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ShowA(Handle);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
Handle: THandle;
Fun: TMyProc;
begin
Handle:=LoadLibrary('Project2.dll');
@Fun:=GetProcAddress(Handle ,'Fun');
Edit1.Text:= IntToStr(Fun(StrToInt(Edit1.Text)));
FreeLibrary(Handle);
end;

end.
