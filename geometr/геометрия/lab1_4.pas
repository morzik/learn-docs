program lab1_4;
uses crt;
var a,b,c,x,y:longint;
begin
     readln (x,y,a,b,c);
     if (a*x+b*y+c = 0) then
        writeln ('YES')
     else writeln ('NO');
end.