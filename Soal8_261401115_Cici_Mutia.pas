program Soal8;
uses crt;
var
  gol: char;
  jK: real;
  GP, lembur, bonus, TG: real;

begin
clrscr;
// Golongan karyawan
  write('Masukkan golongan (A/B/C): ');
  readln(gol);

// Jumlah jam kerja
  write('Masukkan jumlah jam kerja per minggu: ');
  readln(jK);

// Gaji pokok berdasarkan golongan
  case gol of
    'A', 'a':
      GP := 1500000;

    'B', 'b':
      GP := 2000000;

    'C', 'c':
      GP := 2500000;

  else
    GP := 0;
  end;

// Nilai awal 
  lembur := 0;
  bonus := 0;

// Jika JK lebih dari 40 jam,
// kelebihannya dihitung sebagai lembur
  if jK > 40 then
    lembur := (jK - 40) * 20000;

// Khusus golongan C, jika JK > 50 jam,
// Bonus Rp100.000
  if ((gol = 'C') or (gol = 'c')) and (jK > 50) then
    bonus := 100000;

// Total gaji
  TG := GP + lembur + bonus;

  // Menampilkan rincian gaji
  writeln;
  writeln('RINCIAN GAJI KARYAWAN');
  writeln('Gaji Pokok : Rp', GP:0:0);
  writeln('Lembur     : Rp', lembur:0:0);
  writeln('Bonus      : Rp', bonus:0:0);
  writeln('Total Gaji : Rp', TG:0:0);

  readln;
end.