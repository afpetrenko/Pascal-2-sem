Unit unitmax;
Interface
Type
rec = record
  name2, name : string [20];
  sch, bal : byte;
  end;
tmas = array[1..3] of rec;
var
masx : rec;

Procedure max(var mas:array of rec);

  Implementation
Procedure max(var mas:array of rec);
var
i, j: byte;
Begin
i := 1;
repeat
    if mas[i].bal > mas[i+1].bal 
      then
        begin
         masx := mas[i]; 
         inc(i);
        end
      else
        inc(i);
until i = 3;
end;
      
begin
end.