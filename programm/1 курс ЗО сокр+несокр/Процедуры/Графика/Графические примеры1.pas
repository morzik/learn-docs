

program gr;
uses graphabc;
var x,y,i,j,k,k1,k2,k3,k4,k5,k6,k7,k8,l,h,w:integer;
begin

k1:=loadpicture('w:\files\file1.jpg');
k2:=loadpicture('w:\files\file2.jpg');
k3:=loadpicture('w:\files\file3.jpg');
k4:=loadpicture('w:\files\file4.jpg');
k5:=loadpicture('w:\files\file5.jpg');
k6:=loadpicture('w:\files\file6.jpg');
k7:=loadpicture('w:\files\file7.jpg');
k8:=loadpicture('w:\files\file8.jpg');





drawpicture(k1,2,10);

for i:=1 to 400 do begin
w:=i mod 8;
case w of
0:drawpicture(k1,10,10);
1:drawpicture(k2,10,10);
2:drawpicture(k3,10,10);
3:drawpicture(k4,10,10);
4:drawpicture(k5,10,10);
5:drawpicture(k5,10,10);
6:drawpicture(k5,10,10);
7:drawpicture(k5,10,10);
end;
 sleep(50) end;


end.