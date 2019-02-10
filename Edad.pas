program Untitled;
type t_dias=1..31; t_meses=1..12;
var k, dia1, dia2, diaA: t_dias; mes1, mes2, mesA: t_meses; anio1, anio2, anioA, cant_dias: integer; aux: char;

procedure dia_siguiente (dia: t_dias; mes: t_meses; anio: integer; var dia2: t_dias; var mes2: t_meses; var anio2: integer);
begin
  mes2 := mes;
  anio2 := anio;
  case mes of
  2: if (anio mod 4=0) and (anio mod 100<>0) or (anio mod 400=0)
      then begin if (mes=2) and (dia<29)
                     then dia2 := dia+1
                     else if (mes=2) and (dia=29)
                              then begin dia2 := 1;
                                         mes2 := 3
                                   end
           end
      else if (mes=2) and (dia<28)
               then dia2 := dia+1
               else if (mes=2) and (dia=28)
                        then begin dia2 := 1;
                                   mes2 := 3
                             end;
  4,6,9,11: if (dia<30)
               then dia2 := dia+1
               else if (dia=30)
                        then begin dia2 := 1;
                                   mes2 := mes+1
                             end;
  1,3,5,7,8,10: if (dia<31)
                    then dia2 := dia+1
                    else if (dia=31)
                             then begin dia2 := 1;
                                        mes2 := mes+1
                                  end;
  12: if (dia<31)
          then dia2 := dia+1
          else if (dia=31)
                   then begin dia2 := 1;
                                   mes2 := 1;
                                   anio2 := anio+1
                        end

  end;
end;

begin
  cant_dias := 0;
  while (aux<>'q') do
  begin
  writeln ('Ingrese la fecha de nacimiento:');
  writeln ('Dia....'); readln (dia1);
  writeln ('Mes....'); readln (mes1);
  writeln ('Anio...'); readln (anio1);
  writeln ('Ingrese la fecha actual:');
  writeln ('Dia....'); readln (dia2);
  writeln ('Mes....'); readln (mes2);
  writeln ('Anio....'); readln (anio2);
  repeat
  dia_siguiente (dia1, mes1, anio1, diaA, mesA, anioA);
  if (anioA<anio2)
      then cant_dias := cant_dias+1
      else if (anioA=anio2) and (mesA<mes2)
               then cant_dias := cant_dias+1
               else if (anioA=anio2) and (mesA=mes2) and (diaA<=dia2)
                        then cant_dias := cant_dias+1
                        else begin
                               writeln ('Usted ingreso incorrectamente las fechas, es un TONTO!!!!');
                               k := 1
                             end;
  dia1 := diaA;
  mes1 := mesA;
  anio1 := anioA;
  until (anioA=anio2) and (mesA=mes2) and (diaA=dia2) or (k=1);
  writeln ('La cantidad de dias entre las dos fechas ingresadas es de: ', cant_dias, ' dias');
  writeln;
  anio1 := cant_dias div 365;
  cant_dias := cant_dias - anio1*365;
  mes1 := cant_dias div 30;
  cant_dias := cant_dias - mes1*30;
  dia1 := cant_dias;
  writeln ('La edad es de: ', anio1, ' anio/s, ', mes1, ' mes/es y ', dia1, ' dia/s.');
  cant_dias := 0;
  writeln;
  writeln ('Si desea ingresar otras dos fechas presione "enter".');
  writeln ('Para salir del programa presione "q".');
  readln (aux);
  end
  end.

