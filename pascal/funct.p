program funct;
uses crt;

function tambah(a:integer;b:integer):integer;
begin
        tambah:=a+b;
end;

function kurang(a,b:integer;var c:integer):integer;
begin
	kurang:=a-b;
	c:=kurang;
end;

var c,d:integer;

begin
        c:=tambah(3,2);
        writeln('Nilai c : ',c);
	d:=kurang(3,2,c);
        writeln('Nilai c : ',c);
        writeln('Nilai d : ',d);

end.
