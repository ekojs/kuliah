program binary_tree;
uses crt;

type tree=^node;
node=record data:string;left,right:tree end;

var s:string;
simpul,left,right:tree;

function isempty(a,b:tree):boolean;
begin
        isempty:=(a=nil) and (b=nil);
end;

procedure maketree(x:string;var t:tree);
begin
        t^.data:=x;
        t^.left:=nil;
        t^.right:=nil;
end;

procedure addleft(x:string);
var l:tree;
begin
        new(l);
        l^.data:=x; 
        l^.left:=nil; 
        l^.right:=nil;
        
        if isempty(simpul^.left,left) then begin
                simpul^.left:=l;
                left:=l;
        end
        else begin
                left^.left:=l;
                left:=l;
        end;
end;

procedure addright(x:string);
var r:tree;
begin
        new(r);
        r^.data:=x;
        r^.left:=nil;
        r^.right:=nil;
        
        if isempty(simpul^.right,right) then begin
                simpul^.right:=r;
                right:=r;
        end
        else begin
                right^.right:=r;
                right:=r;
        end;
end;

procedure cetak(t:tree);
var tmp,l,r:tree;
begin
        tmp:=t;
        l:=tmp^.left;
        r:=tmp^.right;
        write(tmp^.data,' : ');
        while(l<>nil) and (r<>nil) do begin
                writeln(l^.data,' ',r^.data);
                l:=l^.left;
                r:=r^.right;
        end;
end;

begin
        clrscr;
        new(simpul);
        maketree('a',simpul);
        addleft('b');
        addright('c');
        addleft('d');
        addright('e');
        cetak(simpul);
end.
