program lab10;
uses crt;

type uch=record
  fam,im,spec:string[20];
  yb,yd,yo:1..1999;
  inv:string[255];
  coun:string[40] end;
  mass=array[1..20] of uch;

var X:mass;i,N,k:integer;s,s1:string[20];f:file of uch;g:text;


begin clrscr;
assign(f,'w:\sciense');
reset(f);n:=0;
while not(eof(f)) do begin n:=n+1;read(f,x[n]); end; close(f);

end.