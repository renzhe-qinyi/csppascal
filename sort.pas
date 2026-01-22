PROGRAM sort;
USES csp;
VAR
  aList : LIST;
  i, j, temp : INTEGER;
BEGIN
  RandomList(aList, 10);
  Writeln('Unsorted:');
  PrintList(aList);

  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    FOR j := 1 TO Length(aList) - i DO
    BEGIN
      IF aList[j] > aList[j + 1] THEN
      BEGIN
        temp := aList[j];
        aList[j] := aList[j + 1];
        aList[j + 1] := temp;
      END;
    END;
  END;
  Writeln('Sorted:');
  PrintList(aList);
  Readln;
END.