

program gr;
uses graphabc;
var x,y,i,j,k,l,h,w:integer;
begin

k:=loadpicture('w:\files\f1.jpg');
for i:=1 to 400 do begin
drawpicture(k,i,i+10);
sleep(10) end;
end.