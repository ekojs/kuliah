program stack;
uses crt;

type arrstr = array of string;
typestack = record stack:arrstr;pointer:integer end;

var S:typestack;
i,n:integer;
c:string;

procedure inisialisasi(n:integer);
begin
        setlength(S.stack,n);
        S.pointer:= 0;
        writeln('Stack sudah diinisiasi sejumlan ',n);
end;

function penuhs():boolean;
var c:integer;
begin
        c:= length(S.stack)-1;
        if(S.pointer > c) then penuhs:=true;
        if(S.pointer <= c) then penuhs:=false;
end;

function kosongs():boolean;
var c:integer;
begin
        c:= length(S.stack);
	{writeln('kosongs : ',S.pointer,' ',c);}
	if(S.stack[S.pointer] = '') then kosongs:=true
        else kosongs:=false;

	if(S.pointer >= 0) or (S.stack[S.pointer] = '') then kosongs:=false
	else kosongs:=true;
end;

procedure push(x:string);
begin
        if penuhs() then writeln('Stack penuh...')
	else begin
        	if(S.stack[S.pointer] = '') then S.stack[S.pointer]:= x
        	else begin
                	S.pointer:=S.pointer+1;
                	S.stack[S.pointer]:=x;
        	end;
	end;
        if((S.pointer < length(S.stack))) then S.pointer:= S.pointer+1;
end;

function pop():string;
begin
        if not kosongs() then begin 
        	if(S.pointer > 0) then S.pointer:=S.pointer-1;
		if(S.stack[S.pointer] <> '') then begin
        		pop:=S.stack[S.pointer];
        		S.stack[S.pointer]:= '';
		end
		else pop:='Stack kosong';
	end
	else pop:='Stack kosong';
end;

procedure tampilstack();
begin
        write('Isi stack : ');
        for i:=0 to length(S.stack)-1 do begin
                write(S.stack[i],' ');
        end;
        writeln();
end;

begin
        clrscr;
	TextColor(Blue);
	TextBackground(White);
	writeln('Programmed by Eko Junaidi Salam (2017 4357 9015)');
        {write('Masukkan jumlah stack : ');readln(n);
        inisialisasi(n);
        for i:=0 to n-1 do begin
                write('Masukkan karakter : ');readln(c);
                push(c);
        end;
        writeln(pop());
        push('xx');
        writeln(pop());
        writeln(pop());
        push('yy');}

        inisialisasi(4);
        writeln(pop());
	push('a');
        push('b');
        push('c');
	writeln(pop());
        push('d');
        push('e');
        push('f');
	
        writeln('End Stack');
        tampilstack();
end.
