unit extenso;

interface

function ValorExtenso(Valor: double; Singular, Plural: string): string;

implementation

uses
  SysUtils;

// ------ Valor por extenso de 1 ate 999 ( sem unidade )---------
function ExtNum(Str_Valor: string): string;
const
  Vu: array [1..19] of string = ('Hum', 'Dois', 'Três', 'Quatro', 'Cinco',
    'Seis', 'Sete', 'Oito',
    'Nove', 'Dez', 'Onze', 'Doze', 'Treze',
    'Quatorze', 'Quinze',
    'Dezeseis', 'Dezesete', 'Dezoito', 'Dezenove');
  Vd: array [2..10] of string = ('Vinte', 'Trinta', 'Quarenta',
    'Cinquenta', 'Sessenta',
    'Setenta', 'Oitenta', 'Noventa', 'Cem');
  Vc: array [1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
    'Quatrocentos', 'Quinhentos',
    'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');
var
  Num: integer;
  Code: integer;
  Cent: integer;
  Dez: integer;
  Unid: integer;
  CnUn: integer;
begin
  Result := '';
  Val(Str_Valor, Num, Code);

  if Num > 0 then
  begin
    Str_Valor := Format('%03d', [Num]);
    Val(Copy(Str_Valor, 2,2), CnUn, Code);
    Val(Copy(Str_Valor, 3,1), Unid, Code);
    Val(Copy(Str_Valor, 2,1), Dez, Code);
    Val(Copy(Str_Valor, 1,1), Cent, Code);

    if Num = 100 then
      Result := Vd[10]
    else
    begin
      if Cent > 0 then
      begin
        Result := Vc[Cent];
        if CnUn > 0 then
          Result := Result + ' e ';
      end;

      if Dez > 1 then
      begin
        Result := Result + Vd[Dez];
        if Unid > 0 then
          Result := Result + ' e '
      end;

      if (CnUn >= 1) and (CnUn <= 19) then
        Result := Result + Vu[CnUn];

      if (Dez > 1) and (Unid >= 1) then
        Result := Result + Vu[Unid];
    end;
  end;
end;

// ------ Valor por extenso de um número ------------------------
function ValorExtenso(Valor: double; Singular, Plural: string): string;
var
  Ind: integer;
  Num: integer;
  Code: integer;
  Ve: array[0..11] of string;
  Str_Valor: string;
  Aux: string;
begin
  Result := '';

  if Valor > 0.0 then
  begin
    Ve[00] := 'Trilhão';
    Ve[01] := 'Trilhões';
    Ve[02] := 'Bilhão';
    Ve[03] := 'Bilhões';
    Ve[04] := 'Milhão';
    Ve[05] := 'Milhões';
    Ve[06] := 'Mil';
    Ve[07] := 'Mil';
    Ve[08] := Singular;
    Ve[09] := Plural;
    Ve[10] := 'Centavo';
    Ve[11] := 'Centavos';

    Str_Valor := Format('%18.2f', [Valor]);
    Str_Valor[16] := '0';

    for Ind := 0 to 5 do
    begin
      Aux := Copy(Str_Valor, Ind * 3 + 1, 3);
      Val(Aux, Num, code);

      if Num > 0 then
      begin
        Aux := ExtNum(Aux);
        if (Ind = 5) and (Valor > 1) then
          Aux := 'e ' + Aux;
        if Num = 1 then
          Result := Result + Aux + ' ' + Ve[Ind * 2] + ' '
        else
          Result := Result + Aux + ' ' + Ve[Ind * 2 + 1] + ' ';
      end;

      if Valor > 1000 then
      begin
        if (Num = 0) and (Ind = 3) then
          Result := Result + 'de ';

        if (Num = 0) and (Ind = 4) then
          Result := Result + Plural + ' ';
      end;
    end;
  end;
end;


end.
