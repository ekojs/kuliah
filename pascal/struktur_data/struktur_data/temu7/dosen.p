program antrianbaru;    
uses  crt;
type  antrian = ^node;
      node = record
      isi : string[10];
      next : antrian;
end;        

var    dpn, blk : antrian;
       pointer  : string;
       x        : string;
       cr       : string;
       pil      :char;

{procedure baru digunakan untuk inisialisasi awal list}
Procedure baru(x: string; var tunjuk: antrian) ;
begin
 new(tunjuk);
 tunjuk^.isi := x;
 tunjuk^.next := nil;
end;

{function isempty digunakan untu mengecek apakah suatu list kosong atau tidak}
function isempty(depan,belakang:antrian):boolean;
begin
   isempty:= (depan=nil) and (belakang=nil)=true
end;

{procedure tambahantri digunakan untuk menambakan jumlah orang dalam antrian}
procedure tambahantri(var belakang:antrian);                   
var x     :string;
    tunjuk:antrian;
begin
    write('Masukan nama orang yang mau masuk antrian : ');
    readln(x);
    baru(x,tunjuk);
    belakang^.next:=tunjuk;
    belakang:=tunjuk;
end;
{prosedure hapusdpn diguakan untuk menghapus list dalam antrian}
procedure hapusdpn(var depan,belakang:antrian);
var bantu:antrian;           
begin
    if isempty(depan,belakang) then
    writeln('Antrian Kosong')
    else if depan=belakang then
    begin
        depan:=nil;belakang:=nil
    end
    else
    begin
        bantu:=depan^.next;
        depan:=bantu;
    end;
 end; 

 {prosedure slesaiantri digunakan untuk mengambil orang yang telah selesai antri}
 procedure slesaiantri(var depan,belakang:antrian;var x:string);
 begin    
    if dpn=nil then
    x:='Antrian Kosong'
    else
    begin
       x:=dpn^.isi;
       hapusdpn(depan,belakang);
    end;
 end;

{ Procedure BuatAntrian untuk membangun antrian dengan input data secara interaktif}
procedure buatantrian (var depan,belakang: antrian);
Var c : char; tunjuk : antrian;i:integer;
begin
   i:=0;                         
   depan := nil; belakang := nil;
   repeat           
     i:=i+1;
     write('masukan nama ke-',i,'            =');readln(x);
     baru(x,tunjuk);
   if  isempty(depan,belakang) then
   begin
     depan := tunjuk ;
     belakang := tunjuk;
   end
else begin
     belakang^.next := tunjuk;
     belakang :=tunjuk;
   end;  
   repeat
     write('tambah data yang antri [Y/T] = ');
     readln(c);
   until c in ['T','t','y','Y'];
   until c in ['T','t'];
   end;

{Procedure Cetak untuk mencetak isi Antrian,pinstu keluar antrian disebelah kanan dan
pintu masu antrian disebelah kiri}
procedure cetak(depan:antrian;var output:string);
var bantu:antrian;y:string;
                         
begin
   bantu:=depan;
   output:='  Loket Pendaftaran';
   if isempty(dpn,blk) then output:='Antrian Kosong'
   else begin
   while bantu<>nil do
   begin
     y:=bantu^.isi;
     output:=y+'->>'+output; 
     bantu:=bantu^.next;
   end;
   output:='pintu masuk antrian  ->>'+output;
   end;                                      
end;

begin
clrscr;
buatantrian(dpn,blk);
repeat
      repeat
      {menu utama}
      writeln;
      writeln('-----------------------------------');
      writeln('[1] Buat Antrian Baru              '); 
      writeln('[2] Tambah Antrian Pendaftar       ');
      writeln('[3] Ambil Orang yang selesai daftar');
      writeln('[4] Loket Pendaftaran ditutup      ');
writeln('-----------------------------------');
      write('Pilihan anda : ');pil:=readkey;writeln(pil);
      writeln;
      until (pil>='1') and (pil<='4');

      {case pil of mengacu pada menu pilihan yang akan mengaktifkan salah satu procedure  
      yang dipilih}
      case pil of

      '1' :begin
               buatantrian(dpn,blk);
               writeln;
               writeln;
               writeln;
           end;

      '2' :begin
               tambahantri(blk);
               writeln;   
               writeln('setelah ditambah antrian menjadi : ');            
               cetak(dpn,pointer);
               writeln(pointer);
               writeln;
               writeln;
               writeln;
           end;

      '3' :begin
               slesaiantri(dpn,blk,x);          
               writeln('',x,' Telah selesai mendaftar,maka ia keluar dari antrian');
               writeln;
               writeln('Antrian menjadi :');            
               cetak(dpn,pointer);
               writeln(pointer);
               writeln;
               writeln;
               writeln;                                    
      
           end;      
     
      '4' :begin
               writeln('       Loket telah ditutup         ');
               writeln('Antrian dilanjutkan hari berikutnya');
               exit;
           end;

end;
until (pil='8');
end.
end.
