unit uClasse;

interface

   //Abstra��o
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
  //Heran�a
  type TPlayer = class (TPersonagem)
    NickName:String;
    Experi�ncia:Double;
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
