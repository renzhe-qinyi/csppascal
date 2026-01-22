PROGRAM cspreview;
CONST
  SIZE = 20;
TYPE
  LIST = ARRAY[0..SIZE] OF INTEGER;
VAR
  mylist, mylist2 : LIST;
  i, j, n : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO SIZE DO
    mylist[i] := random(50);
  mylist[0] := SIZE;

  FOR i := 1 TO SIZE DO
    Writeln('mylist[', i, '] = ', mylist[i]);

  Readln(j);
  n := 0;
  FOR i := 1 TO SIZE DO
    IF mylist[i] = j THEN
      Writeln('Yep');
  Writeln(n);

  Readln;
END.