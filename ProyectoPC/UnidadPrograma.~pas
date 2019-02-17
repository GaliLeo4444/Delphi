UNIT UnidadPrograma;


{Tema 1: Se solicita implementar un programa con ventanas que cumpla los siguientes
requerimientos:
1) Abrir y mostrar una imagen.
2) Generar un recorrido con 40 puntos (x, y) que se encuentren en el rango del
tamaño de la imagen.
3) Guardar el archivo de recorrido generado.
4) Se deberá crear un historial de las imágenes cargadas y de los recorridos
generados para cada una de ellas.
5) El usuario podrá elegir visualizar el recorrido sobre cualquier imagen generada.}


INTERFACE


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs, UCaminos, UPantallaCompleta, UAcercaDe;


type
  TForm1 = class(TForm)
    PanelPuntosI: TPanel;
    PanelPuntosD: TPanel;
    ButtonGenerarP: TButton;
    ButtonGuardarRec: TButton;
    ListaHistorial: TComboBox;
    OpenImgDialog: TOpenPictureDialog;
    ButtonAbrir: TButton;
    ButtonCargarRec: TButton;
    SaveRecDialog: TSaveDialog;
    OpenRecDialog: TOpenDialog;
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
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
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
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
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
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    ButtonCargarPuntos: TButton;
    Imagen: TImage;
    LabelPixeles: TLabel;
    ButtonExpImg: TButton;
    ButtonPantallaComp: TButton;
    CheckBoxDibujarP: TCheckBox;
    ButtonBorrarP: TButton;
    SaveImgDialog: TSaveDialog;
    ListGrosorLinea: TListBox;
    LabelColor: TLabel;
    LabelGrosor: TLabel;
    ListColorLinea: TComboBox;
    ButtonAcercaDe: TButton;
    procedure ButtonGenerarPClick(Sender: TObject);
    procedure ButtonAbrirClick(Sender: TObject);
    procedure ButtonGuardarRecClick(Sender: TObject);
    procedure ListaHistorialSelect(Sender: TObject);
    procedure ButtonCargarRecClick(Sender: TObject);
    procedure ButtonCargarPuntosClick(Sender: TObject);
    procedure ButtonBorrarPClick(Sender: TObject);
    procedure CheckBoxDibujarPClick(Sender: TObject);
    procedure ButtonExpImgClick(Sender: TObject);
    procedure ButtonPantallaCompClick(Sender: TObject);
    procedure ListColorLineaChange(Sender: TObject);
    procedure ButtonAcercaDeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
end;


var
  Form1: TForm1;




IMPLEMENTATION
{$R *.dfm}


var
   IMG: tListaImg;    //Va manteniendo la imagen actual (y sus puntos asociados si fueron cargados)
   H: tListaImg;      //Va manteniendo temporalmente en una lista las imagenes y recorridos cargados por el usuario durante la ejecución del programa
   ancho, alto: Word;     //Representan el ancho y el alto de la imagen actual
   color_linea: TColor;   //Para saber el color seleccionado para dibujar



//Crea una nueva celda y la inserta al inicio de la lista enlazada
procedure CrearElemListaHistorial;
var
  puntero_temp: tListaImg;
begin
  puntero_temp := H;
  New(H);                            //Inserto al principio del historial
  H^.next := puntero_temp;
  IMG := H;                      //La imagen actual pasa a ser la última abierta
end;


//Limpia todos los Edit's de los puntos
procedure LimpiarPuntos;
begin
  Form1.Edit1.Clear;  Form1.Edit1.Color := clWindow;  Form1.Edit2.Clear;  Form1.Edit2.Color := clWindow;
  Form1.Edit3.Clear;  Form1.Edit3.Color := clWindow;  Form1.Edit4.Clear;  Form1.Edit4.Color := clWindow;
  Form1.Edit5.Clear;  Form1.Edit5.Color := clWindow;  Form1.Edit6.Clear;  Form1.Edit6.Color := clWindow;
  Form1.Edit7.Clear;  Form1.Edit7.Color := clWindow;  Form1.Edit8.Clear;  Form1.Edit8.Color := clWindow;
  Form1.Edit9.Clear;  Form1.Edit9.Color := clWindow;  Form1.Edit10.Clear;  Form1.Edit10.Color := clWindow;
  Form1.Edit11.Clear;  Form1.Edit11.Color := clWindow;  Form1.Edit12.Clear;  Form1.Edit12.Color := clWindow;
  Form1.Edit13.Clear;  Form1.Edit13.Color := clWindow;  Form1.Edit14.Clear;  Form1.Edit14.Color := clWindow;
  Form1.Edit15.Clear;  Form1.Edit15.Color := clWindow;  Form1.Edit16.Clear;  Form1.Edit16.Color := clWindow;
  Form1.Edit17.Clear;  Form1.Edit17.Color := clWindow;  Form1.Edit18.Clear;  Form1.Edit18.Color := clWindow;
  Form1.Edit19.Clear;  Form1.Edit19.Color := clWindow;  Form1.Edit20.Clear;  Form1.Edit20.Color := clWindow;
  Form1.Edit21.Clear;  Form1.Edit21.Color := clWindow;  Form1.Edit22.Clear;  Form1.Edit22.Color := clWindow;
  Form1.Edit23.Clear;  Form1.Edit23.Color := clWindow;  Form1.Edit24.Clear;  Form1.Edit24.Color := clWindow;
  Form1.Edit25.Clear;  Form1.Edit25.Color := clWindow;  Form1.Edit26.Clear;  Form1.Edit26.Color := clWindow;
  Form1.Edit27.Clear;  Form1.Edit27.Color := clWindow;  Form1.Edit28.Clear;  Form1.Edit28.Color := clWindow;
  Form1.Edit29.Clear;  Form1.Edit29.Color := clWindow;  Form1.Edit30.Clear;  Form1.Edit30.Color := clWindow;
  Form1.Edit31.Clear;  Form1.Edit31.Color := clWindow;  Form1.Edit32.Clear;  Form1.Edit32.Color := clWindow;
  Form1.Edit33.Clear;  Form1.Edit33.Color := clWindow;  Form1.Edit34.Clear;  Form1.Edit34.Color := clWindow;
  Form1.Edit35.Clear;  Form1.Edit35.Color := clWindow;  Form1.Edit36.Clear;  Form1.Edit36.Color := clWindow;
  Form1.Edit37.Clear;  Form1.Edit37.Color := clWindow;  Form1.Edit38.Clear;  Form1.Edit38.Color := clWindow;
  Form1.Edit39.Clear;  Form1.Edit39.Color := clWindow;  Form1.Edit40.Clear;  Form1.Edit40.Color := clWindow;
  Form1.Edit41.Clear;  Form1.Edit41.Color := clWindow;  Form1.Edit42.Clear;  Form1.Edit42.Color := clWindow;
  Form1.Edit43.Clear;  Form1.Edit43.Color := clWindow;  Form1.Edit44.Clear;  Form1.Edit44.Color := clWindow;
  Form1.Edit45.Clear;  Form1.Edit45.Color := clWindow;  Form1.Edit46.Clear;  Form1.Edit46.Color := clWindow;
  Form1.Edit47.Clear;  Form1.Edit47.Color := clWindow;  Form1.Edit48.Clear;  Form1.Edit48.Color := clWindow;
  Form1.Edit49.Clear;  Form1.Edit49.Color := clWindow;  Form1.Edit50.Clear;  Form1.Edit50.Color := clWindow;
  Form1.Edit51.Clear;  Form1.Edit51.Color := clWindow;  Form1.Edit52.Clear;  Form1.Edit52.Color := clWindow;
  Form1.Edit53.Clear;  Form1.Edit53.Color := clWindow;  Form1.Edit54.Clear;  Form1.Edit54.Color := clWindow;
  Form1.Edit55.Clear;  Form1.Edit55.Color := clWindow;  Form1.Edit56.Clear;  Form1.Edit56.Color := clWindow;
  Form1.Edit57.Clear;  Form1.Edit57.Color := clWindow;  Form1.Edit58.Clear;  Form1.Edit58.Color := clWindow;
  Form1.Edit59.Clear;  Form1.Edit59.Color := clWindow;  Form1.Edit60.Clear;  Form1.Edit60.Color := clWindow;
  Form1.Edit61.Clear;  Form1.Edit61.Color := clWindow;  Form1.Edit62.Clear;  Form1.Edit62.Color := clWindow;
  Form1.Edit63.Clear;  Form1.Edit63.Color := clWindow;  Form1.Edit64.Clear;  Form1.Edit64.Color := clWindow;
  Form1.Edit65.Clear;  Form1.Edit65.Color := clWindow;  Form1.Edit66.Clear;  Form1.Edit66.Color := clWindow;
  Form1.Edit67.Clear;  Form1.Edit67.Color := clWindow;  Form1.Edit68.Clear;  Form1.Edit68.Color := clWindow;
  Form1.Edit69.Clear;  Form1.Edit69.Color := clWindow;  Form1.Edit70.Clear;  Form1.Edit70.Color := clWindow;
  Form1.Edit71.Clear;  Form1.Edit71.Color := clWindow;  Form1.Edit72.Clear;  Form1.Edit72.Color := clWindow;
  Form1.Edit73.Clear;  Form1.Edit73.Color := clWindow;  Form1.Edit74.Clear;  Form1.Edit74.Color := clWindow;
  Form1.Edit75.Clear;  Form1.Edit75.Color := clWindow;  Form1.Edit76.Clear;  Form1.Edit76.Color := clWindow;
  Form1.Edit77.Clear;  Form1.Edit77.Color := clWindow;  Form1.Edit78.Clear;  Form1.Edit78.Color := clWindow;
  Form1.Edit79.Clear;  Form1.Edit79.Color := clWindow;  Form1.Edit80.Clear;  Form1.Edit80.Color := clWindow;
end;


//Carga una imagen desde archivo.
procedure CargarImagen (ruta: String);
begin
  if FileExists(ruta) then begin
     Form1.Imagen.Picture.LoadFromFile(ruta);
     ancho := Form1.Imagen.picture.Bitmap.Width;
     alto := Form1.Imagen.picture.Bitmap.Height;
     Form1.LabelPixeles.Caption := 'Tamaño: ' + IntToStr(ancho) + ' x ' + IntToStr(alto) + ' pixeles'
  end
  else
      MessageDlg('El archivo de imagen no existe o ha sido movido!!!!', mtInformation, [mbOk], 0);
end;


//Va agregando en el ComboBox y en la lista temporal el historial de las últimas imágenes abiertas.
procedure TForm1.ButtonAbrirClick(Sender: TObject);
begin
  if (OpenImgDialog.Execute) then begin
     LimpiarPuntos;
     CrearElemListaHistorial;
     IMG^.img_rec.nom_img := OpenImgDialog.FileName;
     IMG^.img_rec.p_cargados := false;                          //Ningún punto aún fue cargado
     ListaHistorial.Items.Insert(0, IMG^.img_rec.nom_img);  //Inserto al principio del ComboBox
     ListaHistorial.ItemIndex := 0;                         //Queda seleccionado el último agregado
     CargarImagen(IMG^.img_rec.nom_img)
  end
end;


//Muestra lps puntos asociados a la imagen actual
procedure MostrarPuntos;
begin
  Form1.Edit1.Text := IntToStr(IMG^.img_rec.P[1].x);
  Form1.Edit2.Text := IntToStr(IMG^.img_rec.P[1].y);
  if (Form1.Edit2.Text = '0') then begin Form1.Edit1.Color := clRed; Form1.Edit2.Color := clRed end;
  Form1.Edit3.Text := IntToStr(IMG^.img_rec.P[2].x);
  Form1.Edit4.Text := IntToStr(IMG^.img_rec.P[2].y);
  if (Form1.Edit4.Text = '0') then begin Form1.Edit3.Color := clRed; Form1.Edit4.Color := clRed end;
  Form1.Edit5.Text := IntToStr(IMG^.img_rec.P[3].x);
  Form1.Edit6.Text := IntToStr(IMG^.img_rec.P[3].y);
  if (Form1.Edit6.Text = '0') then begin Form1.Edit5.Color := clRed; Form1.Edit6.Color := clRed end;
  Form1.Edit7.Text := IntToStr(IMG^.img_rec.P[4].x);
  Form1.Edit8.Text := IntToStr(IMG^.img_rec.P[4].y);
  if (Form1.Edit8.Text = '0') then begin Form1.Edit7.Color := clRed; Form1.Edit8.Color := clRed end;
  Form1.Edit9.Text := IntToStr(IMG^.img_rec.P[5].x);
  Form1.Edit10.Text := IntToStr(IMG^.img_rec.P[5].y);
  if (Form1.Edit10.Text = '0') then begin Form1.Edit9.Color := clRed; Form1.Edit10.Color := clRed end;
  Form1.Edit11.Text := IntToStr(IMG^.img_rec.P[6].x);
  Form1.Edit12.Text := IntToStr(IMG^.img_rec.P[6].y);
  if (Form1.Edit12.Text = '0') then begin Form1.Edit11.Color := clRed; Form1.Edit12.Color := clRed end;
  Form1.Edit13.Text := IntToStr(IMG^.img_rec.P[7].x);
  Form1.Edit14.Text := IntToStr(IMG^.img_rec.P[7].y);
  if (Form1.Edit14.Text = '0') then begin Form1.Edit13.Color := clRed; Form1.Edit14.Color := clRed end;
  Form1.Edit15.Text := IntToStr(IMG^.img_rec.P[8].x);
  Form1.Edit16.Text := IntToStr(IMG^.img_rec.P[8].y);
  if (Form1.Edit16.Text = '0') then begin Form1.Edit15.Color := clRed; Form1.Edit16.Color := clRed end;
  Form1.Edit17.Text := IntToStr(IMG^.img_rec.P[9].x);
  Form1.Edit18.Text := IntToStr(IMG^.img_rec.P[9].y);
  if (Form1.Edit18.Text = '0') then begin Form1.Edit17.Color := clRed; Form1.Edit18.Color := clRed end;
  Form1.Edit19.Text := IntToStr(IMG^.img_rec.P[10].x);
  Form1.Edit20.Text := IntToStr(IMG^.img_rec.P[10].y);
  if (Form1.Edit20.Text = '0') then begin Form1.Edit19.Color := clRed; Form1.Edit20.Color := clRed end;
  Form1.Edit21.Text := IntToStr(IMG^.img_rec.P[11].x);
  Form1.Edit22.Text := IntToStr(IMG^.img_rec.P[11].y);
  if (Form1.Edit22.Text = '0') then begin Form1.Edit21.Color := clRed; Form1.Edit22.Color := clRed end;
  Form1.Edit23.Text := IntToStr(IMG^.img_rec.P[12].x);
  Form1.Edit24.Text := IntToStr(IMG^.img_rec.P[12].y);
  if (Form1.Edit24.Text = '0') then begin Form1.Edit23.Color := clRed; Form1.Edit24.Color := clRed end;
  Form1.Edit25.Text := IntToStr(IMG^.img_rec.P[13].x);
  Form1.Edit26.Text := IntToStr(IMG^.img_rec.P[13].y);
  if (Form1.Edit26.Text = '0') then begin Form1.Edit25.Color := clRed; Form1.Edit26.Color := clRed end;
  Form1.Edit27.Text := IntToStr(IMG^.img_rec.P[14].x);
  Form1.Edit28.Text := IntToStr(IMG^.img_rec.P[14].y);
  if (Form1.Edit28.Text = '0') then begin Form1.Edit27.Color := clRed; Form1.Edit28.Color := clRed end;
  Form1.Edit29.Text := IntToStr(IMG^.img_rec.P[15].x);
  Form1.Edit30.Text := IntToStr(IMG^.img_rec.P[15].y);
  if (Form1.Edit30.Text = '0') then begin Form1.Edit29.Color := clRed; Form1.Edit30.Color := clRed end;
  Form1.Edit31.Text := IntToStr(IMG^.img_rec.P[16].x);
  Form1.Edit32.Text := IntToStr(IMG^.img_rec.P[16].y);
  if (Form1.Edit32.Text = '0') then begin Form1.Edit31.Color := clRed; Form1.Edit32.Color := clRed end;
  Form1.Edit33.Text := IntToStr(IMG^.img_rec.P[17].x);
  Form1.Edit34.Text := IntToStr(IMG^.img_rec.P[17].y);
  if (Form1.Edit34.Text = '0') then begin Form1.Edit33.Color := clRed; Form1.Edit34.Color := clRed end;
  Form1.Edit35.Text := IntToStr(IMG^.img_rec.P[18].x);
  Form1.Edit36.Text := IntToStr(IMG^.img_rec.P[18].y);
  if (Form1.Edit36.Text = '0') then begin Form1.Edit35.Color := clRed; Form1.Edit36.Color := clRed end;
  Form1.Edit37.Text := IntToStr(IMG^.img_rec.P[19].x);
  Form1.Edit38.Text := IntToStr(IMG^.img_rec.P[19].y);
  if (Form1.Edit38.Text = '0') then begin Form1.Edit37.Color := clRed; Form1.Edit38.Color := clRed end;
  Form1.Edit39.Text := IntToStr(IMG^.img_rec.P[20].x);
  Form1.Edit40.Text := IntToStr(IMG^.img_rec.P[20].y);
  if (Form1.Edit40.Text = '0') then begin Form1.Edit39.Color := clRed; Form1.Edit40.Color := clRed end;
  Form1.Edit41.Text := IntToStr(IMG^.img_rec.P[21].x);
  Form1.Edit42.Text := IntToStr(IMG^.img_rec.P[21].y);
  if (Form1.Edit42.Text = '0') then begin Form1.Edit41.Color := clRed; Form1.Edit42.Color := clRed end;
  Form1.Edit43.Text := IntToStr(IMG^.img_rec.P[22].x);
  Form1.Edit44.Text := IntToStr(IMG^.img_rec.P[22].y);
  if (Form1.Edit44.Text = '0') then begin Form1.Edit43.Color := clRed; Form1.Edit44.Color := clRed end;
  Form1.Edit45.Text := IntToStr(IMG^.img_rec.P[23].x);
  Form1.Edit46.Text := IntToStr(IMG^.img_rec.P[23].y);
  if (Form1.Edit46.Text = '0') then begin Form1.Edit45.Color := clRed; Form1.Edit46.Color := clRed end;
  Form1.Edit47.Text := IntToStr(IMG^.img_rec.P[24].x);
  Form1.Edit48.Text := IntToStr(IMG^.img_rec.P[24].y);
  if (Form1.Edit48.Text = '0') then begin Form1.Edit47.Color := clRed; Form1.Edit48.Color := clRed end;
  Form1.Edit49.Text := IntToStr(IMG^.img_rec.P[25].x);
  Form1.Edit50.Text := IntToStr(IMG^.img_rec.P[25].y);
  if (Form1.Edit50.Text = '0') then begin Form1.Edit49.Color := clRed; Form1.Edit50.Color := clRed end;
  Form1.Edit51.Text := IntToStr(IMG^.img_rec.P[26].x);
  Form1.Edit52.Text := IntToStr(IMG^.img_rec.P[26].y);
  if (Form1.Edit52.Text = '0') then begin Form1.Edit51.Color := clRed; Form1.Edit52.Color := clRed end;
  Form1.Edit53.Text := IntToStr(IMG^.img_rec.P[27].x);
  Form1.Edit54.Text := IntToStr(IMG^.img_rec.P[27].y);
  if (Form1.Edit54.Text = '0') then begin Form1.Edit53.Color := clRed; Form1.Edit54.Color := clRed end;
  Form1.Edit55.Text := IntToStr(IMG^.img_rec.P[28].x);
  Form1.Edit56.Text := IntToStr(IMG^.img_rec.P[28].y);
  if (Form1.Edit56.Text = '0') then begin Form1.Edit55.Color := clRed; Form1.Edit56.Color := clRed end;
  Form1.Edit57.Text := IntToStr(IMG^.img_rec.P[29].x);
  Form1.Edit58.Text := IntToStr(IMG^.img_rec.P[29].y);
  if (Form1.Edit58.Text = '0') then begin Form1.Edit57.Color := clRed; Form1.Edit58.Color := clRed end;
  Form1.Edit59.Text := IntToStr(IMG^.img_rec.P[30].x);
  Form1.Edit60.Text := IntToStr(IMG^.img_rec.P[30].y);
  if (Form1.Edit60.Text = '0') then begin Form1.Edit59.Color := clRed; Form1.Edit60.Color := clRed end;
  Form1.Edit61.Text := IntToStr(IMG^.img_rec.P[31].x);
  Form1.Edit62.Text := IntToStr(IMG^.img_rec.P[31].y);
  if (Form1.Edit62.Text = '0') then begin Form1.Edit61.Color := clRed; Form1.Edit62.Color := clRed end;
  Form1.Edit63.Text := IntToStr(IMG^.img_rec.P[32].x);
  Form1.Edit64.Text := IntToStr(IMG^.img_rec.P[32].y);
  if (Form1.Edit64.Text = '0') then begin Form1.Edit63.Color := clRed; Form1.Edit64.Color := clRed end;
  Form1.Edit65.Text := IntToStr(IMG^.img_rec.P[33].x);
  Form1.Edit66.Text := IntToStr(IMG^.img_rec.P[33].y);
  if (Form1.Edit66.Text = '0') then begin Form1.Edit65.Color := clRed; Form1.Edit66.Color := clRed end;
  Form1.Edit67.Text := IntToStr(IMG^.img_rec.P[34].x);
  Form1.Edit68.Text := IntToStr(IMG^.img_rec.P[34].y);
  if (Form1.Edit68.Text = '0') then begin Form1.Edit67.Color := clRed; Form1.Edit68.Color := clRed end;
  Form1.Edit69.Text := IntToStr(IMG^.img_rec.P[35].x);
  Form1.Edit70.Text := IntToStr(IMG^.img_rec.P[35].y);
  if (Form1.Edit70.Text = '0') then begin Form1.Edit69.Color := clRed; Form1.Edit70.Color := clRed end;
  Form1.Edit71.Text := IntToStr(IMG^.img_rec.P[36].x);
  Form1.Edit72.Text := IntToStr(IMG^.img_rec.P[36].y);
  if (Form1.Edit72.Text = '0') then begin Form1.Edit71.Color := clRed; Form1.Edit72.Color := clRed end;
  Form1.Edit73.Text := IntToStr(IMG^.img_rec.P[37].x);
  Form1.Edit74.Text := IntToStr(IMG^.img_rec.P[37].y);
  if (Form1.Edit74.Text = '0') then begin Form1.Edit73.Color := clRed; Form1.Edit74.Color := clRed end;
  Form1.Edit75.Text := IntToStr(IMG^.img_rec.P[38].x);
  Form1.Edit76.Text := IntToStr(IMG^.img_rec.P[38].y);
  if (Form1.Edit76.Text = '0') then begin Form1.Edit75.Color := clRed; Form1.Edit76.Color := clRed end;
  Form1.Edit77.Text := IntToStr(IMG^.img_rec.P[39].x);
  Form1.Edit78.Text := IntToStr(IMG^.img_rec.P[39].y);
  if (Form1.Edit78.Text = '0') then begin Form1.Edit77.Color := clRed; Form1.Edit78.Color := clRed end;
  Form1.Edit79.Text := IntToStr(IMG^.img_rec.P[40].x);
  Form1.Edit80.Text := IntToStr(IMG^.img_rec.P[40].y);
  if (Form1.Edit80.Text = '0') then begin Form1.Edit79.Color := clRed; Form1.Edit80.Color := clRed end;
end;


//Genera los puntos aleatoriamente y los asocia con la imagen actual
procedure TForm1.ButtonGenerarPClick(Sender: TObject);
var
  i: integer;
begin
  if (IMG = nil) then     //No hay ninguna imagen abierta
     MessageDlg('Primero debe abrir alguna imagen!!!!', mtInformation, [mbOk], 0)
  else begin
    LimpiarPuntos;
    Randomize;
    for i:=1 to cant_puntos do begin
        IMG^.img_rec.P[i].x := random(ancho);
        IMG^.img_rec.P[i].y := random(alto);
    end;
    IMG^.img_rec.p_cargados := true;
    MostrarPuntos;
  end
end;


//Dibuja las líneas según los puntos cargados sobre la imagen actual
procedure DibujarPuntos;
var
  i, cont_lineas: Integer;
  p_ant_valido: Boolean;
begin
  Form1.Imagen.Canvas.pen.Style := psSolid;
  Form1.Imagen.Canvas.pen.Width := Form1.ListGrosorLinea.TopIndex + 1;     //ItemIndex arraca de 0
  Form1.Imagen.Canvas.pen.Color := color_linea;
  p_ant_valido := false;    cont_lineas := 0;
  for i := 1 to cant_puntos do begin
      if (p_ant_valido) then
          if (IMG^.img_rec.P[i].x <> 0) then begin      //X=0 <==> Y=0
             Form1.Imagen.Canvas.MoveTo(IMG^.img_rec.P[i-1].x, IMG^.img_rec.P[i-1].y);
             Form1.Imagen.Canvas.LineTo(IMG^.img_rec.P[i].x, IMG^.img_rec.P[i].y);
             cont_lineas := cont_lineas + 1;
          end;
      if (IMG^.img_rec.P[i].x <> 0) then
          p_ant_valido := true
      else
          p_ant_valido := false
  end;
  MessageDlg('Se Dibujaron ' + IntToStr(cont_lineas) + ' líneas', mtInformation, [mbOk], 0);
end;


procedure ActualizarPantalla;
begin
  CargarImagen(IMG^.img_rec.nom_img);
  LimpiarPuntos;
  if (IMG^.img_rec.p_cargados) then begin
      MostrarPuntos;
      if (Form1.CheckBoxDibujarP.Checked) then
          DibujarPuntos
  end
end;


//Cheque los puntos ingresados manualmente por el usuario y los asocia con la imagen actual
//Los puntos (0, 0) se usan como puntos no válidos
procedure TForm1.ButtonCargarPuntosClick(Sender: TObject);
var
  numX, numY: integer;
begin
  if (IMG = nil) then begin    //No hay ninguna imagen abierta
     MessageDlg('Primero debe abrir alguna imagen!!!!', mtInformation, [mbOk], 0);
     Exit
  end;
  if ((Edit1.Text = '') or (Edit2.Text = '')) then begin             //Punto 1
      IMG^.img_rec.P[1].x := 0;   IMG^.img_rec.P[1].y := 0;
  end
  else begin
    numX := StrToInt(Edit1.Text);     numY := StrToInt(Edit2.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[1].x := numX;   IMG^.img_rec.P[1].y := numY;
    end
    else begin
       IMG^.img_rec.P[1].x := 0;   IMG^.img_rec.P[1].y := 0;
    end
  end;
  if ((Edit3.Text = '') or (Edit4.Text = '')) then begin             //Punto 2
      IMG^.img_rec.P[2].x := 0;   IMG^.img_rec.P[2].y := 0;
  end
  else begin
    numX := StrToInt(Edit3.Text);     numY := StrToInt(Edit4.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[2].x := numX;   IMG^.img_rec.P[2].y := numY;
    end
    else begin
       IMG^.img_rec.P[2].x := 0;   IMG^.img_rec.P[2].y := 0;
    end
  end;
  if ((Edit5.Text = '') or (Edit6.Text = '')) then begin             //Punto 3
      IMG^.img_rec.P[3].x := 0;   IMG^.img_rec.P[3].y := 0;
  end
  else begin
    numX := StrToInt(Edit5.Text);     numY := StrToInt(Edit6.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[3].x := numX;   IMG^.img_rec.P[3].y := numY;
    end
    else begin
       IMG^.img_rec.P[3].x := 0;   IMG^.img_rec.P[3].y := 0;
    end
  end;
  if ((Edit7.Text = '') or (Edit8.Text = '')) then begin             //Punto 4
      IMG^.img_rec.P[4].x := 0;   IMG^.img_rec.P[4].y := 0;
  end
  else begin
    numX := StrToInt(Edit7.Text);     numY := StrToInt(Edit8.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[4].x := numX;   IMG^.img_rec.P[4].y := numY;
    end
    else begin
       IMG^.img_rec.P[4].x := 0;   IMG^.img_rec.P[4].y := 0;
    end
  end;
  if ((Edit9.Text = '') or (Edit10.Text = '')) then begin             //Punto 5
      IMG^.img_rec.P[5].x := 0;   IMG^.img_rec.P[5].y := 0;
  end
  else begin
    numX := StrToInt(Edit9.Text);     numY := StrToInt(Edit10.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[5].x := numX;   IMG^.img_rec.P[5].y := numY;
    end
    else begin
       IMG^.img_rec.P[5].x := 0;   IMG^.img_rec.P[5].y := 0;
    end
  end;
  if ((Edit11.Text = '') or (Edit12.Text = '')) then begin             //Punto 6
      IMG^.img_rec.P[6].x := 0;   IMG^.img_rec.P[6].y := 0;
  end
  else begin
    numX := StrToInt(Edit11.Text);     numY := StrToInt(Edit12.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[6].x := numX;   IMG^.img_rec.P[6].y := numY;
    end
    else begin
       IMG^.img_rec.P[6].x := 0;   IMG^.img_rec.P[6].y := 0;
    end
  end;
  if ((Edit13.Text = '') or (Edit14.Text = '')) then begin             //Punto 7
      IMG^.img_rec.P[7].x := 0;   IMG^.img_rec.P[7].y := 0;
  end
  else begin
    numX := StrToInt(Edit13.Text);     numY := StrToInt(Edit14.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[7].x := numX;   IMG^.img_rec.P[7].y := numY;
    end
    else begin
       IMG^.img_rec.P[7].x := 0;   IMG^.img_rec.P[7].y := 0;
    end
  end;
  if ((Edit15.Text = '') or (Edit16.Text = '')) then begin             //Punto 8
      IMG^.img_rec.P[8].x := 0;   IMG^.img_rec.P[8].y := 0;
  end
  else begin
    numX := StrToInt(Edit15.Text);     numY := StrToInt(Edit16.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[8].x := numX;   IMG^.img_rec.P[8].y := numY;
    end
    else begin
       IMG^.img_rec.P[8].x := 0;   IMG^.img_rec.P[8].y := 0;
    end
  end;
  if ((Edit17.Text = '') or (Edit18.Text = '')) then begin             //Punto 9
      IMG^.img_rec.P[9].x := 0;   IMG^.img_rec.P[9].y := 0;
  end
  else begin
    numX := StrToInt(Edit17.Text);     numY := StrToInt(Edit18.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[9].x := numX;   IMG^.img_rec.P[9].y := numY;
    end
    else begin
       IMG^.img_rec.P[9].x := 0;   IMG^.img_rec.P[9].y := 0;
    end
  end;
  if ((Edit19.Text = '') or (Edit20.Text = '')) then begin             //Punto 10
      IMG^.img_rec.P[10].x := 0;   IMG^.img_rec.P[10].y := 0;
  end
  else begin
    numX := StrToInt(Edit19.Text);     numY := StrToInt(Edit20.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[10].x := numX;   IMG^.img_rec.P[10].y := numY;
    end
    else begin
       IMG^.img_rec.P[10].x := 0;   IMG^.img_rec.P[10].y := 0;
    end
  end;
  if ((Edit21.Text = '') or (Edit22.Text = '')) then begin             //Punto 11
      IMG^.img_rec.P[11].x := 0;   IMG^.img_rec.P[11].y := 0;
  end
  else begin
    numX := StrToInt(Edit21.Text);     numY := StrToInt(Edit22.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[11].x := numX;   IMG^.img_rec.P[11].y := numY;
    end
    else begin
       IMG^.img_rec.P[11].x := 0;   IMG^.img_rec.P[11].y := 0;
    end
  end;
  if ((Edit23.Text = '') or (Edit24.Text = '')) then begin             //Punto 12
      IMG^.img_rec.P[12].x := 0;   IMG^.img_rec.P[12].y := 0;
  end
  else begin
    numX := StrToInt(Edit23.Text);     numY := StrToInt(Edit24.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[12].x := numX;   IMG^.img_rec.P[12].y := numY;
    end
    else begin
       IMG^.img_rec.P[12].x := 0;   IMG^.img_rec.P[12].y := 0;
    end
  end;
  if ((Edit25.Text = '') or (Edit26.Text = '')) then begin             //Punto 13
      IMG^.img_rec.P[13].x := 0;   IMG^.img_rec.P[13].y := 0;
  end
  else begin
    numX := StrToInt(Edit25.Text);     numY := StrToInt(Edit26.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[13].x := numX;   IMG^.img_rec.P[13].y := numY;
    end
    else begin
       IMG^.img_rec.P[13].x := 0;   IMG^.img_rec.P[13].y := 0;
    end
  end;
   if ((Edit27.Text = '') or (Edit28.Text = '')) then begin             //Punto 14
      IMG^.img_rec.P[14].x := 0;   IMG^.img_rec.P[14].y := 0;
  end
  else begin
    numX := StrToInt(Edit27.Text);     numY := StrToInt(Edit28.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[14].x := numX;   IMG^.img_rec.P[14].y := numY;
    end
    else begin
       IMG^.img_rec.P[14].x := 0;   IMG^.img_rec.P[14].y := 0;
    end
  end;
  if ((Edit29.Text = '') or (Edit30.Text = '')) then begin             //Punto 15
      IMG^.img_rec.P[15].x := 0;   IMG^.img_rec.P[15].y := 0;
  end
  else begin
    numX := StrToInt(Edit29.Text);     numY := StrToInt(Edit30.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[15].x := numX;   IMG^.img_rec.P[15].y := numY;
    end
    else begin
       IMG^.img_rec.P[15].x := 0;   IMG^.img_rec.P[15].y := 0;
    end
  end;
  if ((Edit31.Text = '') or (Edit32.Text = '')) then begin             //Punto 16
      IMG^.img_rec.P[16].x := 0;   IMG^.img_rec.P[16].y := 0;
  end
  else begin
    numX := StrToInt(Edit31.Text);     numY := StrToInt(Edit32.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[16].x := numX;   IMG^.img_rec.P[16].y := numY;
    end
    else begin
       IMG^.img_rec.P[16].x := 0;   IMG^.img_rec.P[16].y := 0;
    end
  end;
  if ((Edit33.Text = '') or (Edit34.Text = '')) then begin             //Punto 17
      IMG^.img_rec.P[17].x := 0;   IMG^.img_rec.P[17].y := 0;
  end
  else begin
    numX := StrToInt(Edit33.Text);     numY := StrToInt(Edit34.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[17].x := numX;   IMG^.img_rec.P[17].y := numY;
    end
    else begin
       IMG^.img_rec.P[17].x := 0;   IMG^.img_rec.P[17].y := 0;
    end
  end;
  if ((Edit35.Text = '') or (Edit36.Text = '')) then begin             //Punto 18
      IMG^.img_rec.P[18].x := 0;   IMG^.img_rec.P[18].y := 0;
  end
  else begin
    numX := StrToInt(Edit35.Text);     numY := StrToInt(Edit36.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[18].x := numX;   IMG^.img_rec.P[18].y := numY;
    end
    else begin
       IMG^.img_rec.P[18].x := 0;   IMG^.img_rec.P[18].y := 0;
    end
  end;
  if ((Edit37.Text = '') or (Edit38.Text = '')) then begin             //Punto 19
      IMG^.img_rec.P[19].x := 0;   IMG^.img_rec.P[19].y := 0;
  end
  else begin
    numX := StrToInt(Edit37.Text);     numY := StrToInt(Edit38.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[19].x := numX;   IMG^.img_rec.P[19].y := numY;
    end
    else begin
       IMG^.img_rec.P[19].x := 0;   IMG^.img_rec.P[19].y := 0;
    end
  end;
  if ((Edit39.Text = '') or (Edit40.Text = '')) then begin             //Punto 20
      IMG^.img_rec.P[20].x := 0;   IMG^.img_rec.P[20].y := 0;
  end
  else begin
    numX := StrToInt(Edit39.Text);     numY := StrToInt(Edit40.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[20].x := numX;   IMG^.img_rec.P[20].y := numY;
    end
    else begin
       IMG^.img_rec.P[20].x := 0;   IMG^.img_rec.P[20].y := 0;
    end
  end;
  if ((Edit41.Text = '') or (Edit42.Text = '')) then begin             //Punto 21
      IMG^.img_rec.P[21].x := 0;   IMG^.img_rec.P[21].y := 0;
  end
  else begin
    numX := StrToInt(Edit41.Text);     numY := StrToInt(Edit42.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[21].x := numX;   IMG^.img_rec.P[21].y := numY;
    end
    else begin
       IMG^.img_rec.P[21].x := 0;   IMG^.img_rec.P[21].y := 0;
    end
  end;
  if ((Edit43.Text = '') or (Edit44.Text = '')) then begin             //Punto 22
      IMG^.img_rec.P[22].x := 0;   IMG^.img_rec.P[22].y := 0;
  end
  else begin
    numX := StrToInt(Edit43.Text);     numY := StrToInt(Edit44.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[22].x := numX;   IMG^.img_rec.P[22].y := numY;
    end
    else begin
       IMG^.img_rec.P[22].x := 0;   IMG^.img_rec.P[22].y := 0;
    end
  end;
  if ((Edit45.Text = '') or (Edit46.Text = '')) then begin             //Punto 23
      IMG^.img_rec.P[23].x := 0;   IMG^.img_rec.P[23].y := 0;
  end
  else begin
    numX := StrToInt(Edit45.Text);     numY := StrToInt(Edit46.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[23].x := numX;   IMG^.img_rec.P[23].y := numY;
    end
    else begin
       IMG^.img_rec.P[23].x := 0;   IMG^.img_rec.P[23].y := 0;
    end
  end;
  if ((Edit47.Text = '') or (Edit48.Text = '')) then begin             //Punto 24
      IMG^.img_rec.P[24].x := 0;   IMG^.img_rec.P[24].y := 0;
  end
  else begin
    numX := StrToInt(Edit47.Text);     numY := StrToInt(Edit48.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[24].x := numX;   IMG^.img_rec.P[24].y := numY;
    end
    else begin
       IMG^.img_rec.P[24].x := 0;   IMG^.img_rec.P[24].y := 0;
    end
  end;
  if ((Edit49.Text = '') or (Edit50.Text = '')) then begin             //Punto 25
      IMG^.img_rec.P[25].x := 0;   IMG^.img_rec.P[25].y := 0;
  end
  else begin
    numX := StrToInt(Edit49.Text);     numY := StrToInt(Edit50.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[25].x := numX;   IMG^.img_rec.P[25].y := numY;
    end
    else begin
       IMG^.img_rec.P[25].x := 0;   IMG^.img_rec.P[25].y := 0;
    end
  end;
  if ((Edit51.Text = '') or (Edit52.Text = '')) then begin             //Punto 26
      IMG^.img_rec.P[26].x := 0;   IMG^.img_rec.P[26].y := 0;
  end
  else begin
    numX := StrToInt(Edit51.Text);     numY := StrToInt(Edit52.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[26].x := numX;   IMG^.img_rec.P[26].y := numY;
    end
    else begin
       IMG^.img_rec.P[26].x := 0;   IMG^.img_rec.P[26].y := 0;
    end
  end;
  if ((Edit53.Text = '') or (Edit54.Text = '')) then begin             //Punto 27
      IMG^.img_rec.P[27].x := 0;   IMG^.img_rec.P[27].y := 0;
  end
  else begin
    numX := StrToInt(Edit53.Text);     numY := StrToInt(Edit54.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[27].x := numX;   IMG^.img_rec.P[27].y := numY;
    end
    else begin
       IMG^.img_rec.P[27].x := 0;   IMG^.img_rec.P[27].y := 0;
    end
  end;
   if ((Edit55.Text = '') or (Edit56.Text = '')) then begin             //Punto 28
      IMG^.img_rec.P[28].x := 0;   IMG^.img_rec.P[28].y := 0;
  end
  else begin
    numX := StrToInt(Edit55.Text);     numY := StrToInt(Edit56.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[28].x := numX;   IMG^.img_rec.P[28].y := numY;
    end
    else begin
       IMG^.img_rec.P[28].x := 0;   IMG^.img_rec.P[28].y := 0;
    end
  end;
  if ((Edit57.Text = '') or (Edit58.Text = '')) then begin             //Punto 29
      IMG^.img_rec.P[29].x := 0;   IMG^.img_rec.P[29].y := 0;
  end
  else begin
    numX := StrToInt(Edit57.Text);     numY := StrToInt(Edit58.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[29].x := numX;   IMG^.img_rec.P[29].y := numY;
    end
    else begin
       IMG^.img_rec.P[29].x := 0;   IMG^.img_rec.P[29].y := 0;
    end
  end;
  if ((Edit59.Text = '') or (Edit60.Text = '')) then begin             //Punto 30
      IMG^.img_rec.P[30].x := 0;   IMG^.img_rec.P[30].y := 0;
  end
  else begin
    numX := StrToInt(Edit59.Text);     numY := StrToInt(Edit60.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[30].x := numX;   IMG^.img_rec.P[30].y := numY;
    end
    else begin
       IMG^.img_rec.P[30].x := 0;   IMG^.img_rec.P[30].y := 0;
    end
  end;
    if ((Edit61.Text = '') or (Edit62.Text = '')) then begin             //Punto 31
      IMG^.img_rec.P[31].x := 0;   IMG^.img_rec.P[31].y := 0;
  end
  else begin
    numX := StrToInt(Edit61.Text);     numY := StrToInt(Edit62.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[31].x := numX;   IMG^.img_rec.P[31].y := numY;
    end
    else begin
       IMG^.img_rec.P[31].x := 0;   IMG^.img_rec.P[31].y := 0;
    end
  end;
  if ((Edit63.Text = '') or (Edit64.Text = '')) then begin             //Punto 32
      IMG^.img_rec.P[32].x := 0;   IMG^.img_rec.P[32].y := 0;
  end
  else begin
    numX := StrToInt(Edit63.Text);     numY := StrToInt(Edit64.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[32].x := numX;   IMG^.img_rec.P[32].y := numY;
    end
    else begin
       IMG^.img_rec.P[32].x := 0;   IMG^.img_rec.P[32].y := 0;
    end
  end;
  if ((Edit65.Text = '') or (Edit66.Text = '')) then begin             //Punto 33
      IMG^.img_rec.P[33].x := 0;   IMG^.img_rec.P[33].y := 0;
  end
  else begin
    numX := StrToInt(Edit65.Text);     numY := StrToInt(Edit66.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[33].x := numX;   IMG^.img_rec.P[33].y := numY;
    end
    else begin
       IMG^.img_rec.P[33].x := 0;   IMG^.img_rec.P[33].y := 0;
    end
  end;
  if ((Edit67.Text = '') or (Edit68.Text = '')) then begin             //Punto 34
      IMG^.img_rec.P[34].x := 0;   IMG^.img_rec.P[34].y := 0;
  end
  else begin
    numX := StrToInt(Edit67.Text);     numY := StrToInt(Edit68.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[34].x := numX;   IMG^.img_rec.P[34].y := numY;
    end
    else begin
       IMG^.img_rec.P[34].x := 0;   IMG^.img_rec.P[34].y := 0;
    end
  end;
  if ((Edit69.Text = '') or (Edit70.Text = '')) then begin             //Punto 35
      IMG^.img_rec.P[35].x := 0;   IMG^.img_rec.P[35].y := 0;
  end
  else begin
    numX := StrToInt(Edit69.Text);     numY := StrToInt(Edit70.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[35].x := numX;   IMG^.img_rec.P[35].y := numY;
    end
    else begin
       IMG^.img_rec.P[35].x := 0;   IMG^.img_rec.P[35].y := 0;
    end
  end;
  if ((Edit71.Text = '') or (Edit72.Text = '')) then begin             //Punto 36
      IMG^.img_rec.P[36].x := 0;   IMG^.img_rec.P[36].y := 0;
  end
  else begin
    numX := StrToInt(Edit71.Text);     numY := StrToInt(Edit72.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[36].x := numX;   IMG^.img_rec.P[36].y := numY;
    end
    else begin
       IMG^.img_rec.P[36].x := 0;   IMG^.img_rec.P[36].y := 0;
    end
  end;
  if ((Edit73.Text = '') or (Edit74.Text = '')) then begin             //Punto 37
      IMG^.img_rec.P[37].x := 0;   IMG^.img_rec.P[37].y := 0;
  end
  else begin
    numX := StrToInt(Edit73.Text);     numY := StrToInt(Edit74.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[37].x := numX;   IMG^.img_rec.P[37].y := numY;
    end
    else begin
       IMG^.img_rec.P[37].x := 0;   IMG^.img_rec.P[37].y := 0;
    end
  end;
    if ((Edit75.Text = '') or (Edit76.Text = '')) then begin             //Punto 38
      IMG^.img_rec.P[38].x := 0;   IMG^.img_rec.P[38].y := 0;
  end
  else begin
    numX := StrToInt(Edit75.Text);     numY := StrToInt(Edit76.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[38].x := numX;   IMG^.img_rec.P[38].y := numY;
    end
    else begin
       IMG^.img_rec.P[38].x := 0;   IMG^.img_rec.P[38].y := 0;
    end
  end;
   if ((Edit77.Text = '') or (Edit78.Text = '')) then begin             //Punto 39
      IMG^.img_rec.P[39].x := 0;   IMG^.img_rec.P[39].y := 0;
  end
  else begin
    numX := StrToInt(Edit77.Text);     numY := StrToInt(Edit78.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[39].x := numX;   IMG^.img_rec.P[39].y := numY;
    end
    else begin
       IMG^.img_rec.P[39].x := 0;   IMG^.img_rec.P[39].y := 0;
    end
  end;
  if ((Edit79.Text = '') or (Edit80.Text = '')) then begin             //Punto 40
      IMG^.img_rec.P[40].x := 0;   IMG^.img_rec.P[40].y := 0;
  end
  else begin
    numX := StrToInt(Edit79.Text);     numY := StrToInt(Edit80.Text);
    if ((numX > 0) and (numX <= ancho) and (numY > 0) and (numY <= alto)) then begin
        IMG^.img_rec.P[40].x := numX;   IMG^.img_rec.P[40].y := numY;
    end
    else begin
       IMG^.img_rec.P[40].x := 0;   IMG^.img_rec.P[40].y := 0;
    end
  end;
  IMG^.img_rec.p_cargados := true;
  ActualizarPantalla
end;


//Borra todos los puntos cargados
procedure TForm1.ButtonBorrarPClick(Sender: TObject);
begin
  LimpiarPuntos;
  if (IMG <> nil) then
    IMG^.img_rec.p_cargados := false
end;


//Busca la imagen seleccionada en el historial de imágenes (ComboBox) y la coloca como imagen actual
procedure TForm1.ListaHistorialSelect(Sender: TObject);
var
  img_select, i: Integer;
begin
  img_select := ListaHistorial.ItemIndex;       //el elemento seleccionado del ComboBox
  IMG := H;                                     //Se posiciona en el principio de la lista
  for i:=0 to img_select-1 do
      IMG := IMG^.next;
  ActualizarPantalla
end;


//Guarda en un archivo .REC el recorrido asociado a la imagen actuales
procedure TForm1.ButtonGuardarRecClick(Sender: TObject);
var
    nombre_arch: String;
    ARCH: file of tImgRec;
begin
  if (IMG = nil) then
      MessageDlg('Primero debe abrir alguna imagen!!!!', mtInformation, [mbOk], 0)
  else
      if (SaveRecDialog.Execute) then begin
          nombre_arch := SaveRecDialog.FileName;
          AssignFile(ARCH, nombre_arch);
          Rewrite(ARCH);
          Write(ARCH, IMG^.img_rec);
          CloseFile(ARCH);
          MessageDlg('Se guardó correctamente: ' + nombre_arch, mtInformation, [mbOk], 0)
      end
end;


//Carga desde un archivo .REC un recorrido asociado a su imagen
procedure TForm1.ButtonCargarRecClick(Sender: TObject);
var
    nombre_arch: String;
    ARCH: file of tImgRec;
begin
  if (OpenRecDialog.Execute) then begin
      nombre_arch := OpenRecDialog.FileName;
      AssignFile(ARCH, nombre_arch);
      Reset(ARCH);
      CrearElemListaHistorial;
      Read(ARCH, IMG^.img_rec);
      CloseFile(ARCH);
      ListaHistorial.Items.Insert(0, IMG^.img_rec.nom_img);
      ListaHistorial.ItemIndex := 0;
      ActualizarPantalla
  end
end;


//Chequea el CheckBox para ver si hay que dibujar los puntos
procedure TForm1.CheckBoxDibujarPClick(Sender: TObject);
begin
  if (CheckBoxDibujarP.Checked) then
     if (IMG <> nil) then
         if (IMG^.img_rec.p_cargados) then
            DibujarPuntos
         else begin
             MessageDlg('Primero debe ingresar puntos....', mtInformation, [mbOk], 0);
             CheckBoxDibujarP.Checked := false
         end
     else begin
         MessageDlg('Primero debe abrir alguna imagen!!!!', mtInformation, [mbOk], 0);
         CheckBoxDibujarP.Checked := false
     end
  else
      if (IMG <> nil) then
          CargarImagen(IMG^.img_rec.nom_img)    //Vuelve a cargar la imagen original
end;


//Guarda la imagen actual (con los puntos dibujados o no) a un archivo .BMP
procedure TForm1.ButtonExpImgClick(Sender: TObject);
begin
  if (IMG = nil) then
      MessageDlg('Primero debe abrir alguna imagen!!!!', mtInformation, [mbOk], 0)
  else
      if (SaveImgDialog.Execute) then begin
          Imagen.Picture.SaveToFile(SaveImgDialog.FileName);
          MessageDlg('Se guardó correctamente la imagen: ' + SaveImgDialog.FileName, mtInformation, [mbOk], 0)
      end
end;


//Creo una nueva ventana del tamaño real de la imagen para mostrar la imagen actual
procedure TForm1.ButtonPantallaCompClick(Sender: TObject);
begin
  if (IMG <> nil) then begin
      Application.CreateForm(TPantallaCompleta, PantallaCompleta);
      PantallaCompleta.Caption := IMG^.img_rec.nom_img;
      PantallaCompleta.Image.Picture := Form1.Imagen.Picture;
      PantallaCompleta.ClientWidth := Form1.Imagen.picture.Width;
      PantallaCompleta.ClientHeight := Form1.Imagen.picture.Height;
      PantallaCompleta.Constraints.MaxWidth := Screen.Width;        //Para que no se pase de la resolución de Windows
      PantallaCompleta.Constraints.MaxHeight := Screen.Height;
      PantallaCompleta.Left := (Screen.Width - PantallaCompleta.Width) div 2;
      PantallaCompleta.Top := (Screen.Height - PantallaCompleta.Height) div 2;
      PantallaCompleta.PasameDatos(IMG, color_linea, Form1.ListGrosorLinea.TopIndex + 1);
      PantallaCompleta.Show;
  end
  else
      MessageDlg('Primero debe abrir alguna imagen!!!!', mtInformation, [mbOk], 0)
end;


//Se fija que color fue seleccionado
procedure TForm1.ListColorLineaChange(Sender: TObject);
begin
  case ListColorLinea.ItemIndex of
    0: color_linea := clBlack;
    1: color_linea := clWhite;
    2: color_linea := clLime;
    3: color_linea := clRed;
    4: color_linea := clAqua;
    5: color_linea := clYellow;
  end
end;


//Actualiza cuando el Form vuelve a ponerse en foco (cuando vuelve del Form PantallaCompleta)
procedure TForm1.FormActivate(Sender: TObject);
begin
  if (IMG <> nil) then
      ActualizarPantalla;
end;


procedure TForm1.ButtonAcercaDeClick(Sender: TObject);
begin
  Application.CreateForm(TFormAcercaDe, FormAcercaDe);
  FormAcercaDe.Left := Form1.Left + 350;     //Para ubicar la ventana centrada con respecto a la ventana prinicpal
  FormAcercaDe.Top := Form1.Top + 250;
  FormAcercaDe.Show;
end;


//Ubica la ventana el centro dependiendo de la resolución de la pantalla de Windows
procedure TForm1.FormCreate(Sender: TObject);
begin
  if ((Screen.Width > 1280) and (Screen.Height > 720)) then begin
     Form1.Left := (Screen.Width - 1280) div 2;
     Form1.Top := (Screen.Height - 720) div 2
  end
  else
      Form1.WindowState :=  wsMaximized; 
end;




INITIALIZATION
  H := nil;
  IMG := nil;




END.
