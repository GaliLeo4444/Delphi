UNIT TelesCalculadora;


INTERFACE


USES
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;


TYPE
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit7: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Edit8: TEdit;
    GroupBox3: TGroupBox;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit13: TEdit;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  end;

                        
VAR
  Form1: TForm1;


////////////////////////////////////////////////////////////////////////


IMPLEMENTATION
{$R *.dfm}




procedure ManejarExcepcion;
begin
  ShowMessage('DATOS INCORRECTOS')
end;


procedure TForm1.Button1Click(Sender: TObject);
var focal, diametro, aumentos: Smallint; barlow, ocular, aux: single;
begin
 try
  diametro := StrToInt(edit1.Text)
 except on EConvertError do ManejarExcepcion
 end;
  focal := StrToInt(edit2.Text);
  aux := focal / diametro;            //Relación focal
  edit7.Text := FloatToStrF(aux, ffGeneral, 4, 2);
  aux := Round(diametro * 2.2);              //Máx aumento teórico
  edit8.Text := FloatToStrF(aux, ffGeneral, 4, 2);
  if (edit13.Text = '')            //Me fijo si hay Barlow
      then barlow := 1             //Si no hay multiplico por 1 (es cómo si no hubiera)
      else barlow := StrToFloat(edit13.Text);
  if (edit3.Text <> '')             //1er ocular
      then begin
             ocular := StrToFloat(edit3.Text);
             aux := (focal / ocular) * barlow;
             aumentos := Round(aux);           //redondeo
             edit9.Text := IntToStr(aumentos)
           end;
  if (edit4.Text <> '')             //2do ocular
      then begin
             ocular := StrToFloat(edit4.Text);
             aux := (focal / ocular) * barlow;
             aumentos := Round(aux);
             edit10.Text := IntToStr(aumentos)
           end;
  if (edit5.Text <> '')             //3er ocular
      then begin
             ocular := StrToFloat(edit5.Text);
             aux := (focal / ocular) * barlow;
             aumentos := Round(aux);
             edit11.Text := IntToStr(aumentos)
           end;
  if (edit6.Text <> '')             //4er ocular
      then begin
             ocular := StrToFloat(edit6.Text);
             aux := (focal / ocular) * barlow;
             aumentos := Round(aux);
             edit12.Text := IntToStr(aumentos)
           end
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.Text := '';
  edit2.Text := '';
  edit3.Text := '';
  edit4.Text := '';
  edit5.Text := '';
  edit6.Text := '';
  edit7.Text := '';
  edit8.Text := '';
  edit9.Text := '';
  edit10.Text := '';
  edit11.Text := '';
  edit12.Text := '';
  edit13.Text := '';
  edit1.SetFocus
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.Terminate
end;


END.
