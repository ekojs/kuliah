program Tugas_1_3;
uses crt;

const max = 255;

var n,i: integer;
nama: array[0..max] of string;

begin
    write('Masukkan panjang karakter nama : ');readln(n);
    for i:= 0 to n-1 do
        begin
        write('Input per karakter : ');readln(nama[i]);
        end;

    writeln('============= Hasil Masukan ==============');
    writeln('Nama anda : ');
    for i:= 0 to n-1 do
    	begin
        write(nama[i]);
	end;
writeln();
end.
