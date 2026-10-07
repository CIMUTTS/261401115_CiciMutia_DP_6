program Soal5;
uses crt;

var
  M, T: integer;
  i, j: integer;
  nilai, total, rata: real;
  JLS, JTLS: integer;

begin
clrscr;
// Jumlah mahasiswa
  write('Masukkan jumlah mahasiswa: ');
  readln(M);

// Jumlah tugas
  write('Masukkan jumlah tugas: ');
  readln(T);

// Nilai awal jumlah mahasiswa yang lulus dan tidak lulus
  JLS := 0;
  JTLS := 0;

  writeln;

// Perulangan untuk setiap mahasiswa
  for i := 1 to M do
  begin
    total := 0;

    writeln('Mahasiswa ke-', i);

// Nilai setiap tugas
    for j := 1 to T do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);

// Menjumlahkan semua nilai tugas
      total := total + nilai;
    end;

// Menghitung rata-rata
    rata := total / T;

    writeln('Rata-rata = ', rata:0:2);

// Menentukan kelulusan
    if rata > 65 then
    begin
      writeln('Status: LULUS');
      JLS := JLS + 1;
    end
    else
    begin
      writeln('Status: TIDAK LULUS');
      JTLS := JTLS + 1;
    end;

    writeln;
  end;

  // Menampilkan rekapitulasi
  writeln('REKAPITULASI NILAI MAHASISWA');
  writeln('Jumlah mahasiswa LULUS       : ', JLS);
  writeln('Jumlah mahasiswa TIDAK LULUS: ', JTLS);

  readln;
end.