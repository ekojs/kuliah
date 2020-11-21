program belajar;
uses crt;

type queue=^node;
node=record isi:string;next:queue end;

var tmp,antri,tunjuk:queue;
x,y:^word;

begin
    clrscr;
    antri:=nil;

    new(tunjuk);
    tunjuk^.isi:='a';
    tunjuk^.next:=nil;

    antri:=tunjuk;
    tmp:=tunjuk;
    
    x:=@antri;
    y:=@tmp;
    writeln('Alamat x: ',x^,', Alamat y: ',y^);
    writeln(seg(x^),':',ofs(x^),' ',seg(y^),':',ofs(y^));

    new(tunjuk);
    tunjuk^.isi:='b';
    tunjuk^.next:=nil;

    tmp^.next:=tunjuk;
    tmp:=tunjuk;

    new(tunjuk);
    tunjuk^.isi:='c';
    tunjuk^.next:=nil;

    tmp^.next:=tunjuk;
    tmp:=tunjuk;

    writeln('Hapus ',antri^.isi,' dari queue.');
    tmp:=antri^.next;
    antri:=tmp;

    while antri<>nil do begin
        write(antri^.isi,' ');
        antri:=antri^.next;
    end;
    writeln;
end.