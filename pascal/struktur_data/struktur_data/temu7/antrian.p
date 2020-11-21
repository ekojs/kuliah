program antrian_loket;
uses crt;

type queue= ^node;
node=record isi:string;next:queue end;

var antrian,tunjuk:array of queue;
tmp:queue;
n,c,i:integer;
pil:char;
nama:string;

function isempty(var front,rear:queue):boolean;
begin
    isempty:=(front=nil) and (rear=nil);
end;

procedure buatantrian(var antrian:array of queue);
begin
    for i:=0 to length(antrian)-1 do antrian[i]:=nil;
end;

procedure insert(x:string;var front,rear:queue);
begin
    new(tmp);
    tmp^.isi:=x;
    tmp^.next:=nil;

    if isempty(front,rear) then begin
        front:=tmp;
        rear:=tmp;
    end
    else begin
        rear^.next:=tmp;
        rear:=tmp;
    end;
end;

procedure remove(var front,rear:queue);
var bantu:queue;
begin
    if isempty(front,rear) then writeln('Antrian kosong')
    else if front=rear then begin
        front:=nil;rear:=nil;
    end
    else begin
        bantu:=front^.next;
        front:=bantu;
    end;
end;

procedure cetak(antri:array of queue);
begin
    for i:=0 to length(antri)-1 do begin
        write('Loket ',i+1,' : ');
        while antri[i]<>nil do begin
            write(antri[i]^.isi,' ');
            antri[i]:=antri[i]^.next;
        end;
        writeln;
    end;
end;


begin
    clrscr;
    write('Ada berapa loket ? ');readln(n);
    if n<1 then begin
        writeln('Banyak loket harus lebih atau sama dengan 1');
        exit;
    end;
    setlength(antrian,n);
    setlength(tunjuk,n);
    buatantrian(antrian);
    buatantrian(tunjuk);

    repeat
        clrscr;
        if n = 1 then begin
            write('Pilih loket ',n,' atau 0 untuk keluar : ');readln(c);
        end
        else begin
            write('Pilih loket 1-',n,' atau 0 untuk keluar : ');readln(c);
        end;

        if c=0 then exit;

        repeat
            clrscr;
            writeln('------------Loket ',c,'----------------');
            writeln('[1] Tambah antrian'); 
            writeln('[2] Next antrian');
            writeln('[3] Cetak antrian');
            writeln('[4] Keluar loket');
            writeln('-----------------------------------');
            writeln('Programmed by Eko Junaidi Salam (2017 4357 9015)');
            writeln;
            write('Pilihan anda : ');readln(pil);

            case pil of
                '1':begin
                    write('Masukkan nama : ');readln(nama);
                    insert(nama,antrian[c-1],tunjuk[c-1]);
                end;
                '2':begin
                    if antrian[c-1] <> nil then begin
                        writeln(antrian[c-1]^.isi,' telah selesai diproses');
                        remove(antrian[c-1],tunjuk[c-1]);
                    end
                    else writeln('Antrian kosong');
                    cetak(antrian);
                    readln;
                end;
                '3':begin
                    cetak(antrian);
                    readln;
                end;
                '4':begin
                    writeln('Anda telah keluar');
                end;
            end;
        until (pil = '4');
    until (c=0);
end.