unit EtiquetasHTML;

///////////////////////////////////////////////////////
interface
///////////////////////////////////////////////////////
  uses
      sysutils;
  type tEtiqueta = (vinculo, imagen, otro, fin);
       tImagen = (gif, jpg, bmp, otra);


  procedure EmpezarLect (var F: text; direccion: string); //abre archivos para lectura
  procedure TerminarLect (var F: text);                   //cierra archivos
  function HayEtiqueta (etiqueta: string): boolean;       //comprueba existencia de proxima etiqueta
  procedure ObtEtiqueta (var F: text; var etiqueta: string); //obtiene la proxima etiqueta
  function ClasifEtiqueta (etiqueta: string): tEtiqueta;  //clasifica etiqueta
  procedure ObtCadComi (etiqueta: string; var cadena: string); //obtiene una cadena entre comillas
  procedure ObtDatImag (etiqueta: string; var ruta, nombre, comentario: string; var tipo: tImagen); //obtiene los datos de una imagen a partir de su etiqueta
  procedure ObtNombreArch (ruta: string; var nombre: string); //obtiene el nombre de un archivo a partir de su ruta completa
  procedure ObtRuta(cadena:string;var ruta:string); //Obtiene la ruta de un archivo

///////////////////////////////////////////////////////
implementation
///////////////////////////////////////////////////////

  type tLargoStr = 0..maxint;


  procedure EmpezarLect (var F: text; direccion: string);
  begin
    assign(F, direccion);
    reset(F)
  end;

  procedure TerminarLect (var F: text);
  begin
    close(F)
  end;

  function HayEtiqueta (etiqueta: string): boolean;
  begin
    if lowercase(etiqueta)='</html>'
        then HayEtiqueta := false
        else HayEtiqueta := true
  end;      

  procedure ObtEtiqueta (var F: text; var etiqueta: string);
  var ch: char;
  begin
    etiqueta := '';
    repeat
          read(F, ch);
    until (ch = '<');
    while (ch <> '>') do
      begin
           etiqueta := etiqueta + ch;
           read(F, ch)
      end;
    etiqueta := etiqueta + ch
  end;

  procedure SaltearEsp (etiqueta: string; var i: tLargoStr);   //saltea espacios a partir de una posicion dada
  begin
    while (etiqueta[i] = ' ') and (i <= length(etiqueta)) do
           i := i + 1
  end;           

  function HayVinculo (etiqueta: string): boolean;   //comprueba si es vinculo
  var i: tLargoStr;
  begin
    i := 2; HayVinculo := false;
    if (etiqueta[(pos(etiqueta,'"')+1)] <> '#') then
    begin
     if (lowercase(etiqueta[i]) = 'a')
       then begin
              i:=i+1;
              SaltearEsp(etiqueta, i);
              etiqueta := copy(etiqueta, i, 4);
              if (lowercase(etiqueta) = 'href')
                 then HayVinculo := true
            end
    end;
  end;

  function HayImagen (etiqueta: string): boolean;       //comprueba si es imagen
  var i: tLargoStr;
      cadaux: string;
  begin
    cadaux := copy(etiqueta, 2, 3);
    if (lowercase(cadaux) = 'img')
       then begin
              i:=5;
              SaltearEsp(etiqueta, i);
              cadaux := copy(etiqueta, i, 3);
              if (lowercase(cadaux) = 'src')
                 then HayImagen := true
                 else HayImagen := false
             end
       else HayImagen := false
  end;

  function ClasifEtiqueta (etiqueta: string): tEtiqueta;
  begin
    if (HayVinculo(etiqueta))
       then ClasifEtiqueta := vinculo
       else if(HayImagen(etiqueta))
              then ClasifEtiqueta := imagen
              else
               ClasifEtiqueta := otro
  end;

  function EncontrarComillas (etiqueta: string): tLargoStr;   //busca comillas y devuelve la posicion
  var ch: char; i: tLargoStr;
  begin
    i := 0;
    repeat
          i := i + 1;
          ch := etiqueta[i]
    until (ch = '"') or (i = length(etiqueta));
    If (ch = '"')
        then EncontrarComillas := i
        else EncontrarComillas := 0
  end;

  procedure ObtCadComi (etiqueta: string; var cadena: string);
  var i: tLargoStr; cadaux: string;
  begin
    cadaux := '';
    i := EncontrarComillas(etiqueta);
    if (i > 0)
        then begin
               i := i + 1;
               while (etiqueta[i] <> '"') and (i <= length(etiqueta)) do
                    begin
                      cadaux := cadaux + etiqueta[i];
                      i := i + 1
                    end;
             end;
    cadena := cadaux
  end;

  procedure ObtNombreArch (ruta: string; var nombre: string);
  var i: tLargoStr;
  begin
    i:= length(ruta); nombre:= ruta;
    while ((ruta[i] <> '/') and (ruta[i] <> '\')) and (i<>0) do
     i:= i-1;
    if (ruta[i]='/') or (ruta[i]='\') then
     delete(nombre,1,i);
  end;

  function ExtDeImag (ruta: string): tImagen;      //devuelve la extension de una imagen
  var i: tLargoStr; ch: char; extencion: string;
  begin
    i := 2;
    repeat
      i := i + 1;
      ch := ruta[i]
    until (i = length(ruta) - 3);
    if (ch = '.')
        then extencion := copy(ruta, i + 1, 3);
    if (lowercase(extencion) = 'bmp')
       then ExtDeImag := bmp
       else if (lowercase(extencion) = 'jpg')
               then ExtDeImag := jpg
               else if (lowercase(extencion) = 'gif')
                       then ExtDeImag := gif
                       else ExtDeImag := otra
  end;

  procedure ObtDatImag (etiqueta: string; var ruta, nombre, comentario: string; var tipo: tImagen);
  var posicion: tLargoStr;
  begin
    ObtCadComi(etiqueta, ruta);
    ObtNombreArch(ruta, nombre);
    posicion := pos('alt', lowercase(etiqueta));
    if (posicion > 0)
       then begin
              etiqueta := copy(etiqueta, posicion + 3, length(etiqueta) - posicion);
              ObtCadComi(etiqueta, comentario)
            end
     else comentario := '';
    tipo := ExtDeImag(ruta)
  end;

  procedure ObtRuta(cadena:string;var ruta:string);
  var
  i:tlargostr;
  begin
   i:= length(cadena); ruta:= cadena;
   while ((cadena[i] <> '/') and (cadena[i] <> '\')) and (i<>0) do
    i:= i-1;
   if i<>0 then delete(ruta,i+1,length(cadena)-i);
  end;
end.
