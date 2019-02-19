UNIT UnidadCarga;
{Se encarga de cargar los datos de los jugadores a través de un archivo de texto dado.
Además contiene operaciones para guardar los datos en un archivo y volver a recuperarlos}


INTERFACE




USES
    SysUtils, Jugadores;




procedure CargarJugadores (nomarchivo: string; var dj: tDatosJugadores);
procedure GuardarJugadores (nomarchivo: string; dj: tDatosJugadores);
procedure CargarArchivo (nomarchivo: string; var dj: tDatosJugadores; var existe: boolean);
procedure NumeroACadena (n: Cardinal; var cad: string);
function CadenaANumero (cad: string): Integer;




///////////////////////////////////////////////////////////////////////////////




IMPLEMENTATION




CONST
     conjdigitos = ['0'..'9'];




TYPE
   ArchivoDeJugadores = file of tDatosJugadores;

   tListaDatosExtrasViejos = ^tDatExtViejos;
   tDatExtViejos = record
                     nombre: tNombre;
                     extras: tDatExtrasJug;
                     sig: tListaDatosExtrasViejos
                   end;




VAR
   F: text;
   DEV: tListaDatosExtrasViejos;




{Convierte un entero no negativo en una cadena}
procedure NumeroACadena (n: Cardinal; var cad: string);
var cadaux: string; i: 1..11;
begin
  cad := ''; cadaux := '';
  i := 1;
  repeat                                {Genero el número al revés}
    if (i = 4) or (i = 7) or (i = 10) {Uso un punto para separar los miles}
       then cadaux := cadaux + '.';
    cadaux := cadaux + chr(48 + (n mod 10));
    n := n div 10;
    i := i + 1
  until (n = 0);
  for i:= length(cadaux) downto 1 do     {Doy vuelta el número}
      cad := cad + cadaux[i]
end;




{Convierte una cadena en un entero no negativo}
function CadenaANumero (cad: string): Integer;
var i, aux: Integer;
begin
  aux := 0;
  for i:=1 to length(cad) do
      if (ord(cad[i]) > 47) and (ord(cad[i]) < 58)     {Si es un dígito}
         then aux := aux * 10 + (ord(cad[i]) - 48);
  CadenaANumero := aux;
end;


{Obtiene el número, la edad y las habilidades de cada jugador}    
function CargarNumeros: Smallint;
var cad: string; c: char;
begin
  read(F, c);
  cad := c;
  read(F, c);              {Leo el siguiente dígito o me como el espacio}
  if (c in conjdigitos)
     then begin
            cad := cad + c;
            read(F, c)     {Me como el espacio después de un número}
          end;
  CargarNumeros := CadenaANumero(cad)
end;


{Carga el valor y el sueldo de cada jugador}
procedure CargarValorYSueldo (var dj: tDatosJugadores; n: char);
var cad: string;
begin
  cad := n;          {n es el primer dígito del valor}
  read(F, n);
  while (n <> ' ') do
       begin
         cad := cad + n;
         read(F, n)
       end;
  read(F, n);            {Me como el espacio}
  while (n <> ' ') do    {Sigo leyendo porque seguro vale más de 10.000}
       begin
         cad := cad + n;
         read(F, n)
       end;
  read(F, n);         {Me como el espacio}
  if (n <> 'U')       {El jugador vale más de 1.000.000}
     then while (n <> ' ') do
              begin
                cad := cad + n;
                read(F, n)
              end;
  dj.jugadores[dj.cant].valor := CadenaANumero(cad);
  cad := '';
  while (not (n in conjdigitos)) do
       read(F, n);             {Encuentro el 1er número del sueldo}
  cad := n;
  if (n <> '0')         {Si no es un juvenil}
     then begin
            read(F, n);
            if (n <> ' ')              {El sueldo es mayor a 10.000}
               then begin
                      cad := cad + n;
                      read(F, n)
                    end;
            read(F, n);           {Me como el espacio}
            while (n <> ' ') do
                 begin
                   cad := cad + n;
                   read(F, n)
                 end
          end
     else read(F, n);             {Me como el espacio}
  dj.jugadores[dj.cant].sueldo := CadenaANumero(cad)
end;


{Carga el nombre, el valor y el sueldo de cada jugador}
procedure CargarNombre_Valor_Sueldo (var dj: tDatosJugadores);
var cad: string; c: char;
begin
  cad := '';
  read(F, c);                 {Leo la primera letra}
  while (c <> ' ') do
      begin
        cad := cad + c;
        read(F, c)
      end;
  read(F, c);                   {Me como el espacio}
  if (not (c in conjdigitos))   {Si no es un número entonces sigo leyendo el 2do nombre}
     then begin
            cad := cad + ' ';
            while (c <> ' ') do
                begin
                  cad := cad + c;
                  read(F, c)
                end;
            read(F, c)          {Me como el espacio}
          end;
  if (not (c in conjdigitos))   {Si no es un número entonces sigo leyendo el 3er nombre}
     then begin
            cad := cad + ' ';
            while (c <> ' ') do
                begin
                  cad := cad + c;
                  read(F, c)
                end;
            read(F, c)          {Me como el espacio}
          end;
  dj.jugadores[dj.cant].nombre := cad;
  CargarValorYSueldo(dj, c)
end;


{Carga la altura y el peso de cada jugador}
procedure CargarAlturaYPeso (var dj: tDatosJugadores);
var cad: string; c: char; i: 1..3;
begin
  cad := '';
  for i:=1 to 3 do      {La altura siempre tiene 3 dígitos}
     begin
       read(F, c);
       cad := cad + c
     end;
  dj.jugadores[dj.cant].altura := CadenaANumero(cad);
  cad := '';
  read(F, c);          {Me como el espacio}
  for i:=1 to 2 do     {El peso tiene al menos 2 dígitos}
     begin
       read(F, c);
       cad := cad + c
     end;
  read(F, c);
  if (c in conjdigitos)    {El peso tiene 3 dígitos}
     then begin
            cad := cad + c;
            read(F, c)     {Me como el espacio}
          end;
  dj.jugadores[dj.cant].peso := CadenaANumero(cad)
end;


{Calcula el total de pelotitas de cada jugador}
procedure CalcularTotalPelotitas (var jug: tJugador);
var suma_pelot: tCantPelotitas;
begin
  suma_pelot := jug.vel + jug.resis + jug.intel + jug.pases + jug.remat;
  suma_pelot := suma_pelot + jug.cabeza + jug.porteria + jug.contr;
  suma_pelot := suma_pelot + jug.entradas + jug.cruzes + jug.b_parado + jug.exper;
  jug.pelotitas := suma_pelot
end;


{Se encarga de guardar en una lista auxiliar los datos extras viejos de los jugadores, antes de cargar los nuevos datos comunes}
procedure GuardarDatosExtrasViejos (var dj: tDatosJugadores);
var i: Shortint; aux: tListaDatosExtrasViejos;
begin
  i := 1;
  new(DEV);       {Al menos un jugador va a ver}
  DEV^.nombre := dj.jugadores[i].nombre;
  DEV^.extras := dj.jugadores[i].datos_extras;
  aux := DEV;  i := i + 1;
  while (i <= dj.cant) do
    begin
      new(aux^.sig);        {Voy insertando al final de la lista porque los jugadores están ordenados por número }
      aux := aux^.sig;      {y los nuevos datos también (eficiencia a la hora de ActualizarDatosExtras)}
      aux^.nombre := dj.jugadores[i].nombre;
      aux^.extras := dj.jugadores[i].datos_extras;
      i := i + 1
    end;
  aux^.sig := nil     {Cierro la lista}
end;


{Actualiza a los nuevos datos cargados, los viejos datos extras de los jugadores que estaban cargados previamente}
procedure ActualizarDatosExtras (var dj: tDatosJugadores);
var i: Shortint; aux, ant: tListaDatosExtrasViejos; encontre: boolean;
begin
  i := 1;
  while (i <= dj.cant) do
    begin
      aux := DEV; ant := DEV;
      encontre := false;
      while ((aux <> nil) and (not encontre)) do
          if (aux^.nombre = dj.jugadores[i].nombre)
              then begin          {Si lo encuentro lo borro de la lista}
                     encontre := true;
                     dj.jugadores[i].datos_extras := aux^.extras;
                     if (DEV = aux)     {Si es la 1era celda}
                        then DEV := DEV^.sig
                        else ant^.sig := aux^.sig;
                     Dispose(aux)
                   end
              else begin
                     ant := aux;
                     aux := aux^.sig
                   end;
      if (not encontre)
         then CargarDatExtXDefecto(dj.jugadores[i]);
      i := i + 1
    end;

  while (DEV <> nil) do         {Borro la basura (jugadores que ya no están)}
    begin
      aux := DEV;
      DEV := DEV^.sig;
      Dispose(aux)
    end  
end;


{Calcula los puntos por posición de un jugador dado}
procedure CalcularPuntosJugador (var jug: tJugador);
var aux, general: Smallint;
begin
  general := jug.vel * 10;  {Calculo las habilidades generales a todas las posiciones (menos al portero)}
  general := general + jug.resis * 10;
  general := general + jug.intel * 10;
  general := general + jug.exper * 10;
  aux := jug.porteria * 90;   {Calculo los puntos de arquero}
  aux := aux + jug.intel * 10;
  aux := aux + jug.exper * 10;
  aux := aux + jug.vel * 5;
  aux := aux + jug.b_parado * 5;
  aux := aux + jug.cruzes * 4;
  aux := aux + jug.pases * 2;
  aux := aux + jug.contr * 2;
  jug.puntos_arquero := aux;
  aux := jug.entradas * 70;   {Calculo los puntos de defensa}
  aux := aux + jug.cabeza * 10;
  aux := aux + jug.cruzes * 8;
  aux := aux + jug.pases * 2;
  aux := aux + jug.contr * 2;
  aux := aux + general;
  jug.puntos_defensa := aux;
  aux := jug.entradas * 30;   {Calculo los puntos de medio}
  aux := aux + jug.cruzes * 30;
  aux := aux + jug.pases * 30;
  aux := aux + jug.contr * 30;
  aux := aux + jug.remat * 4;
  aux := aux + jug.cabeza * 4;
  aux := aux + general;
  jug.puntos_medio := aux;
  aux := jug.remat * 60;     {Calculo los puntos de ataque}
  aux := aux + jug.contr * 40;
  aux := aux + jug.cruzes * 10;
  aux := aux + jug.pases * 10;
  aux := aux + jug.cabeza * 10;
  aux := aux + general;
  jug.puntos_ataque := aux;
end;


{Carga los datos de jugadores desde un archivo de texto que recibe cómo parámetro}
//Poner excepciones!!!!
procedure CargarJugadores (nomarchivo: string; var dj: tDatosJugadores);
var ch: char; i: tCantJug;
begin
  if (dj.cant > 0)        {Si ya se han cargado jugadores}
      then GuardarDatosExtrasViejos(dj)
      else DEV := nil;
  assign(F, nomarchivo);
  reset(F);
  dj.cant := 0;
  while ((not eof(F)) and (dj.cant < 40)) do
    begin
      dj.cant := dj.cant + 1;
      dj.jugadores[dj.cant].num := CargarNumeros;  {Cargo el número del jugador}
      CargarNombre_Valor_Sueldo(dj);
      repeat
        read(F, ch)             {Salteo el "USD" del sueldo}
      until (ch = ' ');
      dj.jugadores[dj.cant].edad := CargarNumeros;
      CargarAlturaYPeso(dj);
      dj.jugadores[dj.cant].vel := CargarNumeros;
      dj.jugadores[dj.cant].resis := CargarNumeros;
      dj.jugadores[dj.cant].intel := CargarNumeros;
      dj.jugadores[dj.cant].pases := CargarNumeros;
      dj.jugadores[dj.cant].remat := CargarNumeros;
      dj.jugadores[dj.cant].cabeza := CargarNumeros;
      dj.jugadores[dj.cant].porteria := CargarNumeros;
      dj.jugadores[dj.cant].contr := CargarNumeros;
      dj.jugadores[dj.cant].entradas := CargarNumeros;
      dj.jugadores[dj.cant].cruzes := CargarNumeros;
      dj.jugadores[dj.cant].b_parado := CargarNumeros;
      dj.jugadores[dj.cant].exper := CargarNumeros;
      dj.jugadores[dj.cant].forma := CargarNumeros;
      CalcularTotalPelotitas(dj.jugadores[dj.cant]);
      if (not eof(F))
         then readln(F)        {Paso al próximo jugador}
    end;
  close(F);
  for i:=1 to dj.cant do
      CalcularPuntosJugador(dj.jugadores[i]);
  if ((dj.cant > 0) and (DEV <> nil))  {Si se cargó al menos un jugador y si había al menos un dato extra viejo}
      then ActualizarDatosExtras(dj)
end;


{Guarda la variable dj (que contiene a los jugadores) en un archivo}
procedure GuardarJugadores (nomarchivo: string; dj: tDatosJugadores);
var ARCHJUG: ArchivoDeJugadores;
begin
  assign(ARCHJUG, nomarchivo);
  rewrite(ARCHJUG);
  write(ARCHJUG, dj);
  close(ARCHJUG)
end;


{Carga los datos de jugadores que fueron guardados previamente}
procedure CargarArchivo (nomarchivo: string; var dj: tDatosJugadores; var existe: boolean);
var ARCHJUG: ArchivoDeJugadores;
begin
  assign(ARCHJUG, nomarchivo);
  reset(ARCHJUG);
  if (eof(ARCHJUG))
     then existe := false
     else begin
            existe := true;
            read(ARCHJUG, dj)
          end;  
  close(ARCHJUG)
end;




END.
