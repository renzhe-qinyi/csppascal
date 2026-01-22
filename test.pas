PROGRAM teststrings;
USES csp;
VAR
  s : STRING;
BEGIN
  s := 'hello';
  IF prefix('hello', 10) = 'hello' THEN Writeln('pass bad prefix')
  ELSE Writeln('fail');
  IF substring('hello', 3, 10) = 'llo' THEN Writeln('pass bad statement')
  ELSE Writeln('fail');
  IF substring('hello', 7, 3) = '' THEN Writeln('pass bad statement')
  ELSE Writeln('fail');
END.