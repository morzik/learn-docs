program  upr;
uses crt;
{-----------------Îïèñàíèå òèïîâ-----------------------}
type 
ocenka=record
ekz:array[1..6] of integer;
zach1,zach2:string;
end;
student=record
fam,im,ot:string;
stip:integer;
end;
vedomost=record
ocen:ocenka;
stud:student;
end;
A=array [1..20] of vedomost;
{-------------îïèñàíèå ïåğåìåííûõ---------------------}
var X,Q:A;
i,j,k,l,n:integer;
S,S1,S2:string;
t,c,v,d:real;
{------------------Ïğèñâàèâàíèå -------------------------}
procedure wwod_vedom (var o:vedomost);
begin
write('ââåäèòå ôàìèëèş                ');readln(o.stud.fam);
write('ââåäèòå èìÿ                    ');readln(o.stud.im);
write('ââåäèòå îò÷åñòâî               ');readln(o.stud.ot);
write('ââåäèòå îöåíêó çà 1 ıêçàìåí    ');readln(o.ocen.ekz[1]);
write('ââåäèòå îöåíêó çà 2 ıêçàìåí    ');readln(o.ocen.ekz[2]);
write('ââåäèòå îöåíêó çà 3 ıêçàìåí    ');readln(o.ocen.ekz[3]);
write('ââåäèòå îöåíêó çà 4 ıêçàìåí    ');readln(o.ocen.ekz[4]);
write('ââåäèòå îöåíêó çà 5 ıêçàìåí    ');readln(o.ocen.ekz[5]);
write('ââåäèòå îöåíêó çà 6 ıêçàìåí    ');readln(o.ocen.ekz[6]);
write('ââåäèòå îöåíêó çà 1 çà÷åò      ');readln(o.ocen.zach1);
write('ââåäèòå îöåíêó çà 2 çà÷åò      ');readln(o.ocen.zach2);
end;
{-----------------------------------------------------------}
procedure wwod(var x:A);
var i:integer;
begin
write('n=');readln(n);
for i:=1 to n do begin
clrscr;
wwod_vedom(x[i]) end;end;
{-----------------------------------------------------------}
{---------------Ïå÷àòü òàáëèöû -------------------}
procedure wywod(n:integer;h:A);
var i:integer;
begin
clrscr;
for i:=1 to 80 do write('-');
gotoxy (1,4);
for i:=1 to 80 do write('-');
gotoxy (1,2);write('|   Ôàìèëèÿ    |    ğåçóëüòàòû ıêçàìåíîâ     |    ñäà÷à çà÷åòîâ    |           |');
gotoxy (1,3);write('|   Èíèöèàëû   |1ıêç|2ıêç|3ıêç|4ıêç|5ıêç|6ıêç| 1 çà÷åò  |2  çà÷åò  | ñòèïåíäèÿ |');
for i:=1 to n do 
begin
gotoxy (1,i+4);write('| ',h[i].stud.fam,' ',h[i].stud.im[1],'.',h[i].stud.ot[1],'.');
gotoxy (16,i+4);write('| ',h[i].ocen.ekz[1]);
gotoxy (21,i+4);write('| ',h[i].ocen.ekz[2]);
gotoxy (26,i+4);write('| ',h[i].ocen.ekz[3]);
gotoxy (31,i+4);write('| ',h[i].ocen.ekz[4]);
gotoxy (36,i+4);write('| ',h[i].ocen.ekz[5]);
gotoxy (41,i+4);write('| ',h[i].ocen.ekz[6]);
gotoxy (46,i+4);write('|',h[i].ocen.zach1);
gotoxy (57,i+4);write('|',h[i].ocen.zach2);
gotoxy (68,i+4);write('|',h[i].stud.stip,' ğóá.');
gotoxy (80,i+4);write('|');
end;
gotoxy(1,n+5);for i:=1 to 80 do write('-');
end;
{---------------------------------------------------------}
{--------------------------------}
procedure priswaiwanie(var h:A);
begin n:=15;
h[1].stud.fam:='Áóòÿâèíà';
h[1].stud.im:='Ìàğèÿ';
h[1].stud.ot:='Âèêòîğîâíà';
h[1].ocen.ekz[1]:=3;
h[1].ocen.ekz[2]:=4;
h[1].ocen.ekz[3]:=2;
h[1].ocen.ekz[4]:=3;
h[1].ocen.ekz[5]:=3;
h[1].ocen.ekz[6]:=2;
h[1].ocen.zach1:='çà÷òåíî';
h[1].ocen.zach2:='çà÷òåíî';
h[2].stud.fam:='Ãèğøîí';
h[2].stud.im:='Äàíèıëà';
h[2].stud.ot:='Àëåêñàíäğîâíà';
h[2].ocen.ekz[1]:=4;
h[2].ocen.ekz[2]:=4;
h[2].ocen.ekz[3]:=5;
h[2].ocen.ekz[4]:=3;
h[2].ocen.ekz[5]:=3;
h[2].ocen.ekz[6]:=4;
h[2].ocen.zach1:='çà÷òåíî';
h[2].ocen.zach2:='çà÷òåíî';
h[3].stud.fam:='Ìóğàâüåâ';
h[3].stud.im:='Èãîğü';
h[3].stud.ot:='Âàñèëüåâè÷';
h[3].ocen.ekz[1]:=3;
h[3].ocen.ekz[2]:=3;
h[3].ocen.ekz[3]:=2;
h[3].ocen.ekz[4]:=2;
h[3].ocen.ekz[5]:=2;
h[3].ocen.ekz[6]:=2;
h[3].ocen.zach1:='çà÷òåíî';
h[3].ocen.zach2:='íå çà÷òåíî';
h[4].stud.fam:='Ìàêóğèí';
h[4].stud.im:='Íèêîëàé';
h[4].stud.ot:='Àëåêñàíäğîâè÷';
h[4].ocen.ekz[1]:=4;
h[4].ocen.ekz[2]:=4;
h[4].ocen.ekz[3]:=5;
h[4].ocen.ekz[4]:=5;
h[4].ocen.ekz[5]:=5;
h[4].ocen.ekz[6]:=4;
h[4].ocen.zach1:='çà÷òåíî';
h[4].ocen.zach2:='çà÷òåíî';
h[5].stud.fam:='Êî÷êèíà ';
h[5].stud.im:='Àëèñà';
h[5].stud.ot:='Âèòàëüåâíà';
h[5].ocen.ekz[1]:=4;
h[5].ocen.ekz[2]:=4;
h[5].ocen.ekz[3]:=4;
h[5].ocen.ekz[4]:=4;
h[5].ocen.ekz[5]:=4;
h[5].ocen.ekz[6]:=4;
h[5].ocen.zach1:='çà÷òåíî';
h[5].ocen.zach2:='çà÷òåíî';
h[6].stud.fam:='Õîáîòîâà';
h[6].stud.im:='Ìàğãàğèòà';
h[6].stud.ot:='Ïàâëîâíà';
h[6].ocen.ekz[1]:=3;
h[6].ocen.ekz[2]:=3;
h[6].ocen.ekz[3]:=3;
h[6].ocen.ekz[4]:=3;
h[6].ocen.ekz[5]:=3;
h[6].ocen.ekz[6]:=3;
h[6].ocen.zach1:='çà÷òåíî';
h[6].ocen.zach2:='íå çà÷òåíî';
h[7].stud.fam:='Ñîêîëîâ';
h[7].stud.im:='Àíäğåé';
h[7].stud.ot:='Áîğèñîâè÷';
h[7].ocen.ekz[1]:=5;
h[7].ocen.ekz[2]:=5;
h[7].ocen.ekz[3]:=5;
h[7].ocen.ekz[4]:=5;
h[7].ocen.ekz[5]:=5;
h[7].ocen.ekz[6]:=5;
h[7].ocen.zach1:='çà÷òåíî';
h[7].ocen.zach2:='çà÷òåíî';
h[8].stud.fam:='Áàáóğèíà';
h[8].stud.im:='Íàòàëüÿ';
h[8].stud.ot:='Ôåäîğîâíà';
h[8].ocen.ekz[1]:=3;
h[8].ocen.ekz[2]:=2;
h[8].ocen.ekz[3]:=3;
h[8].ocen.ekz[4]:=2;
h[8].ocen.ekz[5]:=3;
h[8].ocen.ekz[6]:=4;
h[8].ocen.zach1:='çà÷òåíî';
h[8].ocen.zach2:='çà÷òåíî';
h[9].stud.fam:='Åôèìîâ';
h[9].stud.im:='Ñàââà';
h[9].stud.ot:='Èãíàòüåâè÷';
h[9].ocen.ekz[1]:=5;
h[9].ocen.ekz[2]:=4;
h[9].ocen.ekz[3]:=4;
h[9].ocen.ekz[4]:=5;
h[9].ocen.ekz[5]:=5;
h[9].ocen.ekz[6]:=5;
h[9].ocen.zach1:='çà÷òåíî';
h[9].ocen.zach2:='íå çà÷òåíî';
h[15].stud.fam:='Ïåğôèëîâà';
h[15].stud.im:='Òàòüÿíà';
h[15].stud.ot:='Áîğèñîâíà';
h[15].ocen.ekz[1]:=4;
h[15].ocen.ekz[2]:=3;
h[15].ocen.ekz[3]:=3;
h[15].ocen.ekz[4]:=3;
h[15].ocen.ekz[5]:=3;
h[15].ocen.ekz[6]:=4;
h[15].ocen.zach1:='íå çà÷òåíî';
h[15].ocen.zach2:='çà÷òåíî';
h[11].stud.fam:='Êî÷åøêîâ';
h[11].stud.im:='Ãåííàäèé';
h[11].stud.ot:='Íèêîëàåâè÷';
h[11].ocen.ekz[1]:=2;
h[11].ocen.ekz[2]:=2;
h[11].ocen.ekz[3]:=3;
h[11].ocen.ekz[4]:=2;
h[11].ocen.ekz[5]:=3;
h[11].ocen.ekz[6]:=3;
h[11].ocen.zach1:='çà÷òåíî';
h[11].ocen.zach2:='çà÷òåíî';
h[12].stud.fam:='Õîäíåâ';
h[12].stud.im:='Àëåêñàíäğ';
h[12].stud.ot:='Ìèõàéëîâè÷';
h[12].ocen.ekz[1]:=5;
h[12].ocen.ekz[2]:=4;
h[12].ocen.ekz[3]:=3;
h[12].ocen.ekz[4]:=4;
h[12].ocen.ekz[5]:=5;
h[12].ocen.ekz[6]:=4;
h[12].ocen.zach1:='çà÷òåíî';
h[12].ocen.zach2:='íå çà÷òåíî';
h[13].stud.fam:='Ëÿõ';
h[13].stud.im:='Åëåíà';
h[13].stud.ot:='Åâãåíüåâíà';
h[13].ocen.ekz[1]:=3;
h[13].ocen.ekz[2]:=3;
h[13].ocen.ekz[3]:=2;
h[13].ocen.ekz[4]:=2;
h[13].ocen.ekz[5]:=2;
h[13].ocen.ekz[6]:=3;
h[13].ocen.zach1:='çà÷òåíî';
h[13].ocen.zach2:='çà÷òåíî';
h[14].stud.fam:='Äóòîâ';
h[14].stud.im:='Íèêîëàé';
h[14].stud.ot:='Âëàäèìèğîâè÷';
h[14].ocen.ekz[1]:=3;
h[14].ocen.ekz[2]:=2;
h[14].ocen.ekz[3]:=3;
h[14].ocen.ekz[4]:=3;
h[14].ocen.ekz[5]:=4;
h[14].ocen.ekz[6]:=3;
h[14].ocen.zach1:='çà÷òåíî';
h[14].ocen.zach2:='íå çà÷òåíî';
h[10].stud.fam:='Òàëàøîâ';
h[10].stud.im:='Ìèõàèë';
h[10].stud.ot:='Âëàäèìèğîâè÷';
h[10].ocen.ekz[1]:=2;
h[10].ocen.ekz[2]:=2;
h[10].ocen.ekz[3]:=3;
h[10].ocen.ekz[4]:=3;
h[10].ocen.ekz[5]:=2;
h[10].ocen.ekz[6]:=2;
h[10].ocen.zach1:='çà÷òåíî';
h[10].ocen.zach2:='íå çà÷òåíî';
end;
procedure srbalst(s:vedomost;var q:real);
          var i,sr:integer;
          begin
               q:=0;
               sr:=0;
               for i:=1 to 6 do sr:=sr+s.ocen.ekz[i];
               q:=sr/6;
          end;
          
procedure srbal(y:A; var m:real);
var i:integer;
t:real;
begin
m:=0;
for i:=1 to 15 do
    begin
    srbalst(y[i],t);
    m:=m+t;
    end;
m:=m/15;
end;


procedure stipendiya(y:A; var z:A);
var t:real; i:integer;
begin
for i:=1 to 15 do
begin
srbalst(y[i],t);
if (y[i].ocen.zach1='çà÷òåíî') and (y[i].ocen.zach2='çà÷òåíî') then
   if (t>=4) and (t<4.5) then z[i].stud.stip:=1000 else
      if (t>=4.5) and (t<5) then z[i].stud.stip:=1250 else
         if t=5 then z[i].stud.stip:=1500;
end;
end;


//Îñíîâíàÿ ïğîãğàììà
begin
 priswaiwanie(x);
 srbal(X,t);
 write('Ñğåäíèé áàë ãğóïïû ',t);
 stipendiya(X,X);
 wywod(15,x);
end.


