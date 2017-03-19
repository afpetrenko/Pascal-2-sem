Program lab21;
const
  n = 2;
type
  mas = array [1..n] of string;
var 
f, g : text;
s : array[1..100] of byte;
c : char;
m, m1 : mas;
i, jg : byte;



Procedure input();
var
  k : byte;
begin
k := 1;
while not eof(f) do
  begin
  readln (f, m[k]);
  inc(k);
  end;
  
writeln('Строки в файле f.txt:');
for k := 1 to n do
  begin
  writeln(m[k]);
  end;
end;


Procedure sort();
var
  i, k, j, r : byte;
  check : boolean;
label
  mark, mark1;
begin

k := 1;
j := 1;
r := 1;

mark1:
while k <= n do
  begin
  i := 1;
  
  while i < length(m[k]) do
    begin
    if m[k][i] = c 
      then
      begin
        check := true;
         goto mark;
         end
      else
        inc(i);
    end;
    if i = length(m[k])
      then
         inc(k)
      else
    break;
  end;
  
    mark:
    if check = true then
    begin
    m1[j] := m[k];
    s[j] := 0;
    r := i;
    while r <= length(m[k]) do
      begin
      m1[j][r] := Upcase(m1[j][r]);
      inc(s[j]);
      inc(r);
      end;
   inc(j);
   inc(k);
   check := false;
    end;
   
   if k <= n then
    goto mark1;
    
    writeln;
    dec(j);
    jg := j;
    writeln('Результат записанный в файле g.txt');
    for r := 1 to j do
      begin
        writeln( m1[r], ' Кол-во преобразований: ', s[r]);
      end;
end;


begin
writeln('Введите букву:');
readln(c);
writeln;
assign (f, 'f.txt');
reset(f);
input();
sort();
assign (g, 'g.txt');
rewrite(g);
for i := 1 to jg do
  begin
  writeln(g, m1[i], ' Кол-во преобразований: ', s[i]);
  end;
close(g);
end.