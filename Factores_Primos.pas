program Untitled;
var a, aux, exp: integer; quit: char;

function EsPrimo (n: integer): boolean;
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
  EsPrimo := es
end;

begin
  repeat
  writeln ('Ingrese un numero entero....');
  readln (a);
  writeln;
  writeln ('Los factores primos son: ');
  exp := 1;
  aux := 2;
  repeat
    if (EsPrimo(aux)) and (a mod aux=0)
        then begin
               write (aux);
               a := a div aux;
               while (a mod aux=0) do
                      begin
                        a := a div aux;
                        exp := exp+1;
                      end;
               write ('^', exp);
               if (a>1)
                   then write ('*')
             end;
    aux := aux+1;
    exp := 1
  until (a=1);
  writeln;
  writeln;
  writeln ('Para ingresar otro numero presione "enter".');
  writeln ('Para salir del programa presione "q".');
  readln (quit)
  until (quit='q')
end.




