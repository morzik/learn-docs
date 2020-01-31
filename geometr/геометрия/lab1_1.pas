type point=record
       x,y:real;
       end;

var A:array[1..100000] of point;
    i:byte;
    Q:boolean;
    T,Z,P:real;
    x1,y1,x2,y2:real;
    v1,v2:point;
    N,j: integer;

function Sign(r:real):shortint;
const eps=0.0000001;
  begin
  if (abs(r)<eps) then Sign:=1
  else Sign:=Round(r/abs(r));
  end;

Procedure GetVector(i:byte;var p:point);
  begin
  if (i=N) then
    begin
    p.x:=A[1].x-A[N].x;
    p.y:=A[1].y-A[N].y;
    end
  else
    begin
    p.x:=A[i+1].x-A[i].x;
    p.y:=A[i+1].y-A[i].y;
    end;
  end;

begin
readln(N);
for j:=1 to N do begin
    readln(A[j].x,A[j].y);
end;
GetVector(N,v1);
GetVector(1,v2);
T:=v1.x*v2.y-v2.x*v1.y;
Z:=Sign(T);
P:=1.0;
i:=1;
Q:=true;
while (Q and (i<N)) do
  begin
  GetVector(i,v1);
  GetVector(i+1,v2);
  T:=v1.x*v2.y-v2.x*v1.y;
  P:=P*Z*Sign(T);

  if (P<0) then Q:=false;
  inc(i);
  end;
if Q
  then writeln('YES')
  else writeln('NO');
end.
