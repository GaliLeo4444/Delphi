program Untitled;
var exp, v: integer; base, po: real; quit: char;
begin
  repeat
  writeln ('Ingrese la base....');
  readln (base);
  writeln ('Ahora ingrese el exponente....');
  readln (exp);
  writeln;
  write ('La potencia del numero ingresado es: ');
  po := 1;
  if (exp<0)
      then begin
             base := 1/base;
             exp := exp*(-1)
           end;
  for v:=1 to exp do
      po := po*base;
  writeln (po:10:8);
  writeln;
  writeln ('Para ingresar otro numero presione "enter".');
  writeln ('Para salir del programa presione "q".');
  readln (quit);
  until (quit='q')
end.
