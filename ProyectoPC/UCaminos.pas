//Contiene la estructura de datos para representar un camino
UNIT UCaminos;




INTERFACE


CONST
    cant_puntos = 40;


TYPE
    tPunto = record
               x: Word;     //Word: 0..65535
               y: Word
             end;
    tListaPuntos = array [1..cant_puntos] of tPunto;
    tImgRec = record
                  nom_img: String[255];
                  P: tListaPuntos;
                  p_cargados: Boolean;
                end;
    tListaImg = ^tCeldaImgYRec;
    tCeldaImgYRec = record
                  img_rec: tImgRec;
                  next: tListaImg
                end;




IMPLEMENTATION




END.
 