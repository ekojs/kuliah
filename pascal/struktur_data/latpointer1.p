program latpointer;
uses crt;

var p: ^integer;
m,n:integer;

begin
clrscr;
        new(p);
        m:=10;
        n:=15;
        p:=@m;
        writeln('seg(p) = ',seg(p),' ofs(p) = ',ofs(p));
        p^:=12;
        p:=@n;
        writeln('seg(p) = ',seg(p),' ofs(p) = ',ofs(p));
        p^:=m;
        writeln('m= ',m,' n= ',n);
        writeln('p^= ',p^);
        {writeln('@m= ',@m);
        writeln('p= ',p);}
        writeln('seg(p) = ',seg(p),' ofs(p) = ',ofs(p));
        readln;
end.
