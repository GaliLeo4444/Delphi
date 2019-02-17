program Untitled;
var pri, pri_s, aux: integer; quit: char;

function NumeroPrimo (n: integer): boolean;
var aux: integer; es: boolean;
begin
  aux := n-1;
  es := true;
  while (aux<>1) and (es=true) do
    begin
      if (n mod aux=0)
          then es := false
          else es := true;
      aux := aux-1
    end;
    NumeroPrimo := es
end;

begin
  repeat
  writeln ('Por favor ingrese un numero natural....');
  readln (pri);
  aux := pri;
  repeat
    pri := pri+1;
    if NumeroPrimo(pri)
       then pri_s := pri
  until NumeroPrimo(pri);
  writeln ('El proximo primo de ', aux, ' es ', pri_s, '.');
  writeln;
  writeln ('Para ingresar otro numero primo presione "enter".');
  writeln ('Para salir del programa presione "q".');
  readln (quit)
  until (quit='q')
end.

