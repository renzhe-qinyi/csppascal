PROGRAM AverageGrade (input, output);
CONST
  MAXGRADES = 20;
TYPE
  List = ARRAY[1..MAXGRADES] of REAL;
VAR
  grades : List;
  numGrade, i : INTEGER;
  average : REAL;
  sum : REAL;
BEGIN
  Writeln('How many assignments they have in the class? ');
  Readln(numGrade);
  FOR i := 1 TO numGrade DO
  BEGIN
    Writeln('what is the grade of your assignments # ', i, ': ');
    Readln(grades[i]);
  END;

  sum := 0;
  FOR i := 1 TO numGrade DO sum := sum + numGrade;
  average := sum/numGrade;
  Writeln(average);
  Read(i);
END.