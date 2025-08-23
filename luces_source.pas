unit luces_source;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  roof_size, light_size, light_amount, result: Double;
begin
  roof_size := StrToFloat(Edit1.Text);
  light_size := StrToFloat(Edit2.Text);
  light_amount := StrToFloat(Edit3.Text);
  result := roof_size - (light_size * light_amount);
  result := result / (light_amount + 1);
  Label3.Caption := 'Resultado: ' + FloatToStr(result) + ' unidades de distancia entre cada luz.';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

end.

