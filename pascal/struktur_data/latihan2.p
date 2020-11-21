program latihan2;
uses crt;

type tanggal = record
	bulan, hari, tahun : integer;
end;

var waktu : tanggal;

begin
	with waktu do begin
		waktu.hari:=25;
		bulan:=09;
		tahun:=1983;
		writeln('Hari ini adalah ', hari,':',bulan,':',tahun);
	end;
end.
