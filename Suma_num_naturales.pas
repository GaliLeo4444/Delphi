program Untitled;
var n, i, suma: integer; aux: char;
begin
  while (aux<>'q') do
  begin
  writeln ('Ingrese un numero natural....');
  readln (n);
  for i:=0 to n do
      suma := suma + i;
  writeln ('La suma de los primeros ', n, ' numeros naturales es: ', suma);
  writeln;
  writeln ('Para ingresar otro numero presione "enter".');
  writeln ('Para salir del programa presione "q"');
  read (aux)
  end
end.
