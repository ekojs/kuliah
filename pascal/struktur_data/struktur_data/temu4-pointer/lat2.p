program latihan1;
uses crt;

type mhs = record nama:string;npm:string;kelas:string end;

var nama,npm:string;
n,p:^string;
i:integer;
arr:array of mhs;

begin
	clrscr;
	writeln('INPUT DATA');
	write('Masukkan banyak data : ');readln(i);
	writeln;
	setlength(arr,i);
	for i:=0 to length(arr)-1 do begin
		write('Input Nama ke-',i+1,'   : ');readln(arr[i].nama);
		write('Input NPM ke-',i+1,'    : ');readln(arr[i].npm);
		write('Input Kelas ke-',i+1,'  : ');readln(arr[i].kelas);
		writeln();
	end;

	for i:=0 to length(arr)-1 do begin
		writeln('Nama ke-',i+1,'  : ',arr[i].nama);
		writeln('NPM ke-',i+1,'   : ',arr[i].npm);
		writeln('Kelas ke-',i+1,' : ',arr[i].kelas);
		writeln();
	end;
end.
