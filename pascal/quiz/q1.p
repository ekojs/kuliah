Program quiz_1;
Uses crt;

var arr:array[0..1,0..4] of integer;
i,j:integer;

begin
        for i:=0 to 1 do
        begin
                for j:=0 to 4 do
                begin
                        if i=0 then
                                arr[i,j] := (j+1)*2
                        else
                                arr[i,j] := 4-j;
                end;
        end;

        for i:= 0 to 1 do
        begin
                for j:=0 to 4 do
                begin
                        write(arr[i,j],' ');
                end;
                writeln();
        end;
end.
