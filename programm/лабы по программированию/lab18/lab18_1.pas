program lab18_1;
uses crt;
type uch=record
     fam,im,sp:string[20];
     gr,gs,got:1..9999;
     ot:string[255];
     st:string[40];
     end;
     FileUch=file of uch;
     arr=array[1..20] of uch;
     
var science:FileUch; A:arr; i,n,k:integer;

procedure wwod(var h:arr;var t:integer);
var i:integer;
begin
assign(science,'SCIENCE');
reset(science);
t:=0;
while not(eof(science)) do begin
      t:=t+1;
      read(science,h[t]);
      writeln(h[t].fam);
      end;
close(science);
end;

begin
wwod(A,i);
end.
