{
Output Program :
x
xx
xxx
xxxx
xxxxx
}
Program Belajar;
uses crt;

const n = 5;

var
i,j,k:integer;

begin
for i:= n downto 1 do
  begin
	if(n-i > 0)then
	  for k:= 1 to n-i do
	    begin
		write('  ');
	    end;

	for j:= 1 to i do
	  begin
		write('x ');
	  end;
	writeln(' ');
  end;

end.
