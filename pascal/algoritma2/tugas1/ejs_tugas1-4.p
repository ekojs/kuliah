program Tugas_1_3;
uses crt;

const max = 12;

var n,i: integer;
npm: array[0..max] of string;

begin
    for i:= 0 to max-1 do
        begin
        write('Input per karakter NPM anda: ');readln(npm[i]);
        end;

    writeln('============= Hasil Masukan ==============');
    writeln('NPM anda : ');
    for i:= 0 to max-1 do
    	begin
        write(npm[i]);
	end;
writeln();
end.
