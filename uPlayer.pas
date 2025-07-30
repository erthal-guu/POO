unit uPlayer;

interface
uses uPersonagem;


  type TPlayer = class (TPersonagem)
    NickName:String;
    Experiência:Double;
    function getDano:Integer;
    procedure setDano(aDano:Integer);
  end;
implementation

{ TPlayer }

function TPlayer.getDano: Integer;
begin
Result := Self.Dano
end;

procedure TPlayer.setDano(aDano: Integer);
begin
 Dano := aDano;
end;

end.
