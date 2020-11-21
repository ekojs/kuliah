program sorting;
uses crt;

type data = array of integer;
var
arr:data;
n,i:integer;

procedure tampil(arr:data);
var i:integer;
begin
	writeln();
	for i:=0 to length(arr)-1 do begin
		write(arr[i],' ');
	end;
	writeln();
end;

procedure tukar(var a,b:integer);
var c:integer;
begin
	c:=a;
	a:=b;
	b:=c;
end;

procedure bubbleasc(var arr:data);
var i,j:integer;
begin
	for i:=0 to length(arr)-1 do begin
		for j:=length(arr)-1 downto i do begin
			if(arr[j] < arr[j-1]) then tukar(arr[j],arr[j-1]);
		end;
	end;
end;

procedure bubbledesc(var arr:data);
var i,j:integer;
begin
	for i:=0 to length(arr)-1 do begin
		for j:=length(arr)-1 downto i+1 do begin
			if(arr[j] > arr[j-1]) then tukar(arr[j],arr[j-1]);
		end;
	end;

end;

procedure gravitasiasc(var arr:data);
var i,j:integer;
begin
	for i:=0 to length(arr)-1 do begin
		for j:=0 to length(arr)-2 do begin
			if(arr[j] > arr[j+1]) then tukar(arr[j],arr[j+1]);
		end;
	end;
end;

procedure gravitasidesc(var arr:data);
var i,j:integer;
begin
	for i:=0 to length(arr)-1 do begin
		for j:=0 to length(arr)-2 do begin
			if(arr[j] < arr[j+1]) then tukar(arr[j],arr[j+1]);
		end;
	end;
end;

procedure selectionasc(var arr:data);
var i,j,min:integer;
begin
	for i:=0 to length(arr)-1 do begin
		min:=i;
		for j:=i+1 to length(arr)-1 do begin
			if(arr[j] < arr[min]) then min:=j;
		end;
		if(min <> i) then tukar(arr[i],arr[min]);
	end;
end;

procedure selectiondesc(var arr:data);
var i,j,max:integer;
begin
	for i:=0 to length(arr)-1 do begin
		max:=i;
		for j:=i+1 to length(arr)-1 do begin
			if(arr[j] > arr[max]) then max:=j;
		end;
		if(max <> i) then tukar(arr[i],arr[max]);
	end;
end;

procedure insertionasc(var arr:data);
var i,j,x:integer;
begin
	i:=1;
	while(i < length(arr)) do begin
		x:=arr[i];
		j:=i-1;
		while(j >= 0) and (arr[j] > x) do begin
			arr[j+1]:= arr[j];
			j:=j-1;
		end;
		arr[j+1]:=x;
		i:=i+1;
	end;
end;

procedure insertiondesc(var arr:data);
var i,j,x:integer;
begin
	i:=1;
	while(i < length(arr)) do begin
		x:=arr[i];
		j:=i-1;
		while(j >= 0) and (arr[j] < x) do begin
			arr[j+1]:= arr[j];
			j:=j-1;
		end;
		arr[j+1]:= x;
		i:=i+1;
	end;
end;

procedure swapinsertionasc(var arr:data);
var i,j:integer;
begin
	i:=1;
	while(i < length(arr)) do begin
		j:=i;
		while(j > 0) and (arr[j-1] > arr[j]) do begin
			tukar(arr[j],arr[j-1]);
			j:=j-1;
		end;
		i:=i+1;
	end;
end;

procedure swapinsertiondesc(var arr:data);
var i,j:integer;
begin
	i:=1;
	while(i < length(arr)) do begin
		j:=i;
		while(j > 0) and (arr[j-1] < arr[j]) do begin
			tukar(arr[j-1],arr[j]);
			j:=j-1;
		end;
		i:=i+1;
	end;
end;

begin
	clrscr;
	writeln('---------- Bubble Sort ----------');
	write('Masukkan n data : ');readln(n);
	setlength(arr,n);
	for i:=0 to length(arr)-1 do begin
		write('Masukkan data ',i,' : ');readln(arr[i]);
	end;
	tampil(arr);
	bubbleasc(arr);
	tampil(arr);
	bubbledesc(arr);
	tampil(arr);
	gravitasiasc(arr);
	tampil(arr);
	gravitasidesc(arr);
	tampil(arr);
	selectionasc(arr);
	tampil(arr);
	selectiondesc(arr);
	tampil(arr);
	insertionasc(arr);
	tampil(arr);
	insertiondesc(arr);
	tampil(arr);
	swapinsertionasc(arr);
	tampil(arr);
	swapinsertiondesc(arr);
	tampil(arr);
end.
