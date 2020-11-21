program belajar;
uses crt;

var 
i: integer;
data: array[0..5] of char;

begin
  writeln('Program Belajar');
  for i:= 0 to length(data)-1 do
  begin
	write('Masukkan char : ');readln(data[i]);
  end;

  for i:= 0 to length(data)-1 do
  begin
	write(data[i]);
  end;
  writeln();

end.
