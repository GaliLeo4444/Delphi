UNIT Jugadores;
{Contiene el la estructura de datos para representar a los jugadores.
Además contiene operaciones de ordenamiento para la estructura misma}


INTERFACE




CONST
     max_jug = 40;




TYPE
   tNumJugador = 1..99;
   tEAP = 15..220;       {Tipo de la edad, la altura y el peso}
   tHabilidad = 0..10;
   tNombre = string[24];
   tCantPelotitas = 1..120;
   tPerfil = (ambidiestro, diestro, zurdo);
   tDeterioro = (nada, comun, grave);
   tCantJug = 0..max_jug;

   tCantHabilidades = 1..11;
   {1: Velocidad,
    2: Resistencia,
    3: Inteligencia,
    4: Pases,
    5: Remates,
    6: Cabeza,
    7: Portería,
    8: Control,
    9: Entradas,
    10: Cruzes,
    11: B. Parado}
   tEstadoHabilidad = (libre, trabada, buena);
   tListaHabilidades = array [tCantHabilidades] of tEstadoHabilidad;

   tDatExtrasJug = record
                     pie: tPerfil;
                     deterioro: tDeterioro;
                     estado_habilidades: tListaHabilidades;
                     titular: Boolean
                   end;

   tJugador = record
                num: tNumJugador;
                nombre: tNombre;
                valor: Cardinal;
                sueldo: Smallint;
                edad, altura, peso: tEAP;
                vel, resis, intel, pases, remat, cabeza, porteria,
                contr, entradas, cruzes, b_parado, exper, forma: tHabilidad;
                pelotitas: tCantPelotitas; datos_extras: tDatExtrasJug;
                puntos_arquero, puntos_defensa, puntos_medio, puntos_ataque: Smallint
              end;

   tArrJug = array [1..max_jug] of tJugador;

   tDatosJugadores = record
                       cant: tCantJug;
                       pri_capitan, segu_capitan: tNombre;
                       jugadores : tArrJug
                     end;

   tOrdenamiento = 0..23;
   {0: Número,
    1: Nombre,
    2: Valor,
    3: Sueldo,
    4: Edad,
    5: Altura,
    6: Peso,
    7: Velocidad,
    8: Resistencia,
    9: Inteligencia,
    10: Pases,
    11: Remates,
    12: Cabeza,
    13: Portería,
    14: Control,
    15: Entradas,
    16: Cruzes,
    17: B. Parado,
    18: Experiencia,
    19: Total pelotas,
    20: Arquero,
    21: Defensa,
    22: Medio,
    23: Ataque}




procedure OrdenarMenorAMayor (var J: tDatosJugadores; ordenar_por: tOrdenamiento);
procedure OrdenarMayorAMenor (var J: tDatosJugadores; ordenar_por: tOrdenamiento);
procedure CargarDatExtXDefecto (var jug: tJugador);




///////////////////////////////////////////////////////////////////////////////




IMPLEMENTATION




{Dado un atributo, determina si el mismo es mayor en el jugador1 que en el jugador2}
function EsMayor (jug1, jug2: tJugador; comparar_por: tOrdenamiento): boolean;
var resultado: boolean;
begin
  case comparar_por of
    0: if (jug1.num > jug2.num)
          then resultado := true
          else resultado := false;
    1: if (jug1.nombre > jug2.nombre)
          then resultado := true
          else resultado := false;
    2: if (jug1.valor > jug2.valor)
          then resultado := true
          else resultado := false;
    3: if (jug1.sueldo > jug2.sueldo)
          then resultado := true
          else resultado := false;
    4: if (jug1.edad > jug2.edad)
          then resultado := true
          else resultado := false;
    5: if (jug1.altura > jug2.altura)
          then resultado := true
          else resultado := false;
    6: if (jug1.peso> jug2.peso)
          then resultado := true
          else resultado := false;
    7: if (jug1.vel > jug2.vel)
          then resultado := true
          else resultado := false;
    8: if (jug1.resis > jug2.resis)
          then resultado := true
          else resultado := false;
    9: if (jug1.intel > jug2.intel)
          then resultado := true
          else resultado := false;
    10: if (jug1.pases > jug2.pases)
          then resultado := true
          else resultado := false;
    11: if (jug1.remat > jug2.remat)
          then resultado := true
          else resultado := false;
    12: if (jug1.cabeza > jug2.cabeza)
          then resultado := true
          else resultado := false;
    13: if (jug1.porteria > jug2.porteria)
          then resultado := true
          else resultado := false;
    14: if (jug1.contr > jug2.contr)
          then resultado := true
          else resultado := false;
    15: if (jug1.entradas > jug2.entradas)
          then resultado := true
          else resultado := false;
    16: if (jug1.cruzes > jug2.cruzes)
          then resultado := true
          else resultado := false;
    17: if (jug1.b_parado > jug2.b_parado)
          then resultado := true
          else resultado := false;
    18: if (jug1.exper > jug2.exper)
          then resultado := true
          else resultado := false;
    19: if (jug1.pelotitas > jug2.pelotitas)
          then resultado := true
          else resultado := false;
    20: if (jug1.puntos_arquero > jug2.puntos_arquero)
          then resultado := true
          else resultado := false;
    21: if (jug1.puntos_defensa > jug2.puntos_defensa)
          then resultado := true
          else resultado := false;
    22: if (jug1.puntos_medio > jug2.puntos_medio)
          then resultado := true
          else resultado := false;
    23: if (jug1.puntos_ataque > jug2.puntos_ataque)
          then resultado := true
          else resultado := false;
    else resultado := false
  end;
  EsMayor := resultado
end;


procedure OrdenarMenorAMayor (var J: tDatosJugadores; ordenar_por: tOrdenamiento);
var i, k: cardinal; jugador_temp: tJugador;
begin
  for i:=1 to J.cant-1 do
      for k:=J.cant downto i+1 do
          if (EsMayor(J.jugadores[k-1], J.jugadores[k], ordenar_por))
              then begin
                      jugador_temp := J.jugadores[k];
                      J.jugadores[k] := J.jugadores[k-1];
                      J.jugadores[k-1] := jugador_temp
                   end
end;


procedure OrdenarMayorAMenor (var J: tDatosJugadores; ordenar_por: tOrdenamiento);
var i, k: integer; jugador_temp: tJugador;
begin
  for i:=1 to J.cant-1 do
      for k:=J.cant downto i+1 do
          if (EsMayor(J.jugadores[k], J.jugadores[k-1], ordenar_por))
              then begin
                      jugador_temp := J.jugadores[k];
                      J.jugadores[k] := J.jugadores[k-1];
                      J.jugadores[k-1] := jugador_temp
                   end
end;


{Coloca los datos extras de los jugadores por defecto}
procedure CargarDatExtXDefecto (var jug: tJugador);
var i: 1..11;
begin
  jug.datos_extras.pie := ambidiestro;
  jug.datos_extras.deterioro := nada;
  for i:=1 to 11 do
    jug.datos_extras.estado_habilidades[i] := libre;
  jug.datos_extras.titular := false
end;




END.
