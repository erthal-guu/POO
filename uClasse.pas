unit uClasse;

interface

   //Abstração
   //Encapsulamento

  type TPersonagem = class
  private
      Nome: String;
      Vida:Integer;
      Genero:String;
      Nivel:Integer;
      Dano:Integer;
      Defesa:Integer;
    public

      //Getter e Setter
     function getDano:Integer;
     procedure setDano(aDano:Integer);

     function getDefesa:Integer;
     procedure setDefesa(aDefesa:Integer);

     function getVida:Integer;
     procedure setVida(aDefesa:Integer);

    function getGenero:String;
    Procedure setGenero(aGenero:String);

    constructor Create(aDano,aDefesa,aVida:Integer);

  end;

  //Herança
  type TPlayer = class (TPersonagem)
    NickName:String;
    Experiência:Double;
    procedure setDano(aDano:Integer);
    function GetDano:Integer;
  end;



  type TBoss = class (TPersonagem)
      HabilidadeEspecial:String;
      function getDano:Integer;
      procedure setDano(aDano:Integer);
  end;


implementation
uses  SysUtils;

//----------------------------------------------------------------------//

{  Clsse : TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa,aVida: Integer);
begin
  Self.Dano := aDano;
  Self.Defesa := aDefesa;
  Self.Vida := aVida;
end;

function TPersonagem.getDano: Integer;
begin
Result := Self.Dano+Self.Nivel;
end;


procedure TPersonagem.setDano(aDano: Integer);
begin
if aDano<1 then begin
  raise Exception.Create('O Dano deve ser maior que zero. TPersonagem.setDano');
end;
Self.Dano := aDano;
end;

function TPersonagem.getDefesa: Integer;
begin
Result := self.Defesa+Self.Nivel+9;
end;


procedure TPersonagem.setDefesa(aDefesa: Integer);
begin
if aDefesa<1 then begin
  raise Exception.Create('A Defesa deve ser maior que zero. TPersonagem.setDefesa');
end;
end;


function TPersonagem.getVida: Integer;
begin
Result := Self.Vida + Self.Nivel + Self.Defesa;
end;

procedure TPersonagem.setVida(aDefesa: Integer);
begin
if aDefesa<1 then begin
  raise Exception.Create('A Defesa deve ser maior que zero. TPersonagem.setDefesa');
end;
end;
function TPersonagem.getGenero: String;
begin
  Result := Self.Genero;
end;

procedure TPersonagem.setGenero(aGenero: String);
begin
  Self.Genero := aGenero;
end;

//-------------------------------------------------------------------------//

{  Clsse : TPlayer }

function TPlayer.GetDano: Integer;
begin
Result := Self.Dano;
end;

procedure TPlayer.setDano(aDano: Integer);
begin
Self.Dano := aDano;
end;


//-------------------------------------------------------------------------//

{  Clsse : TBoss }

function TBoss.getDano: Integer;
begin

end;

procedure TBoss.setDano(aDano: Integer);
begin

end;

end.
