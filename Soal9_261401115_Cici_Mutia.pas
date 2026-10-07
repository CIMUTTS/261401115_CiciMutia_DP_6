program Soal9;
uses crt;

var
  bulan, tahun, JH: integer;
  kabisat: boolean;

begin
clrscr;
  // Bulan
  write('Nomor bulan (1-12): ');
  readln(bulan);

  //Tahun
  write('Masukkan tahun: ');
  readln(tahun);

  // Menentukan apakah tahun merupakan tahun kabisat
  kabisat := (tahun mod 400 = 0) or
             ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  // Menentukan jumlah hari berdasarkan bulan
  case bulan of

// 31 hari
    1, 3, 5, 7, 8, 10, 12:
      JH := 31;

// 30 hari
    4, 6, 9, 11:
      JH := 30;

// Bulan Februari
    2:
      begin
        if kabisat then
          JH := 29
        else
          JH := 28;
      end;

  else
    JH := 0;
  end;

// Hasil
  if JH <> 0 then
  begin
    write('Jumlah hari = ', JH);

// Kalau tahun kabisat, tampilkan tulisan Kabisat
    if kabisat then
      writeln(' (Kabisat)')
    else
      writeln(' (Bukan Kabisat)');
  end
  else
    writeln('Tidak valid.');

  readln;
end.