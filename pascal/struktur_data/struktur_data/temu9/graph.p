program grafik;
uses cthreads,Classes,crt,graph;

var tunggu:word;
ufo:pointer;
x,y:integer;
x1,y1,x2,y2:word;
ukuran,l:word;
DriverGrafik, ModeGrafik:integer;

begin
        clrscr;
        DriverGrafik:=Detect;
        ModeGrafik:=detectMode;
        
        InitGraph(DriverGrafik, Modegrafik,'');

        OutTextXY(30,700,'Tekan Sembarang Untuk Selesaai');

        SetColor(1);
        Ellipse(160,100,0,360,20,5);
        Line(140,100,180,100);
        SetFillStyle(SolidFill,4);
        FloodFill(160,101,1);
        Line(160,95,160,90);
        Circle(160,90,2);
        
        x1:=140;y1:=89;x2:=180;y2:=105;
        ukuran:=ImageSize(x1,y1,x2,y2);
        GetMem(ufo,ukuran);
        GetImage(x1,y1,x2,y2,ufo^);
        PutImage(x1,y1,ufo^, XORput);

        for l:=1 to 1000 do PutPixel(random(1200),random(1200),3);

        x:=1200;
        y:=1200;

        tunggu:=250;

        repeat
                PutImage(x,y, ufo^, XORput);
                Delay(tunggu);
                PutImage(x,y, ufo^, XORput);
                x:=random(3000);
                y:=random(1800);
        until KeyPressed;
        closegraph;
end.
