program binary;
uses crt;

type tree=^node;
node=record data:integer;left,right:tree end;

var c,x:integer;
tmp,trail,r,t:tree;

procedure insert(x:integer;var t:tree);
begin
        new(tmp);
        tmp^.data:=x;
        tmp^.left:=nil;
        tmp^.right:=nil;

        r:=t;
        trail:=nil;
        while (r<>nil) do begin
                trail:=r;
                if r^.data > x then r:=r^.left
                else r:=r^.right;
        end;
        if trail=nil then t:=tmp
        else if trail^.data > x then trail^.left:=tmp
        else trail^.right:=tmp;
end;

procedure preorder(t:tree);
begin
        if t<>nil then begin
                write(t^.data:5);
                preorder(t^.left);
                preorder(t^.right);
        end;
end;

procedure inorder(t:tree);
begin
        if t<>nil then begin
                inorder(t^.left);
                write(t^.data:5);
                inorder(t^.right);
        end;
end;

procedure postorder(t:tree);
begin
        if t<>nil then begin
                postorder(t^.left);
                postorder(t^.right);
                write(t^.data:5);
        end;
end;

begin
	clrscr;
	t:=nil;
	writeln('Enter data: ');readln(x);
	while (x<>0) do begin
		if t=nil then begin
			new(t);
			t^.data:=x;
			t^.left:=nil;
			t^.right:=nil;
		end
		else if x>=t^.data then begin
			insert(x,t^.right);read(x);
		end;
	
	end;

	repeat
		writeln;
		writeln('1. Preorder');
		writeln('2. Inorder');
		writeln('3. Postorder');
		writeln('4. Exit');
		writeln('Enter your choice : ');read(c);
		
		case c of 
			1:preorder(t);
			2:inorder(t);
			3:postorder(t);
			4:exit;
		end;
	until (c=4);
end.
