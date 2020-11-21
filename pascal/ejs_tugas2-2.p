program Tugas2_1;
uses crt;

{
Output program :
[
x o o o o
  x o o o
    x o o
      x o
        x
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
  	hasil[j,i] := ' ';
	if j=i then
  	  hasil[j,i] := 'x'
	else if (i>j) then
  	  hasil[j,i] := 'o'
	else
  	  hasil[j,i] := ' ';


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
