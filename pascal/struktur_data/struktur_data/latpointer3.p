program latpointer3;
uses crt;

var Pti: ^integer;
I:integer;

begin
clrscr;
i:=5;
        new(pti);
	pti^:=10;
	writeln('pti = ',pti^);
	dispose(pti);
	readln;
end.
