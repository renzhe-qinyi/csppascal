PROGRAM datatypes;
USES crt;
VAR
  s : SHORTINT;
  b : BYTE;
  c : CHAR;
  i : INTEGER;
BEGIN
  c := 'a';
  Writeln(c, ' = ', ord(c));
  b := $FF;
  Writeln('b = ', b);
  b := b + 1;
  Writeln('b = ', b);
  s := 127;
  Writeln('s = ', s);
  s := s + 1;
  Writeln('s = ', s);
  Readln(c);
END.