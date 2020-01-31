program lab5_1;
VAR
n,f,f2,f1,i:integer;
begin
readln (n);
f1:=1;
f2:=1;
if (n=1) or (n=2) then writeln ('1')
else
begin
FOR i:=3 to n do begin
f:=f1+f2;
f2:=f1;
f1:=f;
end;
writeln ('Число равно=',f);
end;
end.