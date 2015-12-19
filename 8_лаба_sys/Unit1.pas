unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Sockets, ScktComp;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ClientSocket1: TClientSocket;
    TcpClient1: TTcpClient;
    Memo1: TMemo;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var c : integer;
begin
c:=StrToInt(Edit2.Text);
while c<=StrToInt(Edit3.Text) do
begin
ClientSocket1.ClientType := ctBlocking;
ClientSocket1.Host:=Edit1.Text;
ClientSocket1.Port:=c;
try
ClientSocket1.Open;
ClientSocket1.Close;
Memo1.Lines.Add(IntToStr(c) + ' Порт открыт');
except
on Exception do
Memo1.Lines.Add(IntToStr(c) + ' Порт закрыт');
end;
c:=c + 1;
end;
end;

end.
