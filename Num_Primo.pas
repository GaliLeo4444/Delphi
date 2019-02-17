program Untitled;
var  n, aux: integer; es: boolean; quit: char;
begin
  repeat
  writeln ('Ingrese un numero entero mayor que "1"....');
  readln (n);
  aux := n-1;
  es := true;
  while (aux<>1) and (es=true) do
    begin
      if (n mod aux=0)
          then es := false
          else es := true;
      aux := aux-1
    end;
  if (es=true)
      then writeln ('El numero ingresado es primo.')
      else writeln ('El numero ingresado no es primo.');
  writeln;
  writeln ('Para ingresar otro numero presione "enter".');
  writeln ('Para salir del programa presione "q".');
  readln (quit)
  until (quit='q')
end.
