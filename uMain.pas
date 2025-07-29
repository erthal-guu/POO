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
    Edit3: TEdit;
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
uses uClasse;

var personagem : TPersonagem;
    Boss : TBoss;

procedure TForm1.Button1Click(Sender: TObject);
begin
personagem := TPersonagem.Create(1,1,1);
  personagem.setDano(StrToInt(Edit1.Text));
  personagem.setDefesa(StrToInt(Edit2.Text));
  personagem.setVida(StrToInt(Edit3.Text));
  label1.caption := Edit1.text;
  label2.caption := Edit2.text;
  label3.caption := Edit3.text;
  personagem.free;


end;
end.
