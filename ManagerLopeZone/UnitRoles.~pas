UNIT UnitRoles;
{Es la unidad que se encarga de generar los roles y mostrarlos en el form FormRoles}


INTERFACE




USES
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Jugadores, UnidadCarga;




TYPE
    TFormRoles = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    end;



  procedure GenerarRoles (var J: tDatosJugadores);




VAR
   FormRoles: TFormRoles;




///////////////////////////////////////////////////////////////////////////////




IMPLEMENTATION
{$R *.dfm}





TYPE
    tRegRoles = record
                  numero: tNumJugador;
                  puntos: cardinal
                end;
    tArrRoles = array [1..max_jug] of tRegRoles;




{Se encarga de ordenar un arreglo de roles de mayor a menor con el método burbuja}
procedure OrdenarRoles (cant_jug : tCantJug; var R: tArrRoles);
var i, v: tCantJug; aux: tRegRoles;
begin
  for i:=1 to cant_jug-1 do
     for v:=cant_jug downto i+1 do
        if ((R[v-1].puntos) < (R[v].puntos))
           then begin
                  aux := R[v-1];
                  R[v-1] := R[v];
                  R[v] := aux
                end;  
end;


{Se encarga de generar los roles y mostrarlos en el form FormRoles}
procedure GenerarRoles (var J: tDatosJugadores);
var i: tCantJug; R: tArrRoles;
    aux: tRegRoles; jug: string;
begin
  for i:=1 to J.cant do         {Genero los puntos de penales}
      begin
        aux.numero := J.jugadores[i].num;
        aux.puntos := J.jugadores[i].b_parado * 10;
        aux.puntos := aux.puntos + J.jugadores[i].remat * 8;
        aux.puntos := aux.puntos + J.jugadores[i].pases * 6;
        aux.puntos := aux.puntos + J.jugadores[i].intel * 4;
        aux.puntos := aux.puntos + J.jugadores[i].exper * 2;
        R[i] := aux
      end;
  OrdenarRoles(J.cant, R);
  for i:=1 to J.cant do       {Muestro la lista ordenada de penales}
     begin
       NumeroACadena(R[i].numero, jug);
       FormRoles.ListBox1.Items.Add(jug);
       NumeroACadena(R[i].puntos, jug);
       FormRoles.ListBox2.Items.Add(jug)
     end;
for i:=1 to J.cant do         {Genero los puntos de tiros libres}
      begin
        aux.numero := J.jugadores[i].num;
        aux.puntos := J.jugadores[i].b_parado * 10;
        aux.puntos := aux.puntos + J.jugadores[i].cruzes * 8;
        aux.puntos := aux.puntos + J.jugadores[i].intel * 6;
        aux.puntos := aux.puntos + J.jugadores[i].remat * 6;
        aux.puntos := aux.puntos + J.jugadores[i].pases * 4;
        aux.puntos := aux.puntos + J.jugadores[i].exper * 2;
        R[i] := aux
      end;
  OrdenarRoles(J.cant, R);
  for i:=1 to J.cant do       {Muestro la lista ordenada de tiros libres}
     begin
       NumeroACadena(R[i].numero, jug);
       FormRoles.ListBox3.Items.Add(jug);
       NumeroACadena(R[i].puntos, jug);
       FormRoles.ListBox4.Items.Add(jug)
     end
end;


procedure TFormRoles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormRoles.Free
end;




END.
