PROGRAM SoftballHeights(input, output);
CONST
  MAXTEAM = 22;
TYPE
  List = ARRAY[1..MAXTEAM] OF INTEGER;
VAR
  heights : List;
  teamNum, i : INTEGER;
  average : REAL;
  sum : INTEGER;

BEGIN
  Writeln('How many players on the team? ');
  Readln(teamNum);

  FOR i := 1 TO teamNum DO
  BEGIN
    Writeln('what is height of player #', i, ': ');
    Readln(heights[i]);
  END;

  FOR i := 1 TO teamNum DO Writeln(heights[i]);

  Readln(i);

END.