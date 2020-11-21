program latlink;
uses crt;

type mhs = record npm:string;nama:string end;

var arr:array of mhs;
n,i:integer;
p:^string;

begin
clrscr;
        new(p);
        write('Jumlah data : ');readln(n);
        setlength(arr,n);
        
        for i:=0 to length(arr)-1 do begin
                write(i+1,'. NPM : ');readln(arr[i].npm);
                write(i+1,'. Nama : ');readln(arr[i].nama);
        end;
        writeln();

        for i:=0 to length(arr)-1 do begin
                p:=@arr[i].nama;
                writeln(i+1,'. NPM : ',arr[i].npm,', Nama : ',arr[i].nama);
                writeln('Alamat p : ',seg(p),':',ofs(p),', isi p : ',p^);
        end;
        writeln();

        {p:=@arr[0];

        writeln('Alamat p : ',seg(p),':',ofs(p));}
end.
