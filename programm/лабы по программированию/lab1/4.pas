program lab1_1;
uses crt;
var a,b,n,na,nb,ba,bb:longint;
begin
	readln(a);
	readln(b);
	readln(n);
	na:=a*n;
	nb:=b*n;
	bb:=nb mod 100;
	ba:=nb div 100;
	na:=na+ba;
	writeln(na,' ',bb);
end.