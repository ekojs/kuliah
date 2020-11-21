program satu;
uses crt;
type data = array of integer;
var arr:data;
procedure tampil(arr:data);
var i:integer;
begin
	for i:= 0 to length(arr)-1 do begin
		writeln('A[',i+1,'] = ',arr[i]);
	end;
end;

procedure tukar(var a,b:integer);
var c:integer;
begin
	c:=a;
	a:=b;
	b:=c;
end;

procedure urutkan(var arr:data);
var i,j:integer;
begin
	for i:=0 to length(arr)-1 do begin
		for j:=length(arr)-1 downto i+1 do begin
			if(arr[j] < arr[j-1]) then tukar(arr[j],arr[j-1]);
		end;
	end;
end;

var i:integer;
begin
	setlength(arr,5);
	writeln('data sebelum diurutkan');
	for i:=0 to length(arr)-1 do begin
		write('A[',i+1,'] = ');readln(arr[i]);
	end;
	writeln();
	writeln('data setelah diurutkan');
	urutkan(arr);
	tampil(arr);
end.
