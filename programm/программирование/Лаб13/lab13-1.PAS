program a;
uses crt;
type st=string;mass=array[1..20] of st;
var ss,ss1,ss2,ss3:st;
         i,j,k,l,n:integer;
                 y:mass;

function quantity(s1,s2:st):integer;
var i,k:integer;
begin
k:=0;
for i:=1 to length(s2)-length(s1)+1 do 
if copy(s2,i,length(s1))=s1 then k:=k+1;
quantity:=k; end;

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
var i,j,z:integer;
c:string;
begin
for i:=1 to k do begin c:=' ';for j:=1 to 30-length(x[i]) do write(c);writeln(x[i]);end;
end;

begin
writeln('input string');  readln(ss);

slova(ss,n,y);
clrscr;
printmass(n,y);

end.