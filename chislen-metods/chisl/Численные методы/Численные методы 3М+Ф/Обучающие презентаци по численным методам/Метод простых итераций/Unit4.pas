unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Math, unit2, unit3, unit1, unit5;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
form4.ShowHint:=false;
form4.Visible:=false;
form5.ShowHint:=true;
form5.Visible:=true;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
label4.Caption:=form1.Label4.Caption;
label5.Caption:=form1.Label5.Caption;
label6.Caption:=form1.Label6.Caption;
 if form1.Label1.Caption='q>1! Метод не применим' then
label8.Caption:=form1.Label1.Caption else
 label8.Caption:='метод применим';
end;

end.
 