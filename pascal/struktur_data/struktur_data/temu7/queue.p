program queue;
uses crt;

type antrian = ^node;
node = record isi:string;next:antrian end;

var front,rear:antrian;

procedure create();
begin
	new(front);new(rear);
	front:=nil;rear:=nil;
end;

function isempty(front,rear:antrian):boolean;
begin
    isempty:= (front=nil) and (rear=nil);
end;

procedure insert(x:string);
var tunjuk:antrian;
begin
	new(tunjuk);
	tunjuk^.isi:=x;
	tunjuk^.next:=nil;

	if isempty(front,rear) then begin
		front:=tunjuk;
		rear:=tunjuk;
	end
	else begin
		rear^.next:=tunjuk;
		rear:=tunjuk;
	end;
end;

procedure remove();
var bantu:antrian;
begin
    if isempty(front,rear) then writeln('Antrian Kosong')
	else if front=rear then begin
		front:=nil;rear:=nil;
	end
	else begin
		bantu:=front^.next;
		front:=bantu;
	end;
end;

procedure cetak(que:antrian);
var y:string;
begin
	y:='';	
	while que<>nil do begin
		y:=y+que^.isi+' ';
		que:=que^.next;
	end;
	writeln('Antrian : ',y);
end;

begin
	clrscr;
	create();

	insert('a');
	insert('b');
	insert('c');
	insert('d');
	remove();
	remove();
	cetak(front);
end.