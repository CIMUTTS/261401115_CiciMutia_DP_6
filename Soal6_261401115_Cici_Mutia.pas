program Soal6;
uses crt;

var
  tugas, uts, uas, kehadiran: real;
  NA: real;
  indeks: char;

begin
clrscr;
// Nilai tugas
  write('Masukkan Nilai Tugas: ');
  readln(tugas);

// Nilai UTS
  write('Masukkan Nilai UTS: ');
  readln(uts);

// Nilai UAS
  write('Masukkan Nilai UAS: ');
  readln(uas);

// Persentase kehadiran
  write('Masukkan Kehadiran (%): ');
  readln(kehadiran);

// Menghitung nilai akhir
// Tugas = 30%, UTS = 30%, UAS = 40%
  NA := (tugas * 0.30) +
        (uts * 0.30) +
        (uas * 0.40);

  writeln;
  writeln('Nilai Akhir = ', NA:0:2);

// Status kelulusan
  if (NA >= 60) and (kehadiran >= 80) then
    writeln('Status: LULUS')
  else
    writeln('Status: TIDAK LULUS');

// Indeks huruf
  if NA > 85 then
    indeks := 'A'
  else if NA >= 75 then
    indeks := 'B'
  else if NA >= 60 then
    indeks := 'C'
  else if NA >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln('Indeks  = ', indeks);
  readln;
end.