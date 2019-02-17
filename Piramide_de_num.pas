program Untitled;
var dig, aux, j: integer;

procedure Renglon (d: integer);
var v, i: integer;
begin
  for v:=1 to d do
      write (v, ' ');
  for i:=d-1 downto 1 do
      write (i, ' ')
end;

begin
  writeln ('Ingrese un numero natural....');
  readln (dig);
  aux := 1;
  repeat
    for j:=aux to dig do
        write ('  ');
    Renglon (aux);
    aux := aux+1;
    writeln
  until (aux>dig);
  readln
end.
