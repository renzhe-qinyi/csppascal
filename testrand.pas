PROGRAM TestRandom;
USES csp;
VAR
  myList : LIST;
  n : INTEGER;
BEGIN
  REPEAT
    Writeln('Enter how many random items');
    Readln(n);
    IF (n <= 0) OR (n <= SIZE) THEN
      Writeln('Your number should be between 1 and ', SIZE);
  UNTIL (n > 0) AND (n < SIZE);
  RandomList(myList, n);
  PrintList(myList);
  Writeln('Smallest element is ', Smallest(myList));
  Readln;
END.