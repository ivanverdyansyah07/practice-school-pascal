program cetakDataUK;

uses crt, sysutils;

const
   file_name: string = 'TeksUjikom2.txt';

var
   file_text: TEXT;
   file_data: string;

begin

   clrscr;

   if fileExists(file_name) then
      begin

         writeln('File ditemukan!');

         writeln('Isi file ', file_name);

         writeln();

         assign(file_text, file_name);

         reset(file_text);

         while not eof(file_text) do
            begin

               readln(file_text, file_data);

               writeln(file_data);

            end;

         close(file_text);

      end
   else
      writeln('File ', file_name, ' tidak ditemukan!');

   readln;

end.