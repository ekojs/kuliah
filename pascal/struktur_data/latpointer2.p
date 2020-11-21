program latpointer2;
uses crt;

type pemployee = ^temployee;
        temployee = record name:string[10];position:char;salary:longint; end;

var p:pemployee;
begin
clrscr;
        new(p);
        p^.name:='Saddam';
        p^.position:='S';
        p^.salary:=3000;

        writeln(p^.name,' ', p^.position,' ', p^.salary);
dispose(p);
        writeln(p^.name);
	writeln(seg(p),' ',ofs(p));
readln;
end.
