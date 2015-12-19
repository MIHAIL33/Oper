unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ServerSocket1: TServerSocket;
    procedure FormCreate(Sender: TObject);
    procedure ClientRead(Sender: TObject; Socket: TCustomWinSocket);
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
ServerSocket1:=TServerSocket.Create(Self);
ServerSocket1.Port:=135;
ServerSocket1.ServerType:=stNonBlocking;
ServerSocket1.OnClientRead:=ClientRead;
ServerSocket1.Open();
Application.ProcessMessages();
end;

procedure TForm1.ClientRead(Sender: TObject; Socket: TCustomWinSocket);
begin
ListBox1.Items.Add(Socket.ReceiveText());
end;

end.
