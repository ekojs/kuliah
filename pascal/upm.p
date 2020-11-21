program pola;
uses crt;

type nama = array of string;

var i,j:integer;
arr:nama;
x:string;

procedure tampil(arr:nama);
var i:integer;
begin
for i:=0 to length(arr)-1 do begin
  writeln(arr[i]);
end;
writeln();
end;

procedure tukar(var a,b:string);
var c:string;
begin
  c:=a;
  a:=b;
  b:=c;
end;

procedure urutkan(var arr:nama);
var i,j:integer;
begin
  for i:=0 to length(arr)-1 do begin
    for j:=length(arr)-1 downto i do begin
      if(arr[j] < arr[j-1]) then tukar(arr[j],arr[j-1]);
    end;
  end;
end;

begin
clrscr;
setlength(arr,5);
arr[0]:='Joko';
arr[1]:='Budi';
arr[2]:='Andi';
arr[3]:='Dadang';
arr[4]:='Sinta';

{urutkan(arr);
tampil(arr);}

write('cari nama : ');readln(x);
i:=0;

while(i<length(arr)) and (x <> arr[i]) do begin
  i:=i+1;
end;

writeln('Nama di index : ',i);

for j:=0 to length(arr)-1 do begin
  if(x = arr[j]) then
    writeln('Nama di index : ',j);
end;

end.