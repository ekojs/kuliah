program Tugas_1_1;
uses crt;

const
nilai: array[0..5] of char = ('A','B','C','D','E','F');

var i: integer;

begin
    for i:= 0 to length(nilai)-1 do
        begin
        writeln('Nilai konstan array ke ',i,' = ',nilai[i]);
        end;    

end.
