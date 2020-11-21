program linkedlist;
uses crt;

type tipeinfo = record npm:string;nama:string end;
tipeptr = ^tipenode;
tipelist = tipeptr;
tipenode = record info:tipeinfo;next:tipeptr end;

var list:tipelist;
mhs:tipeinfo;

procedure buatlist(var list:tipelist);
begin
        new(list);
        list:= nil;
end;

procedure sisipnodebaru(var list:tipelist;sisipbaru:tipeinfo);
var nodebaru,ptr:tipeptr;
ketemu:boolean;

begin
        new(nodebaru);

        nodebaru^.info:=sisipbaru;
        nodebaru^.next:=nil;

        if list=nil then list:=nodebaru
        else if sisipbaru.npm <= list^.info.npm then begin
                nodebaru^.next:=list;
                list:=nodebaru;
        end
        else begin
                ketemu:=false;
                ptr:=list;
                while (ptr^.next <> nil) and not ketemu do begin
                        if ptr^.next^.info.npm >= nodebaru^.info.npm then ketemu:=true
                        else ptr:=ptr^.next
                end;
                nodebaru^.next:=ptr^.next;
                ptr^.next:=nodebaru;
        end
end;

begin
clrscr;
        buatlist(list);
        mhs.npm := '201743579015';
        mhs.nama := 'Eko Junaidi Salam';

        writeln(mhs.npm,' ',mhs.nama);
        sisipnodebaru(list,mhs);
        writeln(list^.info.nama);
        list^.next:=@mhs;
        writeln(list^.next^.info.npm);
        writeln(list^.next^.info.nama);
end.
