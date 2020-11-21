program latihan2;
uses crt;

type data = ^node;
mhs = record nama:string;npm:string;kelas:string end;
node = record isi:mhs;next:data end;

var buff:mhs;
n,i:integer;
mahasiswa,pointer:data;

function isempty():boolean;
begin
	isempty:= (mahasiswa=nil) and (pointer=nil);
end;

procedure tambah(m:mhs);
var tmp:data;
begin
	new(tmp);
	tmp^.isi:=m;
	tmp^.next:=nil;

	if isempty() then begin
		mahasiswa:=tmp;
		pointer:=tmp;
	end
	else begin
		pointer^.next:=tmp;
		pointer:=tmp;
	end;
end;

procedure cetak(m:data);
var i:integer;
begin
	i:=0;
	while m<>nil do begin
		writeln('Nama ke-',i+1,'  : ',m^.isi.nama);
		writeln('NPM ke-',i+1,'   : ',m^.isi.npm);
		writeln('Kelas ke-',i+1,' : ',m^.isi.kelas);
		writeln();
		m:=m^.next;
		i:=i+1;
	end;
end;

begin
	clrscr;
	TextColor(Blue);
	TextBackground(White);
	writeln('Programmed by Eko Junaidi Salam (2017 4357 9015)');
	writeln('INPUT DATA');
	write('Masukkan banyak data : ');readln(n);
	mahasiswa:=nil;pointer:=nil;

	for i:=0 to n-1 do begin
		write('Input Nama ke-',i+1,'   : ');readln(buff.nama);
		write('Input NPM ke-',i+1,'    : ');readln(buff.npm);
		write('Input Kelas ke-',i+1,'  : ');readln(buff.kelas);
		tambah(buff);
		writeln();
	end;
	cetak(mahasiswa);
end.
