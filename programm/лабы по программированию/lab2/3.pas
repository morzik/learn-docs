program lab2_3;
uses crt;
var a,b,c,d,x,s:longint;
begin
readln(a,b,c,d);
s:=0;
if (a=0)and(b=0)then s:=1;
if((a<>0)and(b=0))or((a=0)and(b<>0))or((a<>0)and(b<>0))then begin
for x:=-2000000 to 2000000 do
if (a*x+b=0)and((c*x+d)<>0) then begin
write(x,' ');
s:=3;
end;
end;
if s=0 then write('NO');
if(s=1)then write('INF');
end.