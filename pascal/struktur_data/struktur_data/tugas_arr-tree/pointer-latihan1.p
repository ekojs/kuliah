program latihan1;
uses crt;

var nama,npm:string;
n,p:^string;

begin
	clrscr;
	TextColor(Blue);
	TextBackground(White);
	writeln('Programmed by Eko Junaidi Salam (2017 4357 9015)');
	write('Input Nama : ');readln(nama);
	write('Input NPM  : ');readln(npm);

	new(n);new(p);
	n:= @nama;
	p:= @npm;
	
	writeln('Nama Mhs : ',nama);
	writeln('Alamat memori nama mhs : ',seg(n^),':',ofs(n^));
	writeln('NPM Mhs  : ',npm);
	writeln('Alamat memori npm mhs  : ',seg(p^),':',ofs(p^));

end.
