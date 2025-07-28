unit uClasse;

interface

   //Abstração
   //Encapsulamento
  type TPersonagem = class
    Nome: String;
    Vida:Integer;
    Genero:String;
    Nivel:Integer;
    Dano:Integer;
    Defesa:Integer;

    constructor Create(aDano,aDefesa:Integer);

  end;
  //Herança
  type TPlayer = class (TPersonagem)
    NickName:String;
    Experiência:Double;
  end;

  type TBoss = class (TPersonagem)

  end;


implementation

{  Clsse : TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: Integer);
begin
  Dano := aDano;
  Defesa := aDefesa;
end;

end.
