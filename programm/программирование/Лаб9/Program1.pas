program L9Z3;
type mass=array[0..1000,0..1000] of longint;
var n,m,c,i,j,max:longint;
    a:mass;
    b:array[0..100000] of longint;
begin
read(n);read(m);

 for i:=0 to n-1 do
   for j:=0 to m-1 do
                   begin
                   read(a[i,j]);
                   if max<a[i,j] then max:=a[i,j];
                   end;


for i:=0 to n-1 do
   for j:=0 to m-1 do
   if a[i,j]=max then b[i]:=1;
   
for i:=0 to n-1 do if b[i]=1 then
begin
b[i]:=0;
for j:=0 to m-1 do b[i]:=b[i]+a[i,j];
end;

max:=b[0];
for i:=0 to n-1 do if max<b[i] then c:=i;

write(c);
end.
                                     