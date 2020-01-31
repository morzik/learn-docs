unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form2: TForm2;

implementation
  uses unit1, Unit3, unit5;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
form2.ShowHint:=false;
form2.Visible:=false;
form3.ShowHint:=true;
form3.Visible:=true;
end;

end.
 