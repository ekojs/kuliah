program Tugas_1_2;
uses crt;

const n = 2;

type Matkul = record kode: string;nama: string;sks: integer end;
type Mhs = record nim: integer;nama: string;mk: array[0..1] of Matkul end;

var i,j,k: integer;
listMhs: array[0..2] of Mhs;
listMatkul: array[0..n] of Matkul;

begin
    writeln('Masukkan Mata Kuliah :');
    writeln('========================');

    for i:= 0 to n do
	begin
	write('Kode Matkul : ');readln(listMatkul[i].kode);
	write('Nama Matkul : ');readln(listMatkul[i].nama);
	write('SKS : ');readln(listMatkul[i].sks);
	end;

    writeln('Masukkan Mahasiswa :');
    writeln('========================');

    for i:= 0 to 1 do
	begin
	write('NIM : ');readln(listMhs[i].nim);
	write('Nama : ');readln(listMhs[i].nama);
	for j:= 0 to n do
	  begin
		writeln(j,' : ',listMatkul[j].nama);
	  end;
	for j:= 0 to 1 do
	  begin
		write('Pilih Mata Kuliah ',j+1,' : ');readln(k);
		listMhs[i].mk[j] := listMatkul[k];
	  end;
	end;


    writeln('========================');
    for i:= 0 to 1 do
        begin
        writeln('Data Mhs ke ',i+1);
	writeln('NIM / Nama Mahasiswa : ',listMhs[i].nim,' / ',listMhs[i].nama);
	writeln('Mata Kuliah yang dipilih : ');
	for j:= 0 to length(listMhs[i].mk)-1 do
	  begin
		writeln(listmhs[i].mk[j].kode, ' : ',listmhs[i].mk[j].nama,', sks : ',listmhs[i].mk[j].sks);
	  end;
        end;    

end.
