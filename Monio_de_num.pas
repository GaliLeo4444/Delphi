program Untitled;
var n, v, i, z, x: integer;
begin
  readln (n);
  z := 2*n-1;
  x := 2*n-3;
  writeln;
  for v:=1 to n do
      begin
        for i:=1 to v do
             write (i, ' ');
        for i:=v to x do
             write ('  ');
        for i:=z to 2*n-1 do
             write (i, ' ');
        writeln;
        if (z<>n+1)
            then z := z-1;
        x := x-1
      end;
  z := n+1;
  x := n-1;
  for v:=n-1 downto 1 do
      begin
        for i:=1 to v do
             write (i, ' ');
        for i:=x to n-1 do
             write ('  ');
        for i:=z to 2*n-1 do
             write (i, ' ');
        writeln;
        z := z+1;
        x := x-2
      end;
  readln
end.
