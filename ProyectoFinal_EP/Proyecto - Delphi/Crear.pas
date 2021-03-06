unit Crear;
///////////////////////////////////////////////////////
interface
///////////////////////////////////////////////////////
uses
   imagenes,etiquetashtml;

procedure crearhtm(ruta: string; titulo:string); //crea el archivo de salida

///////////////////////////////////////////////////////
implementation
///////////////////////////////////////////////////////

var
 f:text;

procedure encabezado(var f: text;titulo:string); //escribe el encabezado del htm
begin
  writeln(f,'<HTML>');
  writeln(f,'<HEAD><TITLE>'+titulo+'</TITLE></HEAD>');
  writeln(f,'<BODY><P>');
end;

procedure cierrehtm(var f:text);                //escribe el cierre del htm
begin
  writeln(f,'</P></BODY></HTML>');
end;

procedure crearhtm(ruta: string;titulo:string);
var
  nombre,desc,archorigen:string;
procedure escimg(img_tipo:timagen);   //escribe todas las imagenes de un tipo
begin                                 //ordenadas en vi�etas
 writeln(f,'<UL>');
  if not existeimg(img_tipo) then
   writeln(f,'<LI>No Hay')
  else
   begin
    while existeimg(img_tipo) do
     begin
      proximagen(img_tipo,ruta,nombre,desc,archorigen);
      ObtNombreArch(archorigen,archorigen);
      if desc <> '' then writeln(f,'<LI>'+desc+'<BR>')
      else writeln(f,'<LI>---<BR>');
      writeln(f,'<LI>Archivo:'+nombre+'<BR>');
      writeln(f,'<LI>Del documento:'+archorigen+'<BR>');
      writeln(f,'<IMG SRC="'+ruta+'" alt="'+desc+'"><BR>');
     end;
    end;
   writeln(f,'</UL>');
end;
begin
 assignfile(f,ruta);
 rewrite(f);
 encabezado(f,titulo);
 ini_recuperar;
 writeln(f,'<OL>');
  writeln(f,'<LI>BMP');
   escimg(bmp);
   writeln(f,'</LI>');
  writeln(f,'<LI>JPG');
   escimg(jpg);
   writeln(f,'</LI>');
  writeln(f,'<LI>GIF');
   escimg(gif);
   writeln(f,'</LI>');
   writeln(f,'</OL>');
 cierrehtm(f);
 finimg;
 close(f);
end;
 
end.
