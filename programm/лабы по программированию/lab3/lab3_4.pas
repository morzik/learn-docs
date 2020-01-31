program lab3_4;
uses crt;
var y,m,d,y1,m1,d1,y2,m2,d2: integer;

begin
     repeat
     readln(y1,m1,d1);
     readln(y2,m2,d2);
     until ((m1>=1) and (m1<=12) and (m2>=1) and (m2<=12)) or ((d1>=1) and (d1<32) and (d2>=1) and (d2<=32)) or ((y1>=1949) and (y2>=1949));


     y:=y1-y2;
     m:=m1-m2;
     d:=d1-d2;
     
     if m1=2 then
        if d<0
           then begin
                  d:=d+28;
                  m:=m-1;
            end;
        if m<0
           then begin
                  m:=m+12;
                  y:=y-1;
           end
     else if (m1=4) or (m1=6) or (m1=9) or (m1=11) then
        if d<0
           then begin
                  d:=d+30;
                  m:=m-1;
            end;
        if m<0
           then begin
                  m:=m+12;
                  y:=y-1;
           end
     else if d<0
        then begin
             d:=d+31;
             m:=m-1;
        end;
     if m<0
        then begin
             m:=m+12;
             y:=y-1;
        end;
     writeln(y,' полных лет, ',m,' полных мес€цев и ',d,' дней');
end.