program searching;
uses crt;

type data = array of integer;
var arr:data;

function sequentialsearch(arr:data;x:integer):integer;
var i:integer;
begin
	i:=0;
	while(i < length(arr)) and (x <> arr[i]) do begin
		i:=i+1;
	end;
	sequentialsearch:=i;
end;

function binarysearch(arr:data;x:integer):integer;
var l,h,m,notfound:integer;
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
var i:integer;
begin
	writeln();
	for i:=0 to length(arr)-1 do begin
		write(arr[i],' ');
	end;
	writeln();
end;

var n,i:integer;
begin
	clrscr;
	write('Masukkan n data : ');readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan ',i,' : ');readln(arr[i]);
	end;

	tampil(arr);
	write('Masukkan angka yg dicari : ');readln(n);
	writeln('angka ada di index : ', sequentialsearch(arr,n));
	writeln('angka ada di index : ', binarysearch(arr,n));
	writeln();
end.
