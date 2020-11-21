program dua;
uses crt;
type data = array of integer;

var arr:data;
function linearsearch(arr:data;x:integer):integer;
var i:integer;
begin
	i:=0;
	while(i<length(arr)) and (x<>arr[i]) do begin
		i:=i+1;
	end;
	linearsearch:=i;
end;

begin
	setlength(arr,8);
	arr[0]:=2;
	arr[1]:=5;
	arr[2]:=8;
	arr[3]:=12;
	arr[4]:=15;
	arr[5]:=25;
	arr[6]:=37;
	arr[7]:=57;
	writeln('angka di index : ',linearsearch(arr,37));
end.
