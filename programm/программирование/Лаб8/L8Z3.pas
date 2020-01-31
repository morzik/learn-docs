program L8Z3;
type mass=array[1..10] of integer;
var i,j,k,m,n:integer;
    a:mass;
begin
write ('n=');
read(n);
for i:=1 to n do
read(a[i]);
i:=2;
m:=0;
while i<=n do
if a[i]=a[i-1] then
  begin
   j:=i;
   k:=1;
   while (a[j]=a[j-1])and(j<=n) do
    begin
     j:=j+1;
     k:=k+1;
    end;
   if k>m then  m:=k;
   i:=i+k;
  end
else i:=i+1;
if m=0 then write('ќдинаковых чисел р€дом нет')
else write('ћаксимальна€ последовательность одинаковых чисел подр€д=',m);
end.