program pengurutan;
uses crt;

type data = array of integer;
var arr:data;

procedure tukar(var a,b:integer);
var c:integer;
begin
	c:=a;
	a:=b;
	b:=c;
end;

procedure tampil(arr:data);
var i:integer;
begin
	for i:=0 to length(arr)-1 do begin
		write(arr[i],' ');
	end;
	writeln();
end;

procedure bubblesort(var arr:data);
var i,j:integer;
begin
	for i:=0 to length(arr)-1 do begin
		for j:= length(arr)-1 downto i do begin
			if(arr[j] < arr[j-1]) then tukar(arr[j],arr[j-1]);
			write('Step ',i,' : ');
			tampil(arr);
		end;
	end;
end;

procedure gravitasi(var arr:data);
var i,j:integer;
begin
	for i:=0 to length(arr)-1 do begin
		for j:=0 to length(arr)-2 do begin
			if(arr[j] > arr[j+1]) then tukar(arr[j],arr[j+1]);
			write('Step ',i,' : ');
			tampil(arr);
		end;
	end;
end;

procedure selection(var arr:data);
var i,j,min:integer;
begin
	for i:=0 to length(arr)-1 do begin
		min:= i;
		for j:= i+1 to length(arr)-1 do begin
			if(arr[j] < arr[min]) then min:=j;
		end;
		if(min <> i) then tukar(arr[i],arr[min]);
		write('Step ',i,' : ');
		tampil(arr);
	end;
end;

procedure insertion(var arr:data);
var i,j,x:integer;
begin
	i:=1;
	while (i < length(arr)) do begin
		x:= arr[i];
		j:= i-1;
		while (j >= 0) and (arr[j] > x) do begin
			arr[j+1]:= arr[j];
			j:= j-1;
		end;
			write('Step ',i,' : ');
			tampil(arr);
		arr[j+1]:= x;
		i:= i+1;
	end;
end;

procedure swapinsertion(var arr:data);
var i,j:integer;
begin
	i:=1;
	while (i < length(arr)) do begin
		j:= i;
		while (j > 0) and (arr[j-1] > arr[j]) do begin
			tukar(arr[j-1],arr[j]);
			write('Step ',i,' : ');
			tampil(arr);
			j:= j-1;
		end;
		i:= i+1;
	end;
end;

function sequentialsearch(arr:data;x:integer):integer;
var i:integer;
begin
	for i:=0 to length(arr)-1 do begin
		if (x = arr[i]) then sequentialsearch:= i;
	end;
end;

function sequential(arr:data;x:integer):integer;
var i:integer;
begin
	i:=0;
	while(i<length(arr)) and (x <> arr[i]) do begin
		i:= i+1;
	end;
	sequential:= i;
end;

function binarysearch(arr:data;x:integer):integer;
var l,h,m,notfound:integer;
begin
	l:= 0;
	h:= length(arr)-1;
	notfound:= 1;
	
	while(notfound = 1) and (l <= h) do begin
		m:= trunc((l+h)/2);
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

var i,n:integer;
begin
	clrscr;
	{ writeln('-------------- Bubble Sort ------------');
	write('masukkan n data : '); readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan data ',i,' : ');readln(arr[i]);
	end;
	writeln();
	tampil(arr);
	bubblesort(arr);
	tampil(arr);
	writeln('-------------- Bubble Sort ------------');
	writeln();
	writeln();
	writeln();
	writeln('-------------- Gravitation Sort ------------');
	write('masukkan n data : '); readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan data ',i,' : ');readln(arr[i]);
	end;
	writeln();
	tampil(arr);
	gravitasi(arr);
	tampil(arr);
	writeln('-------------- Gravitation Sort ------------');
	writeln();
	writeln();
	writeln();
	writeln('-------------- Selection Sort ------------');
	write('masukkan n data : '); readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan data ',i,' : ');readln(arr[i]);
	end;
	writeln();
	tampil(arr);
	selection(arr);
	tampil(arr);
	writeln('-------------- Selection Sort ------------');
	writeln();
	writeln();
	writeln();
	writeln('-------------- Insertion Sort ------------');
	write('masukkan n data : '); readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan data ',i,' : ');readln(arr[i]);
	end;
	writeln();
	tampil(arr);
	insertion(arr);
	tampil(arr);
	writeln('-------------- Insertion Sort ------------');
	writeln();
	writeln();
	writeln();
	writeln('-------------- Swap Insertion Sort ------------');
	write('masukkan n data : '); readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan data ',i,' : ');readln(arr[i]);
	end;
	writeln();
	tampil(arr);
	swapinsertion(arr);
	tampil(arr);
	writeln('-------------- Swap Insertion Sort ------------');
	writeln();
	writeln();
	writeln();
	writeln('-------------- Sequential Search ------------');
	write('masukkan n data : '); readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan data ',i,' : ');readln(arr[i]);
	end;
	tampil(arr);
	write('Masukkan angka yang dicari ? ');readln(n);
	writeln(); 
	writeln('Angka ada di index : ',sequentialsearch(arr,n));
	writeln('Hasil sequential : ',sequential(arr,n));
	writeln('-------------- Sequential Search  ------------');
	writeln();
	writeln();
	writeln(); }
	writeln('-------------- Binary Search ------------');
	write('masukkan n data : '); readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan data ',i,' : ');readln(arr[i]);
	end;
	tampil(arr);
	write('Masukkan angka yang dicari ? ');readln(n);
	writeln(); 
	writeln('Angka ada di index : ',binarysearch(arr,n));
	writeln('-------------- Binary Search  ------------');
	
	
	
	
	
	
end.