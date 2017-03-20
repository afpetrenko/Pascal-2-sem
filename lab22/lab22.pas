Program lab22;
type
mas = array[1..20] of integer;
var
f : text;
m : mas;
kol : byte;

Procedure input();
var
i : byte;

begin
i := 1;
reset(f);
while not eof(f) do
  begin
  read(f, m[i]);
  inc(i);
  end;
close(f);
  
dec(i);
kol := i;
end;


Procedure count();
var
i, nc, c : byte;

begin
nc := 0;
c := 0;
for i := 1 to kol do
  begin
  if m[i] mod 2 = 0 
    then
      inc(c)
    else
      inc(nc);
  end;
   
append(f);
writeln(f);
writeln(f, 'Количество четных чисел: ', c);
writeln(f, 'Количество нечетных чисел: ', nc);
close(f);
end;

                     
    



begin
assign(f, 'f.txt');
input();
count();
end.