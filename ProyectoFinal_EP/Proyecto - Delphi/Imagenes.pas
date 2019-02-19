unit Imagenes;

///////////////////////////////////////////////////////

   interface

///////////////////////////////////////////////////////

  uses
      etiquetashtml;

  function existeimg(tipo: timagen):boolean;//chequea si hay proxima imagen del tipo dado
  procedure proximagen(tipo: timagen; var ruta,nombre,desc,origen:string);//devuelve los datos de la proxima imagen
  procedure Guardarimg(tipo: timagen; var ruta,nombre,desc,origen:string);//guarda una imagen
  procedure finimg;           //finaliza archivos de almacenamiento
  procedure ini_almacenar(prompt:string);    //abre archivos para escritura
  procedure ini_recuperar;    //abre archivos para escritura
  procedure borrar;           //borra los archivos temporales

///////////////////////////////////////////////////////

  implementation

///////////////////////////////////////////////////////

type
regimg= record
           nom,coment,htm_org,path: string[255];
        end;

tarch= file of regimg;

var
fbmp,fgif,fjpg:tarch;

procedure ini_recuperar;
  begin
     reset(FBMP);
     reset(FJPG);
     reset(FGIF);
  end;
procedure finimg;
  begin
    closefile(FBMP);
    closefile(FJPG);
    closefile(FGIF);
  end;

procedure ini_almacenar(prompt:string);
  begin
    assignfile(FBMP,prompt+'ArchivoBMP.feo');
    assignfile(FJPG,prompt+'ArchivoJPG.feo');
    assignfile(FGIF,prompt+'ArchivoGIF.feo');
    rewrite(FBMP);
    rewrite(FJPG);
    rewrite(FGIF);
  end;

function existeimg(tipo: timagen):boolean;
 begin
  case tipo of
    bmp: existeimg:=not eof(FBMP);
    jpg: existeimg:=not eof(FJPG);
    gif: existeimg:=not eof(FGIF)
 end;
end;
procedure proximagen(tipo: timagen; var ruta,nombre,desc,origen:string);
var aux:regimg;
begin
     case tipo of
       bmp: begin
              read(FBMP,aux);
              nombre:=aux.nom;
              desc:=aux.coment;
              ruta:=aux.path;
              origen:=aux.htm_org;
            end;
       jpg: begin
              read(FJPG,aux);
              nombre:=aux.nom;
              ruta:=aux.path;
              desc:=aux.coment;
              origen:=aux.htm_org;
            end;
       gif: begin
              read(FGIF,aux);
              nombre:=aux.nom;
              desc:=aux.coment;
              ruta:=aux.path;
              origen:=aux.htm_org;
            end;
     end;
end;
  procedure borrar;
  begin
  erase(FBMP);
  erase(FJPG);
  erase(FGIF)
  end;

procedure Guardarimg(tipo: timagen; var ruta,nombre,desc,origen:string);
var aux:Regimg;
begin
    aux.nom:=nombre;
    aux.coment:=desc;
    aux.path:=ruta;
    aux.htm_org:=origen;
    case tipo of
     bmp: write(FBMP,aux);
     jpg: write(FJPG,aux);
     gif: write(FGIF,aux);
    end;
end;
end.
