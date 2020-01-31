program upr1;
uses crt;
var A:set of char;
    s:string;
    i,k:integer;
begin
writeln('¬ведите строку');
read(s);
A:=[',','.','?','!',';',':','-'];
k:=0;
     for i:=1 to length(s) do
         if s[i]in A then k:=k+1;
write('k=',k);
end.