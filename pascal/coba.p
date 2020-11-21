program coba;
uses crt;

var a,b,c:integer;
arr:array [0..1,0..14] of integer;
begin
        a:=2;
        b:=3;
        c:=a+b*2;
        writeln(c);
	
	for a:=0 to 1 do begin
		for b:=0 to 14 do begin
			if(a=0) then
				arr[a,b]:=(b+1)
			else
				arr[a,b]:=(b+1)*(b+1);
		end;
	end;

	for a:=0 to 1 do begin
		for b:=0 to 14 do begin
			write(arr[a,b], ' ');
		end;
		writeln();
	end;

end.
