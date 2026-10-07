program Soal4;
uses crt;
var
  pilihan: integer;
  a, b, hasil: real;
  ulang: char;

begin
    clrscr;
  repeat

// Menampilkan menu kalkulator
    writeln('KAKULATOR SEDERHANA');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian');
    writeln('5. DIV');
    writeln('6. MOD');

    write('Pilih operasi: ');
    readln(pilihan);

// Meminta dua angka
    write('Angka pertama: ');
    readln(a);

    write('Angka kedua: ');
    readln(b);

// Memilih operasi 
    case pilihan of

      1:
        begin
          hasil := a + b;
          writeln('Hasil = ', hasil:0:2);
        end;

      2:
        begin
          hasil := a - b;
          writeln('Hasil = ', hasil:0:2);
        end;

      3:
        begin
          hasil := a * b;
          writeln('Hasil = ', hasil:0:2);
        end;

      4:
        begin
// Mengecek agar tidak membagi dengan nol
          if b <> 0 then
          begin
            hasil := a / b;
            writeln('Hasil = ', hasil:0:2);
          end
          else
            writeln('Error: Tidak boleh membagi dengan nol.');
        end;

      5:
        begin
          writeln('Hasil DIV = ', trunc(a) div trunc(b));
        end;

      6:
        begin
          writeln('Hasil MOD = ', trunc(a) mod trunc(b));
        end;

    else
      writeln('Operasi tidak tersedia. Silakan pilih antara 1 hingga 6.');
    end;

// Menanyakan apakah ingin melakukan perhitungan lagi
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);

    writeln;

// Program terus berjalan selama pengguna menjawab Y/y
  until (ulang = 'T') or (ulang = 't');

  writeln('Program selesai.');

  readln;
end.