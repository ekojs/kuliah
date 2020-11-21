program point;
uses crt;

{type tipestring = string[15];
penunjukstring = ^tipestring;}
type penunjukstring = ^string;


var nama:penunjukstring;

begin
clrscr;
new(nama);

nama^:= 'turbo pascal';
writeln(nama^);
dispose(nama);
end.
