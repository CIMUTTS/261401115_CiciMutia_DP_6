program Soal10;
uses crt;

var
  hari: integer;

begin
clrscr;
//Nomor hari
  write('Masukkan nomor hari (1-7): ');
  readln(hari);

// Nama hari menggunakan case
  case hari of

    1:
      writeln('Hari Senin');

    2:
      writeln('Hari Selasa');

    3:
      writeln('Hari Rabu');

    4:
      writeln('Hari Kamis');

    5:
      writeln('Hari Jumat');

    6:
      writeln('Hari Sabtu');

    7:
      writeln('Hari Minggu');

  else
    writeln('Tidak valid. Masukkan nomor hari antara 1 sampai 7.');
  end;

  readln;
end.