program Soal7;
uses crt;

var
  kode: char;
  jam: integer;
  tarif: longint;

begin
  clrscr;
// Kode kendaraan
  write('Masukkan kode kendaraan (M/K/B): ');
  readln(kode);

//Durasi parkir
  write('Masukkan lama parkir (jam): ');
  readln(jam);

  tarif := 0;

// Tarif berdasarkan kode kendaraan
  case kode of

// Mobil
    'M', 'm':
      begin
        if jam <= 1 then
          tarif := 5000
        else if jam <= 10 then
          tarif := 5000 + ((jam - 1) * 3000)
        else
          tarif := 30000;
      end;

// Motor
    'K', 'k':
      begin
        if jam <= 1 then
          tarif := 2000
        else if jam <= 10 then
          tarif := 2000 + ((jam - 1) * 1000)
        else
          tarif := 10000;
      end;

// Bus
    'B', 'b':
      begin
        if jam <= 1 then
          tarif := 10000
        else if jam <= 10 then
          tarif := 10000 + ((jam - 1) * 5000)
        else
          tarif := 50000;
      end;

  else
    writeln('Kode kendaraan tidak valid.');
  end;

// Tarif jika kode valid
  if (kode = 'M') or (kode = 'm') or
     (kode = 'K') or (kode = 'k') or
     (kode = 'B') or (kode = 'b') then
    writeln('Total tarif parkir = Rp', tarif);

  readln;
end.