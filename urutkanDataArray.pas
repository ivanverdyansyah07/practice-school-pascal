program urutkanDataArray;

uses crt;

const
   N: integer = 10;

var
   T: array[1..10] of integer;
   i, j: integer;

procedure isiData();
begin

   for i := 1 to N do
   begin

      write('Isi data array ke-', i , ': ');

      readln(T[i]);

   end;

end;

procedure cetakData();
begin

   write('[');

   for i := 1 to N do
   begin

      write(T[i]);

      if i <> N then
      begin

         write(', ');

      end;

   end;

   write(']');

end;

function urutData(): boolean;
var
   condition: boolean = true;
   temp: integer;

begin

   for i := 1 to N do
   begin

      for j := 1 to N - 1 do
      begin

         if T[j] > T[j + 1] then
         begin

            temp := T[j];
            T[j] := T[j + 1];
            T[j + 1] := temp;

            condition := false;

         end;

      end;

      urutData := condition;

   end;

end;

begin

   clrscr;

   writeln('Tambahkan data terlebih dahulu!');

   isiData();

   writeln();

   writeln('Berikut data yang telah ditambahkan:');

   cetakData();

   writeln();

   writeln();

   if urutData() then
   begin

      writeln('Data yang ditambahkan sudah urut!');

   end
   else
      writeln('Data yang ditambahkan belum urut!');
      cetakData();

   readln();

end.