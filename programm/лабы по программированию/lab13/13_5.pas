program lab15_1;
uses crt;
var i,c:integer; x:string;
begin
  readln(x);
  c:=0;
  for i:=1 to length(x) do
    case x[i] of
      'à','î','ó','û','ý','ÿ','¸','þ','è','å': c:=c+1;
    end;
   writeln(c);
end.