PROGRAM AverageWeight;
CONST
  MAXSIZE = 20;
TYPE
  List = ARRAY[1..MAXSIZE] OF REAL;
VAR
  weights : List;
  teamSize, i : INTEGER;
  average : REAL;
  sum : REAL;
BEGIN
  Writeln('How many players on the team? ');
  Readln(teamSize);
  FOR i := 1 TO teamSIZE DO
  BEGIN
    Writeln('what is weight of player #', i, ': ');
    Readln(weights[i]);
  END;

  sum := 0;
  FOR i := 1 TO teamSIZE DO Writeln(weights[i]);
  average := sum/teamSize;
  Writeln(average);
  Read(i);

END.