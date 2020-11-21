program matrikskali;
uses crt;

type data = array[1..10,1..10] of integer;
var arrA,arrB:data;

function kalimatrik(m1,m2:data);
var b,k:integer;
begin
	l:=0;
	h:=length(arr)-1;
	notfound:=1;

	while(notfound = 1) and (l <= h) do begin
		m:=trunc((l+h)/2);
		if(x = arr[m]) then begin
			binarysearch:= m;
			notfound:= 0;
			end
		else if(x > arr[m]) then
			l:= m+1
		else if(x < arr[m]) then
			h:= m-1;
	end;
end;

procedure tampil(arr:data);
var i,j:integer;
begin
	writeln();
	for i:=0 to length(arr)-1 do begin
		for j:=0 to 

		write(arr[i],' ');
	end;
	writeln();
end;

var i,j,b,k:integer;
begin
	clrscr;
	writeln('Penentuan Ordo matriks A : ');
	write('Masukkan banyak baris A : ');readln(b);
	write('Masukkan banyak kolom A : ');readln(k);
	for i:=0 to b-1 do begin
		for j:=0 to k-1 do begin
			write('Masukkan m1[',i,',',j,'] : ');readln(arrA[i,j]);
		end;
	end;

	tampil(arr);
	write('Masukkan angka yg dicari : ');readln(n);
	writeln('angka ada di index : ', sequentialsearch(arr,n));
	writeln('angka ada di index : ', binarysearch(arr,n));
	writeln();
end.
