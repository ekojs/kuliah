program Tugas2_1;
uses crt;

{
Output program :
[
x x x x x
o o o o o
x x x x x
o o o o o
x x x x x
]
}

const n=4;

var 
i,j:integer;
hasil:array [0..n,0..n] of char;

begin

for i:= 0 to n do
  for j:= 0 to n do
  begin
  	hasil[j,i] := 'x';
	if (j mod 2) = 0 then
  	  hasil[j,i] := 'x'
	else
  	  hasil[j,i] := 'o';

  end;

for i:= 0 to n do
begin
  for j:= 0 to n do
  begin
	write(hasil[i,j],' ');
  end;
  writeln(' ');
end;

end.
