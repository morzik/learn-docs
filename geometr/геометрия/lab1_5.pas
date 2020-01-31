program labl_5;
type point = record
           x,y:longint;
           end;
var i,n,l,xm,ym:longint;
    A:array[1..100000] of point;

begin
     readln (n,xm,ym,l);
     for i:=1 to n do begin
         readln (A[i].x, A[i].y);
     end;
     i:=1;
     while ((i<=n) and (sqr(l) < sqr(A[i].x-xm)+ sqr(A[i].y-ym))) do
     begin
          i:=i+1;
     end;

     if (i>n) then writeln ('Yes') else writeln(i);
end.
    