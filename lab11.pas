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
writeln('����� � ������ ������� ����������� ����� ', k,' ���(�):');
  
  for i := 1 to t do
    begin
    c := 0;
    for j := i to t do
      begin
      if m[i] = m[j] then inc(c);
      end;
      if c = 1 then writeln(m[i],' ����������� ', kol[i],' ���(�)');
    end;             
end;


begin
  writeln('������� ������:');
  readln(s);
  writeln('������� K:');
  readln(k);
  l := length(s);
  SetLength(m, l);
  SetLength(kol, l);
  str();
  output();
end.