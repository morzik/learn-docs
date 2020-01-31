unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
  uses unit1,unit2, unit4, unit5;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
form3.ShowHint:=false;
form3.Visible:=false;
end;

end.
