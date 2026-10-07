program Soal3;
uses crt;

var
 n, kategori, i : integer;

//Memasukkan Nilai n
begin
    clrscr;
    write ('Masukkan nilai n : ');
    readln(n);

//Membuat Pilihan Kategori
writeln ('Kategori Deret : ');
writeln ('1. Ganjil');
writeln ('2. Genap');
write ('Pilihan anda : ');
readln (Kategori);

//Nilai Awal
i := 1;
writeln;
writeln('Hasil deret : ');

//Perulangan hingga n
while i <= n do

//Jika Kategori Ganjil Tetapi i Genap Maka Akan Dilewati
begin
    if (kategori = 1) and (i mod 2 = 0) then
    begin
     i := i + 1;
     continue;
    end;

//Jika Kategori Genap Tetapi i Ganjil Maka Akan Dilewati
    if (kategori = 2) and (i mod 2 <> 0) then
    begin
     i := i + 1;
     continue;
    end;

//Jika Hasil kelipatan 5 Maka Akan Dilewati
    if i mod 5 = 0 then
    begin
        i := i + 1;
        continue;
    end;

//Menampilkan Angka yang lolos semua syarat 
    write (i, ' ');

//Pindah ke Angka Berikutnya
    i := i + 1;
end;

readln;

end.