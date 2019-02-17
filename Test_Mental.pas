program Untitled;
var ch, quit: char; nom, ape: boolean;
begin
  repeat
  nom := false;
  ape := false;
  writeln ('Ingrese su nombre (en minusculas)....');
  read (ch);
  if (ch='l')
      then begin
             read (ch);
             if (ch='e')
                 then begin
                        read (ch);
                        if (ch='a')
                            then begin
                                   read (ch);
                                   if (ch='n')
                                       then begin
                                              read (ch);
                                              if (ch='d')
                                                  then begin
                                                         read (ch);
                                                         if (ch='r')
                                                             then begin
                                                                    read (ch);
                                                                    if (ch='o')
                                                                        then nom := true
                                                                  end
                                                       end
                                            end
                                 end
                      end
           end;
  readln;
  writeln ('Ahora ingrese su apellido (en minusculas)....');
  read (ch);
  if (ch='l')
      then begin
             read (ch);
             if (ch='o')
                 then begin
                        read (ch);
                        if (ch='p')
                            then begin
                                   read (ch);
                                   if (ch='e')
                                       then begin
                                              read (ch);
                                              if (ch='z')
                                                  then ape := true
                                             end
                                 end
                      end
           end;
  writeln;
  write ('Nuestra base de datos dice que usted es: ');
  if (nom=true) and (ape=true)
      then writeln (' un genio.')
      else writeln (' un/a pelotudo/a.');
  readln;
  writeln;
  writeln ('Para ingresar otro nombre presione "enter".');
  writeln ('Para salir del programa presione "q".');
  readln (quit)
  until (quit='q')
end.
