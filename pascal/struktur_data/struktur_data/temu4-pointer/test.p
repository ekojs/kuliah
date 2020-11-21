program test;
uses crt;

var p,q:^string;
namap,namaq:string;

begin
clrscr;
	{write('Nama P : ');readln(namap);
	write('Nama Q : ');readln(namaq);

	new(p);
	new(q);
	p:= @namap;
	q:= @namaq;
	writeln('Nama P : ',namap,' alamat memori ',seg(p),':',ofs(p));
	writeln('Nama Q : ',namaq,' alamat memori ',seg(q),':',ofs(q));
	writeln();}

	new(p);
	new(q);
	p^:= 'eko';
	q^:= 'ifa';
	p^:=q^;
	writeln('p:=q');
	writeln('Nama P : ',p^,' alamat memori ',seg(p),':',ofs(p));
	writeln('Nama Q : ',q^,' alamat memori ',seg(q),':',ofs(q));
	{q:=p;
	writeln('q:=p');
	writeln('Nama P : ',p^,' alamat memori ',seg(p),':',ofs(p));
	writeln('Nama Q : ',q^,' alamat memori ',seg(q),':',ofs(q));}
	
end.
