UNIT UPantallaCompleta;




INTERFACE


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, UCaminos;


type
  TPantallaCompleta = class(TForm)
    Image: TImage;
    LabelMouseP: TLabel;
    procedure PasameDatos(actual: tListaImg; color: TColor; grosor: Byte);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageMouseDown(Sender: TObject; Button: TMouseButton;
                               Shift: TShiftState; X, Y: Integer);
  end;
                   

var
  PantallaCompleta: TPantallaCompleta;




IMPLEMENTATION
{$R *.dfm}


var
  ImgRec: tListaImg;
  punto_click: String;
  ult_p_ingresado: Word;      //Mantiene cuál fue el último punto ingresado
  pX, pY: Word;               //Coordenadas del último click sobre la imagen


//Recibe el puntero a la imagen actual y otros parámetros para poder dibujar luego sobre la imagen
procedure TPantallaCompleta.PasameDatos(actual: tListaImg; color: TColor; grosor: Byte);
var
  i: Word;
begin
  ult_p_ingresado := 0;
  ImgRec := actual;
  if (not ImgRec^.img_rec.p_cargados) then
    for i := 1 to cant_puntos do begin    //Inicializa todos los puntos en 0
      ImgRec^.img_rec.P[i].x := 0;
      ImgRec^.img_rec.P[i].y := 0
    end;
  PantallaCompleta.Image.Canvas.pen.Width := grosor;
  PantallaCompleta.Image.Canvas.pen.Color := color
end;


procedure TPantallaCompleta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ult_p_ingresado > 0) then       //Si al menos se ingresó un punto
      ImgRec^.img_rec.p_cargados := true;
  PantallaCompleta.Free
end;


//Dibuja la línea entre dos puntos consecutivos (desde ult_p_ingresado hasta hasta)
procedure DibujarLinea (hasta: Word);
begin
   PantallaCompleta.Image.Canvas.MoveTo(ImgRec^.img_rec.P[ult_p_ingresado].x, ImgRec^.img_rec.P[ult_p_ingresado].y);
   PantallaCompleta.Image.Canvas.LineTo(ImgRec^.img_rec.P[hasta].x, ImgRec^.img_rec.P[hasta].y);
end;


//Agrega a la estructura de datos el punto ingresado al hacer click sobre la imagen
procedure IngresarNuevoP;
var
  punto_select: String;
  p_actual: Integer;
begin
  punto_select := IntToStr(ult_p_ingresado + 1);    //Por defecto pone el punto siguiente al ùltimo punto ingresado
  if (InputQuery('Ingresar nuevo punto....', punto_click, punto_select)) then begin
      p_actual := StrToInt(punto_select);
      if ((0 < p_actual) and (p_actual < 41)) then begin
         ImgRec^.img_rec.P[p_actual].x := pX;
         ImgRec^.img_rec.P[p_actual].y := pY;
         if (ult_p_ingresado > 0) then    //Si ya se ingresó algún punto antes
            if ((p_actual - ult_p_ingresado = 1) or (p_actual - ult_p_ingresado = -1)) then  //Si son dos puntos consecutivos
                 DibujarLinea(p_actual);
         ult_p_ingresado := p_actual
      end
      else
          Application.MessageBox('Debe ingresar cuál punto quiera ingresar (entre 1 y 40)', 'Punto NO VALIDO', MB_OK)
  end
end;


procedure TPantallaCompleta.ImageMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then begin       //Si fue el botón izquierdo
      LabelMouseP.Caption := 'X: ' + IntToStr(X) + ', Y: ' + IntToStr(Y);
      LabelMouseP.Left := X;
      LabelMouseP.Top := Y
  end
  else if (Button = mbRight) then begin
          pX := X;    pY := Y;
          punto_click := 'X: ' + IntToStr(X) + ', Y: ' + IntToStr(Y);
          IngresarNuevoP
       end
end;




END.
