program Soal2;
uses crt;

var
 Katasandi, KataSandiASLI : string;
 Percobaan : integer;

begin
 clrscr;
 KataSandiASLI := 'HIDUP ILKOMP';
//Nilai awal
 Percobaan := 0;

 writeln('Login');

repeat
    Percobaan := Percobaan + 1;
    writeln('Masukkan Kata Sandi : ');
    readln(Katasandi);
//Mengecek apakah hasilnya true
        if Katasandi = 'HIDUP ILKOM' then
        begin
        writeln('Login Berhasil! Selamat Datang');
//Menghentikan perulangan ketika hasilnya true menggunakan break
        break;
    end
    else
    begin
     writeln('Kata sandi yang anda masukkan SALAH!');
     end;
//Ketika percobaan gagal hingga 3 kali, perulangan berhenti
     if percobaan = 3 then 
    begin
        writeln('Akses Ditolak! Akun Terkunci.');
    end;

    until percobaan = 3;

    readln;

end.