program prosv;
uses crt;

procedure tambah(a:integer;b:integer);
var c:integer;
begin
        c:=a+b;
        writeln(a,' + ',b,' = ',c);
end;

procedure kurang(a:integer;b:integer;var c:integer);
begin
	c:=a-b;
end;

var c:integer;
begin
        tambah(2,3);
	kurang(5,3,c);
	writeln('Nilai c : ',c);
end.
