{
Author : Eko Junaidi Salam 201743579015
Kelas  : XA
Tugas  : 3
}
program OperasiSTACK;
uses crt;

const maks = 10;
type 
    nilai_matkul = record npm:string[8];nama:string[30];nilai:integer; end;
    stack = record top:integer; data:array[1..maks] of nilai_matkul; end;

procedure Inisialisasi(var s:stack);
begin
    s.top := 0;
end;

function Isempty(var s:stack): boolean;
var
    hasil:boolean;
begin
    hasil := false;
    if s.top = 0 then
        begin
            hasil := true;
        end;
    Isempty := hasil;
end;

function Isfull(var s:stack): boolean;
var
    hasil:boolean;
begin
    hasil := false;
    if s.top = maks then
        begin
            hasil := true;
        end;
    Isfull := hasil;
end;

procedure Push(npm:string;nama:string;nilai:integer; var s:stack);
begin
    if Isfull(s) then
    begin
        writeln('Stack Penuh');
    end
    else
    begin
        if Isempty(s) then
        begin
            s.top := 1;
            s.data[s.top].npm := npm;
            s.data[s.top].nama := nama;
            s.data[s.top].nilai := nilai;
        end
        else
        begin
            s.top := s.top + 1;
            s.data[s.top].npm := npm;
            s.data[s.top].nama := nama;
            s.data[s.top].nilai := nilai;
        end;
    end;
end;

procedure Pop(var s:stack);
begin
    if s.top <> 0 then
    begin
        s.top := s.top -1;
    end
    else
    begin
        writeln('Data habis');
    end;
end;

procedure Cetakstack(var s:stack);
var
    i:integer;
begin
    if s.top <> 0 then
    begin
        for i := s.top downto 1 do
        begin
            with s.data[i] do
            begin
                writeln;
                writeln('Elemen ke: ',i);
                writeln('npm: ',npm);
                writeln('nama: ',nama);
                writeln('nilai: ',nilai);
            end;
        end;
    end
    else
    begin
        writeln('Stack kosong.');
    end;
end;

var
    s:stack;
    banyak:byte;
    i:integer;
begin
clrscr;
Inisialisasi(s);
writeln;
writeln('------------------Awal------------------');
Cetakstack(s);
writeln;
writeln('----------------------------------------');
write('Masukkan jumlah data yang akan disimpan: '); readln(banyak);
writeln;

for i := 1 to banyak do
    with s.data[i] do
    begin
        write('npm: ');readln(npm);
        write('nama: ');readln(nama);
        write('nilai: ');readln(nilai);
        writeln;
    end;

writeln('Setelah di push');
for i := 1 to banyak do
    with s.data[i] do
    begin
        Push(npm,nama,nilai,s);
    end;
writeln;
Cetakstack(s);
writeln('----------------------------------------');
writeln;

writeln('Setelah di pop');
Pop(s);
Cetakstack(s);
writeln;
writeln('----------------------------------------');
writeln;
readln;

end.
