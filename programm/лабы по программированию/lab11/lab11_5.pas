program lab11_5;
uses crt;
var s:string; sum,i,a,q,last:integer;
begin
  readln(s);
  sum:=0;
  for i:=1 to length(s) do
  begin
   val(s[i],a,q);
   sum:=sum+a;
  end;
  val(s[length(s)],last,q);
  if (sum mod 3=0) and (last mod 2 =0)
    then writeln('да')
    else writeln('нет');
end.