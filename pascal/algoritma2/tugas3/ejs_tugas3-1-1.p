program bubblesort1;
uses crt;

const c=5;
type data = array of integer;

var
i,n:integer;
t:string;
b:boolean;
acak:data;

procedure tukar(var a,b:integer);
var c:integer;
begin
	c:= a;
	a:= b;
	b:= c;
end;

procedure tampil(var a:data;b:boolean);
var i:integer;
begin
	if(b = true) then begin
		for i:= 0 to length(a)-1 do begin
			write(a[i],' ');
		end;
		writeln();
	end;
end;

procedure bubblesort(var a:data;b:boolean);
var i,j:integer;
begin
	for i:= 0 to length(a)-1 do begin
		if(b = true) then begin
			writeln('Proses ke ',i+1);
			tampil(a,b);
		end;
		for j:= length(a)-1 downto i do begin
			if(a[j] < a[j-1]) then tukar(a[j],a[j-1]);
			tampil(a,b);
		end;
		if(b = true) then begin
			writeln();
		end;
	end;
end;

begin
	write('Masukkan jumlah angka ? ');readln(n);
	if(n=0) then
		setlength(acak,c)
	else setlength(acak,n);
	
	for i:= 0 to length(acak)-1 do begin
		write('isi array data acak ',i+1,' : ');readln(acak[i]);
	end;
	write('Tampilkan proses (y/n) ? ');readln(t);
	if(t = 'y') then
		b:= true
	else b:= false;
	
	writeln('Data sebelum di urut:');
	tampil(acak,true);
	bubblesort(acak,b);
	writeln('Data setelah di urut:');
	tampil(acak,true);
end.
