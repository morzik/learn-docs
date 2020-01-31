program lab19_1;
uses crt;
var
f:text;
s,s1:string;
len,i:integer;

procedure vyvod ( t:text; a,b:string);
begin
clrscr;
assign(t,'sem1.txt');
reset(t);
if not eof(t) then readln(t,s);
while not eof(t) do
begin
readLn(t,s);
s1 := copy( s, 1, pos(',' ,s) -1 )  ;
writeln( s1 ) ;
end;
readkey;
close(t);
end;


begin
vyvod(f,s,s1);
end.