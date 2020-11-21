program lifo;
uses crt;

type point = ^recpoint;
recpoint = record isi:string;next,pre:point end;

var head,tail,now:point;
el:string;

procedure create;
begin
        new(head);
        new(tail);
        head:=nil;tail:=nil;
end;

procedure find_first;
begin
        now:=head;
        write(now^.isi);
end;

procedure find_next;
begin
        if now^.next <> nil then begin
                now:=now^.next;
                write(now^.isi);
        end
end;

procedure insert(el:string);
var now:point;
begin
        new(now);
        now^.isi:=el;
        if head = nil then now^.next:=nil
        else now^.next:=head;

        head:=now;
end;

procedure update(el:string);
begin
        now^.isi:=el;
end;

procedure hapus;
begin
        now^.isi:='';
end;

begin
        clrscr;
        create();

        insert('tv');
        insert('vcd');
        insert('compo');
        writeln();

        write('data pertama : ');find_first;writeln();
        write('data berikutnya : ');find_next;writeln();
        write('update data now : ');readln(el);
        update(el);
        write('data pertama : ');find_first;writeln();
        write('data berikutnya : ');find_next;writeln();
        write('data berikutnya : ');find_next;writeln();
end.
