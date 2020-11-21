program quiz;
uses crt;

type barang = record nama:string;qty:integer;harga:real end;

var arr:array of barang;
n,i:integer;
nama,status:string;
h,total:real;

function harga(q:integer; var h:real):real;
begin
	harga:= (q*h);
end;

begin
clrscr;
	write('Nama Pelanggan : ');readln(nama);
	write('Status: ');readln(status);
	write('Jml Pembelian : ');readln(n);

	setlength(arr,n);

	for i:=0 to length(arr)-1 do begin
		write('Nama barang : ');readln(arr[i].nama);
		write('Qty barang : ');readln(arr[i].qty);
		write('Harga Satuan : ');readln(arr[i].harga);
	end;

	h:=0;	
	total:=0;
	writeln('No   Nama Barang   Qty    Harga Satuan    Harga');
	for i:=0 to length(arr)-1 do begin
		h:=harga(arr[i].qty,arr[i].harga);
		total:=total+h;
		writeln(i+1,'    ',arr[i].nama,'    ',arr[i].qty,'    ',arr[i].harga:6:2,'      ',h:6:2,'      ');
		
	end;
	writeln('Total : ',total:6:2);
	if (status = 'M') then
		writeln('Discount : ',(total*0.1):6:2)
	else
		writeln('Discount : -');


	if (status = 'M') then
		writeln('Grand total: ',(total - (total*0.1)):6:2)
	else
		writeln('Grand total: ',total:6:2);

	writeln('Pelanggan ',nama,' Terima kasih...');
	writeln('Status : ',status);
end.
