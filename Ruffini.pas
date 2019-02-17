program Untitled;
var x, grado: longint; a, b, c, d, e, f, g, suma, aux, raiz: real; quit: char;
begin
  writeln ('Este programa solo calcula raices enteras de un polinomio.');
  repeat
  writeln ('Por favor ingrese el grado del polinomio (no mayor que 6)....');
  readln (grado);
  writeln ('Ahora ingrese los coeficientes del polinomio en forma ordenada....');
  case grado of
    1: readln (a, b);
    2: readln (a, b, c);
    3: readln (a, b ,c, d);
    4: readln (a, b, c, d, e);
    5: readln (a, b, c, d, e, f);
    6: readln (a, b, c, d, e, f, g);
  end;
  writeln;
  x := 0;
  raiz := -99;
  suma := a;
  case grado of
    1: while (raiz<100) do
             begin
               aux := suma*raiz;
               suma := b+aux;
               if (suma=0)
                   then begin
                          x := x+1;
                          writeln ('La raiz', x, ' es: ', raiz:4:10)
                        end;
               raiz := raiz+0.5;
               suma := a
             end;
    2: while (raiz<100) do
             begin
               aux := suma*raiz;
               suma := b+aux;
               aux := suma*raiz;
               suma := c+aux;
               if (suma=0)
                   then begin
                          x := x+1;
                          writeln ('La raiz', x, ' es: ', raiz:4:10)
                        end;
               raiz := raiz+0.5;
               suma := a
         end;
    3: while (raiz<100) do
             begin
               aux := suma*raiz;
               suma := b+aux;
               aux := suma*raiz;
               suma := c+aux;
               aux := suma*raiz;
               suma := d+aux;
               if (suma=0)
                   then begin
                          x := x+1;
                          writeln ('La raiz', x, ' es: ', raiz:4:10)
                        end;
               raiz := raiz+0.5;
               suma := a
             end;
    4: while (raiz<100) do
             begin
               aux := suma*raiz;
               suma := b+aux;
               aux := suma*raiz;
               suma := c+aux;
               aux := suma*raiz;
               suma := d+aux;
               aux := suma*raiz;
               suma := e+aux;
               if (suma=0)
                   then begin
                          x := x+1;
                          writeln ('La raiz', x, ' es: ', raiz:4:10)
                        end;
               raiz := raiz+0.5;
               suma := a
             end;
    5: while (raiz<100) do
             begin
               aux := suma*raiz;
               suma := b+aux;
               aux := suma*raiz;
               suma := c+aux;
               aux := suma*raiz;
               suma := d+aux;
               aux := suma*raiz;
               suma := e+aux;
               aux := suma*raiz;
               suma := f+aux;
               if (suma=0)
                   then begin
                          x := x+1;
                          writeln ('La raiz', x, ' es: ', raiz:4:10)
                        end;
               raiz := raiz+0.5;
               suma := a
         end;
    6: while (raiz<100) do
             begin
               aux := suma*raiz;
               suma := b+aux;
               aux := suma*raiz;
               suma := c+aux;
               aux := suma*raiz;
               suma := d+aux;
               aux := suma*raiz;
               suma := e+aux;
               aux := suma*raiz;
               suma := f+aux;
               aux := suma*raiz;
               suma := g+aux;
               if (suma=0)
                   then begin
                          x := x+1;
                          writeln ('La raiz', x, ' es: ', raiz:4:10)
                        end;
               raiz := raiz+0.5;
               suma := a
             end;
  end;
  writeln;
  writeln ('Para ingresar otro polinomio presione "enter".');
  writeln ('Para salir del programa presione "q".');
  read (quit);
  until (quit='q')
end.
