program Untitled;
var dig, x, aux, cant: integer; quit: char;
begin
  repeat
  writeln ('Ingrese un numero entero y luego un digito....');
  readln (x, dig);
  while (x<>0) do
    begin
      aux := x mod 10;
      x := x div 10;
      if (aux=dig)
          then cant := cant+1;
    end;
  writeln ('El digito "', dig, '" aparece ', cant, ' veces en el numero ingresado.');
  cant := 0;
  writeln;
  writeln ('Para ingresar otro numero y otro digito presione "enter".');
  writeln ('Para salir del programa presione "q".');
  read (quit);
  until (quit='q')
end.


