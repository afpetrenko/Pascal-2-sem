program lab11;

var
  s: string;
  k, l, t: byte;
  m: array of char;
  kol: array of byte;


procedure str();
var
  i, j, c: byte;

begin

  
  for i := 1 to l do 
  begin
    c := 0;
    
    for j := 1 to l do 
    begin
      if s[i] = s[j] then inc(c);      
    end;
    
    if c < k then
      begin
        m[t] := s[i];
        kol[t] := c;
        inc(t);
      end;
    end;
   t := t - 1;
  end;


procedure output();
var
  i, j, c: byte;

begin
writeln('Ѕуквы в строке которые встречаютс€ менее ', k,' раз(а):');
  
  for i := 1 to t do
    begin
    c := 0;
    for j := i to t do
      begin
      if m[i] = m[j] then inc(c);
      end;
      if c = 1 then writeln(m[i],' встречаетс€ ', kol[i],' раз(а)');
    end;             
end;


begin
  writeln('¬ведите строку:');
  readln(s);
  writeln('¬ведите K:');
  readln(k);
  l := length(s);
  SetLength(m, l);
  SetLength(kol, l);
  str();
  output();
end.