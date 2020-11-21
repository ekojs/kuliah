program Tugas2_3;
uses crt;

{
Output program :
[
x o x o x
o x o x o
x o x o x
o x o x o
x o x o x
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
  	hasil[i,j] := ' ';
	if ((i mod 2 = 0) and (j mod 2 = 0)) then
  	  hasil[i,j] := 'x'
	else if ((i mod 2 = 0) or (j mod 2 = 0)) then
  	  hasil[i,j] := 'o'
	else
  	  hasil[i,j] := 'x';
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
