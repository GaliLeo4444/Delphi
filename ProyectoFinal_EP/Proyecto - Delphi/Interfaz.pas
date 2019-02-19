unit Interfaz;
///////////////////////////////////////////////////////
interface
///////////////////////////////////////////////////////
uses
  etiquetashtml,imagenes,crear,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdActns, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  ExtActns,shellapi;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    WindowClose1: TWindowClose;
    BitBtn3: TBitBtn;                  //objetos
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    BitBtn4: TBitBtn;
    ProgressBar1: TProgressBar;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Image1: TImage;
    procedure creacion(sender: tobject);      //inicializacion de variables de control
    procedure BitBtn2Click(Sender: TObject);  //boton cerrar
    procedure BitBtn4Click(Sender: TObject);  //boton selecciona archivo
    procedure BitBtn1Click(Sender: TObject);  //boton selecciona archivo
    procedure BitBtn3Click(Sender: TObject);  //boton crear
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  prompt,entrada,salida: string;

///////////////////////////////////////////////////////
implementation
///////////////////////////////////////////////////////
type
  TTHtml=Text;
  Tarreglo=array[1..1000] of string;
  Tregistro= record
        dir:tarreglo;
        n:integer
             end;

var
  visit: tregistro;


{$R *.dfm}

procedure completarruta(var ruta:string); //cheque si la ruta esta completa
begin
 if not ((copy(ruta,1,4) = 'file') or (copy(ruta,2,2) = ':\') or (copy(ruta,2,2) = ':/')) then
  ruta:= 'file:///' + prompt + ruta;
end;

procedure procprincipal(dirarch:string;salida:string); //procedimiento principal
var
i:integer;
procedure ProcEti(DirArch:string); //procesa una a una las etiquetas del html
var
  f:TTHtml;
  tipo_img: Timagen;
  eti,ruta,vinc,nombre,desc:string;
  tipoeti:TEtiqueta;

 function visitado(dirarch:string; var visit:tregistro):boolean; //establece si fue o no visitado un vinculo
  var
   i:integer;
   existe:boolean;

  begin
   visitado:=true;
   existe:=false; i:= 1; obtnombrearch(dirarch,dirarch);
   while not existe and (i<visit.n) do
       begin
        existe:= dirarch = visit.dir[i];
        i:= i +1;
       end;
   if not existe then
      begin
        visit.dir[visit.n]:=dirarch;
        visit.n:=visit.n+1;
        visitado:= false;
      end;
  end;

begin
    empezarlect(f,dirarch); //abre el archivo htm
    eti:='';
    if not visitado(uppercase(dirarch),visit) then  //comprueba que no haya sido visitado
    begin
    while (hayetiqueta(eti)) do        {Existe proxima etiqueta}
      begin
          ObtEtiqueta(f,eti);           {Devuelve una etiqueta}
          tipoeti:= ClasifEtiqueta(Eti);  {Devuelve Tipo de Etiqueta: Vinc Img u Otro}
          case TipoEti of
            imagen: begin
                     ObtDatImag(eti,ruta,nombre,desc,tipo_img);    {Devuelve Comentario, Nombre, Arhc Dnd Estaba y Tipo}
                     completarruta(ruta);   //completa la ruta de la imagen
                     GuardarImg(tipo_img,ruta,nombre,desc,dirarch); {Guarda los datos Anteriores}
                    end;
            vinculo: begin
                      ObtCadComi(eti,vinc);      {Devuelve la dir de un vinculo}
                      ProcEti(prompt+Vinc);      {Procesa la nueva pagina}
                     end;
          end;
      end;
     end;
    terminarlect(f); //cierra el archivo una vez analizado
end;
begin
 ini_almacenar(prompt);           //abre las estructuras de almacenamiento de imagenes
 for i:=1 to 1000 do      //ciclo para inicializar el arreglo
 visit.dir[i]:='';
 visit.n:=1;                    //primer vinculo visitado
 proceti(dirarch);        //comienza a procesar las etiquetas
 finimg;                  //cierra las estructuras de almacenamiento de imagenes
 crearhtm(salida,'Imagenes');         //crea el htm de salida
 borrar;                  //borra las estructuras auxiliares
end;

procedure tform1.creacion(sender: tobject);  //inicializacion de variables de control
begin
 entrada:= '';
 salida:= '';
end;

procedure TForm1.BitBtn2Click(Sender: TObject); //boton cerrar
begin
 form1.Close
end;

procedure TForm1.BitBtn4Click(Sender: TObject); //boton para seleccionar el archivo de salida
begin
 PromptForFileName(salida,'Archivo HTM|*.htm','Elegir destino','','',true);
 if salida <> '' then                     //se chequea que se haya introducido
  edit2.Text:=salida;                     //el archivo y se escribe en su campo
end;                                         // correspondiente

procedure TForm1.BitBtn1Click(Sender: TObject); //boton para seleccionar archivo de entrada
begin
 PromptForFileName(entrada,'Archivo HTM|*.htm','Elegir archivo','','',false);
 if entrada <> '' then
  edit1.text:=entrada;       //chequeo para evitar cadena vacia
end;

procedure TForm1.BitBtn3Click(Sender: TObject);    //boton crear
begin
 if (entrada = '') or (salida = '') then       //chequeo de campos
  MessageDlg('Asegurese de haber seleccionado archivos de entrada y/o salida correctos', mtwarning, [mbok],0,)
 else
  begin                                        //chequeo de datos correctos
   if (MessageDlg('Confirma que los datos son correctos?', mtconfirmation, [mbyes,mbno],0,)=6) then
    begin
     obtruta(entrada,prompt);         //obtiene el directorio donde se encuentran los archivos htm
     procprincipal(entrada,salida);    //ejecucion de la instruccion principal
     progressbar1.Visible:=true;
     progressbar1.StepBy(100);
     label1.visible:= true;               //archivo creado
     if checkbox1.Checked then            //abrir el archivo una vez creado?
     ShellExecute(self.WindowHandle,'open',pchar(salida),nil,nil, SW_minimize);
     if (MessageDlg('Desea trabajar con otro archivo?', mtconfirmation, [mbyes,mbno],0,)=6) then
       begin                    //si se desea trabajar con otro archivo
        edit1.text:='Elija el archivo de origen...';
        edit2.text:='Elija el archivo de salida...';
        entrada:='';
        salida:='';
        label1.Visible:=false;
        progressbar1.Visible:=false;
       end
      else            //si no se desea realizar nada mas se bloquean los botones
       begin
        bitbtn1.Enabled:=false;
        bitbtn3.Enabled:=false;
        bitbtn4.Enabled:=false;
       end;
    end;
  end;
end;

end.
