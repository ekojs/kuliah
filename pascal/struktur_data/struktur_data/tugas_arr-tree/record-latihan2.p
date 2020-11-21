program tugas2;
uses crt;

type mhs = record nim:string;nama:string;tugas:real;uts:real;uas:real end;
var arr:array of mhs;
n,i:integer;

function na (a,b,c:real):real;
begin
	na:= (a+b+c)/3;
end;

function grade(n:real):string;
begin
	if (n > 40) and (n <= 50) then
		grade:='D'
	else if (n > 50) and (n <= 65) then
		grade:='C'
	else if (n > 65) and (n <= 80) then
		grade:='B'
	else if (n > 80) and (n <= 100) then
		grade:='A'
	else
		grade:='E';
end;

begin
	clrscr;
	TextColor(Blue);
	TextBackground(White);
	write('Masukkan banyak data yang akan dimasukkan : ');readln(n);
	setlength(arr,n);

	for i:=0 to length(arr)-1 do begin
		writeln('Data ke ',i+1);
		write('Masukkan nim   : ');readln(arr[i].nim);
		write('Masukkan nama  : ');readln(arr[i].nama);
		write('Masukkan tugas : ');readln(arr[i].tugas);
		write('Masukkan uts   : ');readln(arr[i].uts);
		write('Masukkan uas   : ');readln(arr[i].uas);
	end;
	writeln();
	clrscr;
	writeln('----------------------------------------------------------------');
	gotoxy(3,2);write('NO');
	gotoxy(9,2);write('NIM');
	gotoxy(23,2);write('NAMA');
	gotoxy(29,2);write('TUGAS');
	gotoxy(36,2);write('UTS');
	gotoxy(44,2);write('UAS');
	gotoxy(52,2);write('NA');
	gotoxy(60,2);writeln('GRADE');
	gotoxy(0,3);
	writeln('----------------------------------------------------------------');
	for i:=0 to length(arr)-1 do begin
		gotoxy(3,i+4);write(i+1);
		gotoxy(9,i+4);write(arr[i].nim);
		gotoxy(23,i+4);write(arr[i].nama);
		gotoxy(29,i+4);write(arr[i].tugas:3:2);
		gotoxy(36,i+4);write(arr[i].uts:3:2);
		gotoxy(44,i+4);write(arr[i].uas:3:2);
		gotoxy(52,i+4);write(na(arr[i].tugas,arr[i].uts,arr[i].uas):3:2);
		gotoxy(61,i+4);write(grade(na(arr[i].tugas,arr[i].uts,arr[i].uas)));
		writeln();
	end;
	writeln;
	writeln('Programmed by Eko Junaidi Salam (2017 4357 9015)');
end.
