program latihan;
uses crt;

type mhs = record nim:string;nama:string;usia:integer;saudara:integer end;
var arr:array of mhs;
n,i:integer;

begin
	clrscr;
	TextColor(Blue);
	TextBackground(White);
	writeln('Programmed by Eko Junaidi Salam (2017 4357 9015)');
	write('Masukkan banyak data yang akan dimasukkan : ');readln(n);
	setlength(arr,n);

	for i:=0 to length(arr)-1 do begin
		writeln('Data ke ',i+1);
		write('Masukkan nim  : ');readln(arr[i].nim);
		write('Masukkan nama : ');readln(arr[i].nama);
		write('Masukkan usia : ');readln(arr[i].usia);
		write('Masukkan saudara : ');readln(arr[i].saudara);
	end;
	writeln();
	clrscr;
	writeln('Data yang anda masukkan : ');
	for i:=0 to length(arr)-1 do begin
		gotoxy(5,i+3);
		write(arr[i].nim);
		gotoxy(30,i+3);
		write(arr[i].nama);
		gotoxy(50,i+3);
		write(arr[i].usia);
		gotoxy(60,i+3);
		write(arr[i].saudara);
		writeln();
	end;
end.
