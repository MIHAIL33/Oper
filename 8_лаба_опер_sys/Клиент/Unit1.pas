unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    ListBox1: TListBox;
    ClientSocket1: TClientSocket;
    ServerSocket1: TServerSocket;
    procedure Button1Click(Sender: TObject);
    procedure ClientSocket1Connect(Sender:TObject; Socket:TCustomWinSocket);
    procedure ClientSocket1Read(Sender:TObject; Socket:TCustomWinSocket);
    procedure Button2Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject; Socket: TCustomWinSocket);
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
begin
if ClientSocket1.Active then begin
ClientSocket1.Close;
if ServerSocket1.Active then begin
ServerSocket1.Close;
Exit;
end;
end;
try
ClientSocket1.ClientType:=ctBlocking;
ClientSocket1.Host:=Edit1.Text;
ClientSocket1.Port:=StrToInt(Edit2.Text);
ClientSocket1.Open;
ServerSocket1.Port:=StrToInt(Edit2.Text);
ServerSocket1.Open;
ListBox1.Items.Add('Есть контакт');
except
ListBox1.Items.Add('Сервер недоступен');
end;
end;

procedure TForm1.ClientSocket1Connect(Sender:TObject; Socket:TCustomWinSocket);
begin
Socket.SendText('Hello!');
ListBox1.Items.Add('< Hello!');
end;

procedure TForm1.ClientSocket1Read(Sender:TObject; Socket:TCustomWinSocket);
begin
ListBox1.Items.Add('> ' + Socket.ReceiveText);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ClientSocket1.Socket.SendText(Edit3.Text);
ListBox1.Items.Add('< ' + Edit3.Text);
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject; Socket: TCustomWinSocket);
var s: string;
begin
ListBox1.Items.Add('> ' + Socket.ReceiveText);
end;

end.
