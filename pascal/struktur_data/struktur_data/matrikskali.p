program matrikskali;
uses crt;

type data = array of array of integer;
var arr:array of data;
i,j,b,k,c,n:integer;

procedure tampil(arr:data);
begin
	for i:=0 to length(arr)-1 do begin
		for j:=0 to length(arr[i])-1 do begin
			write(arr[i][j],' ');
		end;
		writeln();
	end;
end;

procedure initMatriks(var arr:data;b,k:integer);
begin
	setlength(arr,b);
	for i:=0 to length(arr)-1 do setlength(arr[i],k);
end;

procedure kalimatrik(var arr:array of data);
var tmp,m1,m2:data;
buff:integer;
begin
	if length(arr) < 2 then begin
		writeln('Matriks minimal harus ada 2 !!!');
		exit;
	end
	else if length(arr[0][0]) <> length(arr[1]) then begin
		writeln('Jumlah kolom pada matriks 1 tidak sama dengan jumlah baris pada matriks 2');
		exit;
	end
	else begin
		b:=length(arr[0]);
		k:=length(arr[1][0]);
		initMatriks(tmp,b,k);
		m1:=arr[0];
		m2:=arr[1];
		buff:=0;

		for i:=0 to b-1 do begin
			for j:=0 to k-1 do begin
				for c:=0 to length(m2)-1 do begin
					buff:=buff+(m1[i,c]*m2[c,j]);
				end;
				tmp[i,j]:=buff;
				buff:=0;
			end;
		end;
		writeln('Hasil perkalian matriks : ');
		tampil(tmp);
	end;
end;

begin
	clrscr;
	TextColor(Blue);
	TextBackground(White);
	write('Banyak Matriks ? ');readln(n);
	setlength(arr,n);
	for c:=0 to n-1 do begin
		writeln('Isi matriks ',c+1);
		write('Masukkan banyak baris m',c+1,' : ');readln(b);
		write('Masukkan banyak kolom m',c+1,' : ');readln(k);
		initMatriks(arr[c],b,k);
		for i:=0 to b-1 do begin
			for j:=0 to k-1 do begin
				write('Masukkan m',c+1,'[',i,',',j,'] : ');readln(arr[c][i,j]);
			end;
		end;
		writeln;
	end;
	for c:=0 to length(arr)-1 do begin
		tampil(arr[c]);
		writeln('baris : ',length(arr[c]), ', kolom : ',length(arr[c][0]));
		writeln;
	end;
	kalimatrik(arr);
	readln;
end.
