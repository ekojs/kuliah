program lima;
uses crt;

type barang = record kode:string;nama:string;quantity:integer;harga:real end;
var arr:array of barang;
i,n:integer;
total:real;
begin
	clrscr;
        write('masukkan jml barang : ');readln(n);
        setlength(arr,n);
        for i:=0 to length(arr)-1 do begin
                write('kode : ');readln(arr[i].kode);
                write('nama : ');readln(arr[i].nama);
                write('jml : ');readln(arr[i].quantity);
                write('harga : ');readln(arr[i].harga);
        end;
	
	total:=0;
        
        writeln('No  Kode Barang   Nama Barang   quantity   Harga Satuan   Total');
        for i:=0 to length(arr)-1 do begin
		writeln(i+1,arr[i].kode:10,arr[i].nama:13,arr[i].quantity:13,arr[i].harga:12:2,arr[i].quantity*arr[i].harga:15:2);
		total:=  total + arr[i].quantity*arr[i].harga;
        end;
	writeln('Total Keseluruhan ':50,total:4:2);
end.
