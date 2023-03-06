program tulisFileUK;

uses crt;

const
   file_name: string = 'TeksUjikom2.txt';

var
   file_text: TEXT;

begin

   clrscr;

   assign(file_text, file_name);

   rewrite(file_text);

   writeln(file_text, 'Saya sedang mengikuti Uji Kompetensi Rekayasa Perangkat Lunak');

   close(file_text);

   writeln('Berhasil menulis data ke dalam file ', file_name);

   readln;

end.