program rec;
uses crt;

type mhs = record nim:string;nama:string end;
var arr:array of mhs;
n,i:integer;

begin
clrscr;
	write('Masukkan n mahasiswa : ');readln(n);
	setlength(arr,n);

	for i:=0 to length(arr)-1 do begin
		write('Masukkan nim mhs ',i,' : ');readln(arr[i].nim);
		write('Masukkan nama mhs ',i,' : ');readln(arr[i].nama);
	end;
	writeln();

	for i:=0 to length(arr)-1 do begin
		writeln('Nim : ',arr[i].nim,', nama : ',arr[i].nama);
	end;
end.
