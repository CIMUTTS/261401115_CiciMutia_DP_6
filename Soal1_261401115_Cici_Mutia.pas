Program Soal1;
uses crt;

var
 n, i : integer;
 harga , total, diskon, totalbayar : real;

// jumlah barang yang dibeli
begin
    clrscr;
    write('Masukkan jumlah barang: ');
    readln(n);

//Nilai awal total
total := 0;

//Perulangan untuk harga barang
 for i := 1 to n do
 begin
    write ('Masukkan harga barang ke-' , i, ': Rp');
    readln(harga);

//Penjumlahan harga barang
total := total + harga;
 end;

//Menentukan total diskon
if total < 100000 then
    diskon := 0
else if total <= 500000 then
    diskon := total * 0.10
else 
    diskon := total * 0.20;

//Menghitung total bayar
totalbayar := total - diskon;

//Menampilkan rincian belanja
writeln('Total sebelum diskon : Rp', total:0:0);
writeln('Besar diskon : Rp', diskon:0:0);
writeln('Total bayar : Rp', totalbayar:0:0);

    readln;

end.