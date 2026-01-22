PROGRAM sub;
VAR
  s1, s2 : STRING;
  i, j : INTEGER;

FUNCTION substring(s : STRING; start, len : INTEGER) : STRING;
  VAR
    i : INTEGER;
    temps : STRING;
  BEGIN
    temps[0] := chr(len);
    FOR i := 1 TO len DO
      temps[i] := s[i + strat - 1];
    substring := temps;
  END;

BEGIN
  s1 := substring('HelloMrMurryYouSuck', 6, 7);
  Writeln('Hello -> ', s1);
  Readln(i);
END.