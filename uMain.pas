unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses uPersonagem,uPlayer,uBoss;

var Player : TPersonagem;
    Boss : TPersonagem;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Player := TPlayer.Create(1,1,1);
  Boss := Tboss.Create(1,1,1);

  Player.setDano(30);
  Boss.setDano(10);


end;
end.
