program a;
uses crt;
type st=string;mass=array[1..20] of st;
var ss,ss1,ss2,ss3:st;
         i,j,k,l,n:integer;
                 y,y1:mass;

function quantity(s1,s2:st):integer;
var i,k:integer;
begin
k:=0;
for i:=1 to length(s2)-length(s1)+1 do
if copy(s2,i,length(s1))=s1 then k:=k+1;
quantity:=k; end;

function countz(s:string):integer;
var k,i:integer;
begin
  k:=0;
  for i:=1 to length(s) do
    if s[i]='z' then
    begin
      k:=k+1;
    end;
  countz:=k;
end;

procedure inso(var s:string);
var i:integer;
begin
  for i:=1 to length(s)+1 do
  if s[i]='z' then
    insert('o',s,i+1)
end;



procedure inverse(var s1:st);
var i:integer;k:st;
begin
k:='';
for i:=1 to length(s1) do
k:=s1[i]+k;
s1:=k; end;

procedure double(var s1:st);
var i:integer;k:st;
begin
k:='';
for i:=1 to length(s1) do
k:=k+s1[i]+s1[i];
s1:=k; end;

procedure zamena(var s1:st;s2,s3:st);
var i:integer;k:st;
begin
k:='';
for i:=1 to length(s1) do
if copy(s1,i,length(s2))=s2 then begin k:=k+s3;i:=i+length(s2)-1 end
else k:=k+s1[i];
s1:=k; end;

procedure del(var s1:st;s2:st);
begin
zamena(s1,s2,'');
end;

procedure  slova(s:st;var k:integer;var x:mass);
var i,l:integer;
begin
l:=pos('  ',s);
while l>0 do begin
zamena(s,'  ',' ');
l:=pos('  ',s);end;
k:=1;l:=pos(' ',s);
while l>0 do begin
x[k]:=copy(s,1,l-1);
k:=k+1;
delete(s,1,l);
l:=pos(' ',s);
end;
x[k]:=copy(s,1,length(s));
end;

procedure printmass(k:integer;x:mass);
var i,l,kz:integer;
begin
for i:=1 to k do
  begin
  kz:= countz(x[i]);
  l:=(80-length(x[i]) - 2) div 2;
  gotoxy(l,i);
  writeln(x[i],' ',kz);
  end;
end;

procedure slovanaa(k:integer; x:mass; var newm:mass; var cont:integer);
var i:integer;
begin
cont:=0;
for i:=1 to k do
  begin
  if pos('z',x[i])<>0 then
    begin
    cont:=cont+1;
    inso(x[i]);
    newm[cont]:=x[i];
    end;
  end;
end;



begin
writeln('input string');  readln(ss);
slova(ss,n,y);
slovanaa(n,y,y1,j);
printmass(j,y1);
{n - колчество элементов, y - massiv}



end.