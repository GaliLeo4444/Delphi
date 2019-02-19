UNIT UnitPrograma;
{Es la unidad principal del programa. Maneja todas las etiquetas y sub-ventanas}


INTERFACE




USES
    Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
    Buttons, ComCtrls, ExtCtrls, jpeg, Jugadores, UnidadCarga, UnitRoles;




TYPE
    TUIPrincipal = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabInicio: TTabSheet;
    TabJugadores: TTabSheet;
    TabDatosDelEquipo: TTabSheet;
    BotonCargarJug: TButton;
    Memo1: TMemo;
    TabFormaciones: TTabSheet;
    Jugador1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    ListBox1: TListBox;
    BotonGuardarJug: TButton;
    PuntosJug1: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image60: TImage;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    Image65: TImage;
    Image66: TImage;
    Image67: TImage;
    Image68: TImage;
    Image69: TImage;
    Image70: TImage;
    Image71: TImage;
    Image72: TImage;
    Image73: TImage;
    Image74: TImage;
    Image75: TImage;
    Image76: TImage;
    Image77: TImage;
    Image78: TImage;
    Image79: TImage;
    Image80: TImage;
    Image81: TImage;
    Image82: TImage;
    Image83: TImage;
    Image84: TImage;
    Image85: TImage;
    Image86: TImage;
    Image87: TImage;
    Image88: TImage;
    Image89: TImage;
    Image90: TImage;
    Image91: TImage;
    Image92: TImage;
    Image93: TImage;
    Image94: TImage;
    Image95: TImage;
    Image96: TImage;
    Image97: TImage;
    Image98: TImage;
    Image99: TImage;
    Image100: TImage;
    Image101: TImage;
    Image102: TImage;
    Image103: TImage;
    Image104: TImage;
    Image105: TImage;
    Image106: TImage;
    Image107: TImage;
    Image108: TImage;
    Image109: TImage;
    Image110: TImage;
    Image111: TImage;
    Image112: TImage;
    Image113: TImage;
    Image114: TImage;
    Image115: TImage;
    Image116: TImage;
    Image117: TImage;
    Image118: TImage;
    Image119: TImage;
    Image120: TImage;
    Image121: TImage;
    Image122: TImage;
    Image123: TImage;
    Image124: TImage;
    Image125: TImage;
    Image126: TImage;
    Image127: TImage;
    Image128: TImage;
    Image129: TImage;
    Image130: TImage;
    Label20: TLabel;
    Label21: TLabel;
    BotonRoles: TButton;
    ComboPerfil: TComboBox;
    TipoOrden: TRadioGroup;
    ListaOrdenamientos: TComboBox;
    Label22: TLabel;
    Edit1: TEdit;
    ComboDeterioro: TComboBox;
    Label23: TLabel;
    Label24: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Edit7: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    GroupBox3: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    Edit43: TEdit;
    ListEquipo: TListBox;
    ListTitulares: TListBox;
    BotonAgregarTitu: TButton;
    BotonQuitarTitu: TButton;
    Label50: TLabel;
    Label51: TLabel;
    Edit44: TEdit;
    Edit45: TEdit;

    {No me deja ponerlos cómo privados....????}
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure BotonCargarJugClick(Sender: TObject);
    procedure BotonGuardarJugClick(Sender: TObject);
    procedure BotonRolesClick(Sender: TObject);
    procedure ListaOrdenamientosClick(Sender: TObject);
    procedure ComboPerfilChange(Sender: TObject);
    procedure ComboDeterioroChange(Sender: TObject);
    procedure Edit8Click(Sender: TObject);
    procedure Edit9Click(Sender: TObject);
    procedure Edit10Click(Sender: TObject);
    procedure Edit11Click(Sender: TObject);
    procedure Edit12Click(Sender: TObject);
    procedure Edit13Click(Sender: TObject);
    procedure Edit14Click(Sender: TObject);
    procedure Edit15Click(Sender: TObject);
    procedure Edit16Click(Sender: TObject);
    procedure Edit17Click(Sender: TObject);
    procedure Edit18Click(Sender: TObject);
    procedure BotonAgregarTituClick(Sender: TObject);
    procedure BotonQuitarTituClick(Sender: TObject);
    procedure Edit45Click(Sender: TObject);


    private    {Los pongo cómo parte de la clase TUIPrincipal para no andar poniéndoles UIPrincipal antes de usar cualquier componente del mismo (ahorro de código)}
    procedure LimpiarPelot1;
    procedure MostrarJugador1;
    procedure PonerLabelPorDefecto;
    procedure Colorear;
    procedure CalcularDatosEquipo;
    procedure CalcularDatosTitulares;
    procedure LimpiarDatosTitu;
    procedure LimpiarDatosEquipo;

    end;




VAR
   UIPrincipal: TUIPrincipal;




///////////////////////////////////////////////////////////////////////////////




IMPLEMENTATION
{$R *.dfm}




VAR
   J: tDatosJugadores;
   orden_selec: Shortint;
   jugador_selec: tCantJug;




{Se encarga de limpiar las pelotitas del jugador que estaba seleccionado}
procedure TUIPrincipal.LimpiarPelot1;
begin
  Image1.Visible := false; Image2.Visible := false; Image3.Visible := false;
  Image4.Visible := false; Image5.Visible := false; Image6.Visible := false;
  Image7.Visible := false; Image8.Visible := false; Image9.Visible := false;
  Image10.Visible := false; Image11.Visible := false; Image12.Visible := false;
  Image13.Visible := false; Image14.Visible := false; Image15.Visible := false;
  Image16.Visible := false; Image17.Visible := false; Image18.Visible := false;
  Image19.Visible := false; Image20.Visible := false; Image21.Visible := false;
  Image22.Visible := false; Image23.Visible := false; Image24.Visible := false;
  Image25.Visible := false; Image26.Visible := false; Image27.Visible := false;
  Image28.Visible := false; Image29.Visible := false; Image30.Visible := false;
  Image31.Visible := false; Image32.Visible := false; Image33.Visible := false;
  Image34.Visible := false; Image35.Visible := false; Image36.Visible := false;
  Image37.Visible := false; Image38.Visible := false; Image39.Visible := false;
  Image40.Visible := false; Image41.Visible := false; Image42.Visible := false;
  Image43.Visible := false; Image44.Visible := false; Image45.Visible := false;
  Image46.Visible := false; Image47.Visible := false; Image48.Visible := false;
  Image49.Visible := false; Image50.Visible := false; Image51.Visible := false;
  Image52.Visible := false; Image53.Visible := false; Image54.Visible := false;
  Image55.Visible := false; Image56.Visible := false; Image57.Visible := false;
  Image58.Visible := false; Image59.Visible := false; Image60.Visible := false;
  Image61.Visible := false; Image62.Visible := false; Image63.Visible := false;
  Image64.Visible := false; Image65.Visible := false; Image66.Visible := false;
  Image67.Visible := false; Image68.Visible := false; Image69.Visible := false;
  Image70.Visible := false; Image71.Visible := false; Image72.Visible := false;
  Image73.Visible := false; Image74.Visible := false; Image75.Visible := false;
  Image76.Visible := false; Image77.Visible := false; Image78.Visible := false;
  Image79.Visible := false; Image80.Visible := false; Image81.Visible := false;
  Image82.Visible := false; Image83.Visible := false; Image84.Visible := false;
  Image85.Visible := false; Image86.Visible := false; Image87.Visible := false;
  Image88.Visible := false; Image89.Visible := false; Image90.Visible := false;
  Image91.Visible := false; Image92.Visible := false; Image93.Visible := false;
  Image94.Visible := false; Image95.Visible := false; Image96.Visible := false;
  Image97.Visible := false; Image98.Visible := false; Image99.Visible := false;
  Image100.Visible := false; Image101.Visible := false; Image102.Visible := false;
  Image103.Visible := false; Image104.Visible := false; Image105.Visible := false;
  Image106.Visible := false; Image107.Visible := false; Image108.Visible := false;
  Image109.Visible := false; Image110.Visible := false; Image111.Visible := false;
  Image112.Visible := false; Image113.Visible := false; Image114.Visible := false;
  Image115.Visible := false; Image116.Visible := false; Image117.Visible := false;
  Image118.Visible := false; Image119.Visible := false; Image120.Visible := false;
  Image121.Visible := false; Image122.Visible := false; Image123.Visible := false;
  Image124.Visible := false; Image125.Visible := false; Image126.Visible := false;
  Image127.Visible := false; Image128.Visible := false; Image129.Visible := false;
  Image130.Visible := false
end;


{Muestra los datos de un jugador que fue seleccionado de la lista}
procedure TUIPrincipal.MostrarJugador1;
var cad: string; aux: tHabilidad; i: tCantHabilidades;
begin
  LimpiarPelot1;
  NumeroACadena(J.jugadores[jugador_selec].num, cad);
  cad := cad + ' - ' + J.jugadores[jugador_selec].nombre;
  Jugador1.Caption := cad;
  NumeroACadena(J.jugadores[jugador_selec].valor, cad);
  Edit2.Text := cad;
  NumeroACadena(J.jugadores[jugador_selec].sueldo, cad);
  Edit3.Text := cad;
  NumeroACadena(J.jugadores[jugador_selec].edad, cad);
  Edit4.Text := cad;
  NumeroACadena(J.jugadores[jugador_selec].altura, cad);
  Edit5.Text := cad;
  NumeroACadena(J.jugadores[jugador_selec].peso, cad);
  Edit6.Text := cad;

  {Habilidades}
  NumeroACadena(J.jugadores[jugador_selec].vel, cad);
  Edit8.Text := cad;
  aux := J.jugadores[jugador_selec].vel;
  case aux of
    1: Image1.Visible := true; 2: Image2.Visible := true; 3: Image3.Visible := true;
    4: Image4.Visible := true; 5: Image5.Visible := true; 6: Image6.Visible := true;
    7: Image7.Visible := true; 8: Image8.Visible := true;
    9: Image9.Visible := true; 10: Image10.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].resis, cad);
  Edit9.Text := cad;
  aux := J.jugadores[jugador_selec].resis;
  case aux of
    1: Image11.Visible := true; 2: Image12.Visible := true; 3: Image13.Visible := true;
    4: Image14.Visible := true; 5: Image15.Visible := true; 6: Image16.Visible := true;
    7: Image17.Visible := true; 8: Image18.Visible := true;
    9: Image19.Visible := true; 10: Image20.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].intel, cad);
  Edit10.Text := cad;
  aux := J.jugadores[jugador_selec].intel;
  case aux of
    1: Image21.Visible := true; 2: Image22.Visible := true; 3: Image23.Visible := true;
    4: Image24.Visible := true; 5: Image25.Visible := true; 6: Image26.Visible := true;
    7: Image27.Visible := true; 8: Image28.Visible := true;
    9: Image29.Visible := true; 10: Image30.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].pases, cad);
  Edit11.Text := cad;
  aux := J.jugadores[jugador_selec].pases;
  case aux of
    1: Image31.Visible := true; 2: Image32.Visible := true; 3: Image33.Visible := true;
    4: Image34.Visible := true; 5: Image35.Visible := true; 6: Image36.Visible := true;
    7: Image37.Visible := true; 8: Image38.Visible := true;
    9: Image39.Visible := true; 10: Image40.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].remat, cad);
  Edit12.Text := cad;
  aux := J.jugadores[jugador_selec].remat;
  case aux of
    1: Image41.Visible := true; 2: Image42.Visible := true; 3: Image43.Visible := true;
    4: Image44.Visible := true; 5: Image45.Visible := true; 6: Image46.Visible := true;
    7: Image47.Visible := true; 8: Image48.Visible := true;
    9: Image49.Visible := true; 10: Image50.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].cabeza, cad);
  Edit13.Text := cad;
  aux := J.jugadores[jugador_selec].cabeza;
  case aux of
    1: Image51.Visible := true; 2: Image52.Visible := true; 3: Image53.Visible := true;
    4: Image54.Visible := true; 5: Image55.Visible := true; 6: Image56.Visible := true;
    7: Image57.Visible := true; 8: Image58.Visible := true;
    9: Image59.Visible := true; 10: Image60.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].porteria, cad);
  Edit14.Text := cad;
  aux := J.jugadores[jugador_selec].porteria;
  case aux of
    1: Image61.Visible := true; 2: Image62.Visible := true; 3: Image63.Visible := true;
    4: Image64.Visible := true; 5: Image65.Visible := true; 6: Image66.Visible := true;
    7: Image67.Visible := true; 8: Image68.Visible := true;
    9: Image69.Visible := true; 10: Image70.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].contr, cad);
  Edit15.Text := cad;
  aux := J.jugadores[jugador_selec].contr;
  case aux of
    1: Image71.Visible := true; 2: Image72.Visible := true; 3: Image73.Visible := true;
    4: Image74.Visible := true; 5: Image75.Visible := true; 6: Image76.Visible := true;
    7: Image77.Visible := true; 8: Image78.Visible := true;
    9: Image79.Visible := true; 10: Image80.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].entradas, cad);
  Edit16.Text := cad;
  aux := J.jugadores[jugador_selec].entradas;
  case aux of
    1: Image81.Visible := true; 2: Image82.Visible := true; 3: Image83.Visible := true;
    4: Image84.Visible := true; 5: Image85.Visible := true; 6: Image86.Visible := true;
    7: Image87.Visible := true; 8: Image88.Visible := true;
    9: Image89.Visible := true; 10: Image90.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].cruzes, cad);
  Edit17.Text := cad;
  aux := J.jugadores[jugador_selec].cruzes;
  case aux of
    1: Image91.Visible := true; 2: Image92.Visible := true; 3: Image93.Visible := true;
    4: Image94.Visible := true; 5: Image95.Visible := true; 6: Image96.Visible := true;
    7: Image97.Visible := true; 8: Image98.Visible := true;
    9: Image99.Visible := true; 10: Image100.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].b_parado, cad);
  Edit18.Text := cad;
  aux := J.jugadores[jugador_selec].b_parado;
  case aux of
    1: Image101.Visible := true; 2: Image102.Visible := true; 3: Image103.Visible := true;
    4: Image104.Visible := true; 5: Image105.Visible := true; 6: Image106.Visible := true;
    7: Image107.Visible := true; 8: Image108.Visible := true;
    9: Image109.Visible := true; 10: Image110.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].exper, cad);
  Edit19.Text := cad;
  aux := J.jugadores[jugador_selec].exper;
  case aux of
    1: Image111.Visible := true; 2: Image112.Visible := true; 3: Image113.Visible := true;
    4: Image114.Visible := true; 5: Image115.Visible := true; 6: Image116.Visible := true;
    7: Image117.Visible := true; 8: Image118.Visible := true;
    9: Image119.Visible := true; 10: Image120.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].forma, cad);
  Edit20.Text := cad;
  aux := J.jugadores[jugador_selec].forma;
  case aux of
    1: Image121.Visible := true; 2: Image122.Visible := true; 3: Image123.Visible := true;
    4: Image124.Visible := true; 5: Image125.Visible := true; 6: Image126.Visible := true;
    7: Image127.Visible := true; 8: Image128.Visible := true;
    9: Image129.Visible := true; 10: Image130.Visible := true
  end;
  NumeroACadena(J.jugadores[jugador_selec].pelotitas, cad);
  Edit1.Text := cad;

  {Puntos por posición}
  NumeroACadena(J.jugadores[jugador_selec].puntos_arquero, cad);
  Edit39.Text := cad;
  NumeroACadena(J.jugadores[jugador_selec].puntos_defensa, cad);
  Edit40.Text := cad;
  NumeroACadena(J.jugadores[jugador_selec].puntos_medio, cad);
  Edit41.Text := cad;
  NumeroACadena(J.jugadores[jugador_selec].puntos_ataque, cad);
  Edit42.Text := cad;

  {Datos extras}
  case J.jugadores[jugador_selec].datos_extras.pie of
      ambidiestro: ComboPerfil.ItemIndex := 0;
      diestro: ComboPerfil.ItemIndex := 1;
      zurdo: ComboPerfil.ItemIndex := 2
  end;
  case J.jugadores[jugador_selec].datos_extras.deterioro of
      nada: begin
              ComboDeterioro.ItemIndex := 0;
              ComboDeterioro.Color := clWhite
            end;
      comun: begin
              ComboDeterioro.ItemIndex := 1;
              ComboDeterioro.Color := clOlive
            end;
      grave: begin
              ComboDeterioro.ItemIndex := 2;
              ComboDeterioro.Color := clRed
            end
  end;
  for i:=1 to 11 do
      if (J.jugadores[jugador_selec].datos_extras.estado_habilidades[i] = trabada)
          then case i of
                 1: Edit8.Color := clTeal;
                 2: Edit9.Color := clTeal;
                 3: Edit10.Color := clTeal;
                 4: Edit11.Color := clTeal;
                 5: Edit12.Color := clTeal;
                 6: Edit13.Color := clTeal;
                 7: Edit14.Color := clTeal;
                 8: Edit15.Color := clTeal;
                 9: Edit16.Color := clTeal;
                 10: Edit17.Color := clTeal;
                 11: Edit18.Color := clTeal;
               end
          else if (J.jugadores[jugador_selec].datos_extras.estado_habilidades[i] = buena)
                  then case i of
                         1: Edit8.Color := clYellow;
                         2: Edit9.Color := clYellow;
                         3: Edit10.Color := clYellow;
                         4: Edit11.Color := clYellow;
                         5: Edit12.Color := clYellow;
                         6: Edit13.Color := clYellow;
                         7: Edit14.Color := clYellow;
                         8: Edit15.Color := clYellow;
                         9: Edit16.Color := clYellow;
                         10: Edit17.Color := clYellow;
                         11: Edit18.Color := clYellow;
                       end
                  else case i of
                         1: Edit8.Color := clWhite;
                         2: Edit9.Color := clWhite;
                         3: Edit10.Color := clWhite;
                         4: Edit11.Color := clWhite;
                         5: Edit12.Color := clWhite;
                         6: Edit13.Color := clWhite;
                         7: Edit14.Color := clWhite;
                         8: Edit15.Color := clWhite;
                         9: Edit16.Color := clWhite;
                         10: Edit17.Color := clWhite;
                         11: Edit18.Color := clWhite;
                       end;

  {Muestro si es capitán, titulatçr, supente o juvenil}
  if (J.jugadores[jugador_selec].datos_extras.titular)
      then if (J.jugadores[jugador_selec].nombre = J.pri_capitan)
              then begin
                     Edit45.Text := 'EL CAPITÁN';
                     Edit45.Color := clGreen
                   end
              else if (J.jugadores[jugador_selec].nombre = J.segu_capitan)
                      then begin
                             Edit45.Text := '2º  CAPITÁN';
                             Edit45.Color := clTeal
                           end
                      else begin
                             Edit45.Text := '   TITULAR';
                             Edit45.Color := clLime
                           end
      else if (J.jugadores[jugador_selec].sueldo > 0)
              then begin
                     Edit45.Text := ' SUPLENTE';
                     Edit45.Color := clAqua
                   end
              else begin
                     Edit45.Text := '   JUVENIL';
                     Edit45.Color := clYellow
                   end
end;


{Genera la lista de jugadores y pone la cantidad total de jugadores}
procedure GenerarListas;
var jug: string; i: tCantJug;
begin
  NumeroACadena(J.cant, jug);        {Muestro la cantidad total de jugadores}
  UIPrincipal.Edit43.Text := jug;
  UIPrincipal.ListBox1.Items.Clear;
  UIPrincipal.ListEquipo.Items.Clear;
  UIPrincipal.ListTitulares.Items.Clear;
  for i:=1 to J.cant do
     begin
       NumeroACadena(J.jugadores[i].num, jug);
       if (J.jugadores[i].sueldo > 0)   {Si no es juvenil}
          then jug := jug + ' - ' + J.jugadores[i].nombre
          else jug := jug + ' - <' + J.jugadores[i].nombre + '>';
       UIPrincipal.ListBox1.Items.Add(jug);
       if (J.jugadores[i].datos_extras.titular)
          then UIPrincipal.ListTitulares.Items.Add(jug)
          else UIPrincipal.ListEquipo.Items.Add(jug)
     end;
end;


{Modifica un String que contiene un número real, agregandole separadores de miles y dejádole solamente 2 decimales}
procedure ModificarStringReal (cad_fea: String; var cad_real: String);
var i, k, largo: Smallint; hay_coma: Boolean; cad_aux: String;
begin
  cad_real := '';  cad_aux := '';
  hay_coma := false;
  largo := length(cad_fea);  i := largo - 1;    {Al menos un número después de la coma tiene}
  while ((i > 0) and (not hay_coma)) do
      if (cad_fea[i] = ',')
          then hay_coma := true
          else i := i - 1;
  if (hay_coma)
      then begin
             if ((i + 2) <= largo)       {Si tiene al menos 2 decimales}
                then cad_aux := cad_aux + cad_fea[i+2];      {Voy armando el número al vésre}
             cad_aux := cad_aux + cad_fea[i+1] + cad_fea[i];
             largo := i-1
           end;
  i := 0;         {Lo uso para contar los digitos y poner los puntos}
  for k:=largo downto 1 do
    begin
      if ((i = 3) or (i = 6) or (i = 9))   {A lo sumo se ponen 3 separadores (hasta 999 millones)}
         then cad_aux := cad_aux + '.';
      cad_aux := cad_aux + cad_fea[k];
      i := i + 1
    end;
  for k:=length(cad_aux) downto 1 do          {Doy vuelta el número real}
      cad_real := cad_real + cad_aux[k]
end;


{Limpia los Edits de los datos de los titulares}
procedure TUIPrincipal.LimpiarDatosTitu;
begin
  Edit21.Clear; Edit23.Clear; Edit28.Clear; Edit29.Clear; Edit30.Clear; Edit31.Clear;
  Edit32.Clear; Edit33.Clear; Edit34.Clear; Edit35.Clear; Edit38.Clear; Edit44.Clear;
end;


{Limpia los Edits de los datos del equipo}
procedure TUIPrincipal.LimpiarDatosEquipo;
begin
  Edit7.Clear; Edit22.Clear; Edit24.Clear; Edit25.Clear; Edit26.Clear;
  Edit27.Clear; Edit36.Clear; Edit37.Clear;
  LimpiarDatosTitu
end;


{Calcula el valor total, la cantidad y los datos promedios de los titulares en el tab DatosDelEquipo}
procedure TUIPrincipal.CalcularDatosTitulares;
var i, cant_titu: tCantJug; aux: Variant; cad_real: String;
    titulares: array [1..max_jug] of tCantJug;    {Voy guardando en un arreglo los índices }
begin                                           {de la estructura principal de los jugadores titulares}
  cant_titu := 0;   aux := 0;
  for i:=1 to J.cant do       {Me fijo si hay titulares y voy calculando el valor de los mismos}
      if (J.jugadores[i].datos_extras.titular)
          then begin
                 aux := aux + J.jugadores[i].valor;
                 cant_titu := cant_titu + 1;
                 titulares[cant_titu] := i
               end;
  if (cant_titu > 0)
     then begin
            NumeroACadena(cant_titu, cad_real);
            Edit44.Text := cad_real;
            ModificarStringReal(aux, cad_real);
            Edit38.Text := cad_real;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit21.Text := cad_real;
            aux := 0;                    {Sueldo}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].sueldo;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit23.Text := cad_real;
            aux := 0;                    {Edad}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].edad;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit28.Text := cad_real;
            aux := 0;                    {Altura}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].altura;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit29.Text := cad_real;
            aux := 0;                    {Peso}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].peso;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit30.Text := cad_real;
            aux := 0;                    {Forma}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].forma;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit35.Text := cad_real;
            aux := 0;                    {Velocidad}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].vel;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit31.Text := cad_real;
            aux := 0;                    {Resistencia}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].resis;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit32.Text := cad_real;
            aux := 0;                    {Inteligencia}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].intel;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit33.Text := cad_real;
            aux := 0;                    {Experiencia}
            for i:=1 to cant_titu do
                aux := aux + J.jugadores[titulares[i]].exper;
            aux := aux / cant_titu;
            ModificarStringReal(aux, cad_real);
            Edit34.Text := cad_real;
          end
     else LimpiarDatosTitu
end;


{Calcula los datos promedios del equipo en el tab DatosDelEquipo}
procedure TUIPrincipal.CalcularDatosEquipo;
var i, cant_jug: tCantJug; equipo: Variant; cad_real: String;
begin
  cant_jug := J.cant;  equipo := 0;        {Valor}
  for i:=1 to cant_jug do
      equipo := equipo + J.jugadores[i].valor;
  ModificarStringReal(equipo, cad_real);   {Le paso un Real que se convierte en un String (pero choto)}
  Edit36.Text := cad_real;
  equipo := equipo / cant_jug;
  ModificarStringReal(equipo, cad_real);
  Edit7.Text := cad_real;
  equipo := 0;                          {Sueldo}
  for i:=1 to cant_jug do
      equipo := equipo + J.jugadores[i].sueldo;
  ModificarStringReal(equipo, cad_real);
  Edit37.Text := cad_real;
  equipo := equipo / cant_jug;
  ModificarStringReal(equipo, cad_real);
  Edit22.Text := cad_real;
  equipo := 0;                           {Edad}
  for i:=1 to cant_jug do
      equipo := equipo + J.jugadores[i].edad;
  equipo := equipo / cant_jug;
  ModificarStringReal(equipo, cad_real);
  Edit24.Text := cad_real;
  equipo := 0;                           {Altura}
  for i:=1 to cant_jug do
      equipo := equipo + J.jugadores[i].altura;
  equipo := equipo / cant_jug;
  ModificarStringReal(equipo, cad_real);
  Edit25.Text := cad_real;
  equipo := 0;                           {Peso}
  for i:=1 to cant_jug do
      equipo := equipo + J.jugadores[i].peso;
  equipo := equipo / cant_jug;
  ModificarStringReal(equipo, cad_real);
  Edit26.Text := cad_real;
  equipo := 0;                           {Forma}
  for i:=1 to cant_jug do
      equipo := equipo + J.jugadores[i].forma;
  equipo := equipo / cant_jug;
  ModificarStringReal(equipo, cad_real);
  Edit27.Text := cad_real;
  CalcularDatosTitulares
end;


{Se encarga de darle los datos a UnidadCarga para que cargue los datos de los jugadores}
procedure TUIPrincipal.BotonCargarJugClick(Sender: TObject);
begin
  Memo1.Lines.Clear;        {Por si ya se habían cargado datos previamente sin cerrar el programa}
  Memo1.PasteFromClipboard;
  Memo1.Lines.SaveToFile('DatosJug.txt'); {Guardo los datos del portapapeles a un archivo de texto}
  CargarJugadores('DatosJug.txt', J);
  GenerarListas;
  deletefile('DatosJug.txt');
  PonerLabelPorDefecto;
  orden_selec := -1;
  ListaOrdenamientos.ItemIndex := -1;
  if (J.cant > 0)
      then CalcularDatosEquipo
      else LimpiarDatosEquipo
end;


{Busca que jugador se selecciona de la lista y se lo asigna a jugador_selec}
procedure TUIPrincipal.ListBox1Click(Sender: TObject);
var n: tCantJug; esta: boolean;
begin
  esta := false; n := 0;
  while (not esta) and (n < J.cant) do  {Busco qué jugador está seleccionado}
      begin
        esta := ListBox1.Selected[n];
        n := n + 1
      end;
  if (esta)
      then begin
             jugador_selec := n;
             MostrarJugador1
           end
end;


{Le pasa los datos a GuardarJugadores (UnidadCarga)}
procedure TUIPrincipal.BotonGuardarJugClick(Sender: TObject);
begin
  GuardarJugadores('Datos.jug', J)
end;


{Se encarga de cargar los datos de jugadores (que fueron guardados previamente) al inicio del programa}
procedure TUIPrincipal.FormCreate(Sender: TObject);
var hay: boolean;
begin
  CargarArchivo('Datos.jug', J, hay);
  orden_selec := -1;    {Al principio no hay ningún orden seleccionado}
  if (hay)      {Si hay datos previamente guardados, cargo la lista de jugadores}
     then begin
            GenerarListas;
            CalcularDatosEquipo
          end
     else J.cant := 0
end;


{Se encarga de generar los roles y mostrarlos en el form FormRoles}
procedure TUIPrincipal.BotonRolesClick(Sender: TObject);
begin
  Application.CreateForm(TFormRoles, FormRoles);
  FormRoles.Show;
  GenerarRoles(J);
end;


{Se encarga de poner por defecto la etiqueta que fue coloreada al seleccionar un ordenamiento}
procedure TUIPrincipal.PonerLabelPorDefecto;
begin
  case orden_selec of
    2: begin
         Label1.Font.Color := clBlack;
         Label1.Font.Style := [];
         Edit2.Font.Style := [];
         Edit2.Color := clWindow
       end;
    3: begin
         Label2.Font.Color := clBlack;
         Label2.Font.Style := [];
         Edit3.Font.Style := [];
         Edit3.Color := clWindow
       end;
    4: begin
         Label3.Font.Color := clBlack;
         Label3.Font.Style := [];
         Edit4.Font.Style := [];
         Edit4.Color := clWindow
       end;
    5: begin
         Label4.Font.Color := clBlack;
         Label4.Font.Style := [];
         Edit5.Font.Style := [];
         Edit5.Color := clWindow
       end;
    6: begin
         Label5.Font.Color := clBlack;
         Label5.Font.Style := [];
         Edit6.Font.Style := [];
         Edit6.Color := clWindow
       end;
    7: begin
         Label7.Font.Color := clBlack;
         Label7.Font.Style := []
       end;
    8: begin
         Label8.Font.Color := clBlack;
         Label8.Font.Style := []
       end;
    9: begin
         Label9.Font.Color := clBlack;
         Label9.Font.Style := []
        end;
    10: begin
         Label10.Font.Color := clBlack;
         Label10.Font.Style := []
       end;
    11: begin
         Label11.Font.Color := clBlack;
         Label11.Font.Style := []
       end;
    12: begin
         Label12.Font.Color := clBlack;
         Label12.Font.Style := []
       end;
    13: begin
         Label13.Font.Color := clBlack;
         Label13.Font.Style := []
       end;
    14: begin
         Label14.Font.Color := clBlack;
         Label14.Font.Style := []
       end;
    15: begin
         Label15.Font.Color := clBlack;
         Label15.Font.Style := []
       end;
    16: begin
         Label16.Font.Color := clBlack;
         Label16.Font.Style := []
       end;
    17: begin
         Label17.Font.Color := clBlack;
         Label17.Font.Style := []
       end;
    18: begin
         Label18.Font.Color := clBlack;
         Label18.Font.Style := []
       end;
    19: begin
         Label22.Font.Color := clBlack;
         Label22.Font.Style := [];
         Edit1.Font.Style := [];
         Edit1.Color := clWindow
       end;
    20: begin
         Label39.Font.Color := clBlack;
         Label39.Font.Style := [];
         Edit39.Font.Style := [];
         Edit39.Color := clWindow
       end;
    21: begin
         Label40.Font.Color := clBlack;
         Label40.Font.Style := [];
         Edit40.Font.Style := [];
         Edit40.Color := clWindow
       end;
    22: begin
         Label41.Font.Color := clBlack;
         Label41.Font.Style := [];
         Edit41.Font.Style := [];
         Edit41.Color := clWindow
       end;
    23: begin
         Label42.Font.Color := clBlack;
         Label42.Font.Style := [];
         Edit42.Font.Style := [];
         Edit42.Color := clWindow
       end;
  end
end;


{Se encarga de ponerle algún color a una etiqueta según el ordenamiento seleccionado}
procedure TUIPrincipal.Colorear;
begin
  case orden_selec of
    2: begin
         Label1.Font.Color := clGreen;
         Label1.Font.Style := [fsBold];
         Edit2.Font.Style := [fsBold];
         Edit2.Color := clGreen
       end;
    3: begin
         Label2.Font.Color := clGreen;
         Label2.Font.Style := [fsBold];
         Edit3.Font.Style := [fsBold];
         Edit3.Color := clGreen
       end;
    4: begin
         Label3.Font.Color := clGreen;
         Label3.Font.Style := [fsBold];
         Edit4.Font.Style := [fsBold];
         Edit4.Color := clGreen
       end;
    5: begin
         Label4.Font.Color := clGreen;
         Label4.Font.Style := [fsBold];
         Edit5.Font.Style := [fsBold];
         Edit5.Color := clGreen
       end;
    6: begin
         Label5.Font.Color := clGreen;
         Label5.Font.Style := [fsBold];
         Edit6.Font.Style := [fsBold];
         Edit6.Color := clGreen
       end;
    7: begin
         Label7.Font.Color := clGreen;
         Label7.Font.Style := [fsBold]
       end;
    8: begin
         Label8.Font.Color := clGreen;
         Label8.Font.Style := [fsBold]
       end;
    9: begin
         Label9.Font.Color := clGreen;
         Label9.Font.Style := [fsBold]
       end;
    10: begin
         Label10.Font.Color := clGreen;
         Label10.Font.Style := [fsBold]
       end;
    11: begin
         Label11.Font.Color := clGreen;
         Label11.Font.Style := [fsBold]
       end;
    12: begin
         Label12.Font.Color := clGreen;
         Label12.Font.Style := [fsBold]
       end;
    13: begin
         Label13.Font.Color := clGreen;
         Label13.Font.Style := [fsBold]
       end;
    14: begin
         Label14.Font.Color := clGreen;
         Label14.Font.Style := [fsBold]
       end;
    15: begin
         Label15.Font.Color := clGreen;
         Label15.Font.Style := [fsBold]
       end;
    16: begin
         Label16.Font.Color := clGreen;
         Label16.Font.Style := [fsBold]
       end;
    17: begin
         Label17.Font.Color := clGreen;
         Label17.Font.Style := [fsBold]
       end;
    18: begin
         Label18.Font.Color := clGreen;
         Label18.Font.Style := [fsBold]
       end;
    19: begin
         Label22.Font.Color := clGreen;
         Label22.Font.Style := [fsBold];
         Edit1.Font.Style := [fsBold];
         Edit1.Color := clGreen
       end;
    20: begin
         Label39.Font.Color := clGreen;
         Label39.Font.Style := [fsBold];
         Edit39.Font.Style := [fsBold];
         Edit39.Color := clGreen
       end;
    21: begin
         Label40.Font.Color := clGreen;
         Label40.Font.Style := [fsBold];
         Edit40.Font.Style := [fsBold];
         Edit40.Color := clGreen
       end;
    22: begin
         Label41.Font.Color := clGreen;
         Label41.Font.Style := [fsBold];
         Edit41.Font.Style := [fsBold];
         Edit41.Color := clGreen
       end;
    23: begin
         Label42.Font.Color := clGreen;
         Label42.Font.Style := [fsBold];
         Edit42.Font.Style := [fsBold];
         Edit42.Color := clGreen
       end;
  end
end;


{Se encarga de llamar al ordenamiento indicado}
procedure TUIPrincipal.ListaOrdenamientosClick(Sender: TObject);
var tipo_selec: Shortint;
begin
  tipo_selec := TipoOrden.ItemIndex;
  if (tipo_selec <> -1)       {Si hay alguno tipo seleccionado (ascendente ó descendente}
      then begin
             if (orden_selec <> -1)      {Si no es la 1era vez que se ordena}
                 then PonerLabelPorDefecto();
             orden_selec := ListaOrdenamientos.ItemIndex;
             if (tipo_selec = 0)
                then OrdenarMenorAMayor(J, orden_selec)
                else OrdenarMayorAMenor(J, orden_selec);
             GenerarListas;
             Colorear();
           end
end;


{Se encarga de determinar que perfil se seleccionó y de guardarlo en los datos extras del jugador seleccionado}
procedure TUIPrincipal.ComboPerfilChange(Sender: TObject);
var perfil: tPerfil;
begin
  case ComboPerfil.ItemIndex of
    0: perfil := ambidiestro;
    1: perfil := diestro;
    2: perfil := zurdo
    else perfil := ambidiestro
  end;
  J.jugadores[jugador_selec].datos_extras.pie := perfil
end;


{Se encarga de determinar que deterioro se seleccionó y de guardarlo en los datos extras del jugador seleccionado}
procedure TUIPrincipal.ComboDeterioroChange(Sender: TObject);
var deter: tDeterioro;
begin
  case ComboDeterioro.ItemIndex of
    0: deter := nada;
    1: deter := comun;
    2: deter := grave
    else deter := nada
  end;
  J.jugadores[jugador_selec].datos_extras.deterioro := deter
end;


{Se encargan de cambiar los colores de los Edits y de guardar la habilidad seleccionada en los datos extras del jugador seleccionado}
{Velocidad}
procedure TUIPrincipal.Edit8Click(Sender: TObject);
begin
  if (Edit8.Color = clWhite)
      then begin
             Edit8.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[1] := trabada
           end
      else if (Edit8.Color = clTeal)
               then begin
                      Edit8.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[1] := buena
                    end
               else begin
                      Edit8.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[1] := libre
                    end  
end;

{Resistencia}
procedure TUIPrincipal.Edit9Click(Sender: TObject);
begin
  if (Edit9.Color = clWhite)
      then begin
             Edit9.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[2] := trabada
           end
      else if (Edit9.Color = clTeal)
               then begin
                      Edit9.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[2] := buena
                    end
               else begin
                      Edit9.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[2] := libre
                    end
end;

{Inteligencia}
procedure TUIPrincipal.Edit10Click(Sender: TObject);
begin
  if (Edit10.Color = clWhite)
      then begin
             Edit10.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[3] := trabada
           end
      else if (Edit10.Color = clTeal)
               then begin
                      Edit10.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[3] := buena
                    end
               else begin
                      Edit10.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[3] := libre
                    end
end;

{Pases}
procedure TUIPrincipal.Edit11Click(Sender: TObject);
begin
  if (Edit11.Color = clWhite)
      then begin
             Edit11.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[4] := trabada
           end
      else if (Edit11.Color = clTeal)
               then begin
                      Edit11.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[4] := buena
                    end
               else begin
                      Edit11.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[4] := libre
                    end
end;

{Remate}
procedure TUIPrincipal.Edit12Click(Sender: TObject);
begin
  if (Edit12.Color = clWhite)
      then begin
             Edit12.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[5] := trabada
           end
      else if (Edit12.Color = clTeal)
               then begin
                      Edit12.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[5] := buena
                    end
               else begin
                      Edit12.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[5] := libre
                    end
end;

{Cabeza}
procedure TUIPrincipal.Edit13Click(Sender: TObject);
begin
  if (Edit13.Color = clWhite)
      then begin
             Edit13.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[6] := trabada
           end
      else if (Edit13.Color = clTeal)
               then begin
                      Edit13.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[6] := buena
                    end
               else begin
                      Edit13.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[6] := libre
                    end
end;

{Portería}
procedure TUIPrincipal.Edit14Click(Sender: TObject);
begin
  if (Edit14.Color = clWhite)
      then begin
             Edit14.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[7] := trabada
           end
      else if (Edit14.Color = clTeal)
               then begin
                      Edit14.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[7] := buena
                    end
               else begin
                      Edit14.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[7] := libre
                    end
end;

{Control}
procedure TUIPrincipal.Edit15Click(Sender: TObject);
begin
  if (Edit15.Color = clWhite)
      then begin
             Edit15.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[8] := trabada
           end
      else if (Edit15.Color = clTeal)
               then begin
                      Edit15.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[8] := buena
                    end
               else begin
                      Edit15.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[8] := libre
                    end
end;

{Entradas}
procedure TUIPrincipal.Edit16Click(Sender: TObject);
begin
  if (Edit16.Color = clWhite)
      then begin
             Edit16.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[9] := trabada
           end
      else if (Edit16.Color = clTeal)
               then begin
                      Edit16.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[9] := buena
                    end
               else begin
                      Edit16.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[9] := libre
                    end
end;

{Cruzes}
procedure TUIPrincipal.Edit17Click(Sender: TObject);
begin
  if (Edit17.Color = clWhite)
      then begin
             Edit17.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[10] := trabada
           end
      else if (Edit17.Color = clTeal)
               then begin
                      Edit17.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[10] := buena
                    end
               else begin
                      Edit17.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[10] := libre
                    end
end;

{Balón Parado}
procedure TUIPrincipal.Edit18Click(Sender: TObject);
begin
  if (Edit18.Color = clWhite)
      then begin
             Edit18.Color := clTeal;
             J.jugadores[jugador_selec].datos_extras.estado_habilidades[11] := trabada
           end
      else if (Edit18.Color = clTeal)
               then begin
                      Edit18.Color := clYellow;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[11] := buena
                    end
               else begin
                      Edit18.Color := clWhite;
                      J.jugadores[jugador_selec].datos_extras.estado_habilidades[11] := libre
                    end
end;


{Busca el jugador seleccionado de la lista del equipo, lo borra de la misma y lo pone cómo titu}
procedure TUIPrincipal.BotonAgregarTituClick(Sender: TObject);
var n, jug: tCantJug; esta: boolean; jugador, aux: String; i: Integer;
begin
  esta := false; n := 0;
  while ((not esta) and (n < ListEquipo.Items.Count)) do    {La lista va cambiando de tamaño}
      begin
        esta := ListEquipo.Selected[n];
        if (not esta)
            then n := n + 1
      end;
  if (esta)
      then begin
             aux := ListEquipo.Items.Strings[n];
             jugador := aux[1];       {Armo el número del jugador seleccionado}
             if (aux[2] <> ' ')       {Si tiene 2 dígitos}
                then jugador := jugador + aux[2];
             i := CadenaANumero(jugador);
             esta := false;   jug := 1;
             while ((not esta)) do
                  if (J.jugadores[jug].num = i)
                      then begin
                             esta := true;
                             J.jugadores[jug].datos_extras.titular := true
                           end
                      else jug := jug + 1;
             GenerarListas;
             CalcularDatosTitulares
           end
end;


{Busca el jugador seleccionado de la lista de los titu, lo borra de la misma y lo pone en la lista del equipo}
procedure TUIPrincipal.BotonQuitarTituClick(Sender: TObject);
var n, jug: tCantJug; esta: boolean; jugador, aux: String; i: Integer;
begin
  esta := false; n := 0;
  while ((not esta) and (n < ListTitulares.Items.Count)) do    {La lista va cambiando de tamaño}
      begin
        esta := ListTitulares.Selected[n];
        if (not esta)
            then n := n + 1
      end;
  if (esta)
      then begin
             aux := ListTitulares.Items.Strings[n];
             jugador := aux[1];       {Armo el número del jugador seleccionado}
             if (aux[2] <> ' ')       {Si tiene 2 dígitos}
                then jugador := jugador + aux[2];
             i := CadenaANumero(jugador);
             esta := false;   jug := 1;
             while ((not esta)) do
                  if (J.jugadores[jug].num = i)
                      then begin
                             esta := true;
                             J.jugadores[jug].datos_extras.titular := false
                           end
                      else jug := jug + 1;
             GenerarListas;
             CalcularDatosTitulares
           end
end;


{Pone al jugador seleccionado cómo capitán o 2do capitán}
procedure TUIPrincipal.Edit45Click(Sender: TObject);
begin
  if (J.jugadores[jugador_selec].datos_extras.titular)    {Si está marcado cómo titu}
     then if (Edit45.Text = '   TITULAR')
             then begin
                    Edit45.Text := 'EL CAPITÁN';
                    Edit45.Color := clGreen;
                    J.pri_capitan := J.jugadores[jugador_selec].nombre
                  end
             else if (Edit45.Text = 'EL CAPITÁN')
                     then begin
                            Edit45.Text := '2º  CAPITÁN';
                            Edit45.Color := clTeal;
                            J.pri_capitan := '';
                            J.segu_capitan := J.jugadores[jugador_selec].nombre
                          end
                     else begin
                            Edit45.Text := '   TITULAR';
                            Edit45.Color := clLime;
                            J.segu_capitan := ''
                          end
end;




END.
