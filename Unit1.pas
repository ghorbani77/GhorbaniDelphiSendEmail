unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, ExtCtrls,
  IdMessage, StdCtrls;

type
  TfrmMain = class(TForm)
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Label10: TLabel;
    Label11: TLabel;
    procedure IdSMTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  if IdSMTP1.Connected then
    IdSMTP1.Disconnect();

  IdSMTP1.Host := Edit1.Text; // Host
  IdSMTP1.Port := StrToInt(Edit2.Text); // Port
  IdSMTP1.Username := Edit3.Text; // Username
  IdSMTP1.Password := Edit4.Text; // Password
  IdSMTP1.Connect;

  IdMessage1.From.Address := Edit5.Text; // From
  IdMessage1.Recipients.EMailAddresses := Edit6.Text; // To
  IdMessage1.Subject := Edit7.Text; // Subject
  IdMessage1.Body.Text := Memo1.Text; // Body
  IdSMTP1.Send(IdMessage1);
  IdSMTP1.Disconnect();
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.IdSMTP1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  Memo2.Lines.Add(AStatusText);
end;

end.
