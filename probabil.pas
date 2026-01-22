PROGRAM probability;
VAR
  i : INTEGER;
  p : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO 20 DO
  BEGIN
  p := Random(10);
  IF p >= 8 THEN Writeln('Red')
  ELSE IF p >= 3 THEN Writeln('Blue')
  ElSE Writeln('Yellow');
  END;
  Readln;
END.