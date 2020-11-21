program pointer5;
uses crt;

var p,q,r,s:^string;
nilai:string;

begin
clrscr;
new(p);new(r);new(s);
nilai:= 'Ini string nilai !!!';
p:=@nilai;

new(q);
q^:= 'Ini isi pointer q!!!';
r:=q;
s^:=q^;

writeln('p = ',seg(p^):4,':',ofs(p^):4,' isi p = ',p^);
writeln('q = ',seg(q^):4,':',ofs(q^):4,' isi q = ',q^);
writeln('r = ',seg(r^):4,':',ofs(r^):4,' isi r = ',r^);
writeln('s = ',seg(s^):4,':',ofs(s^):4,' isi s = ',s^);
readln;

end.
