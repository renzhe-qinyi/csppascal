PROGRAM graphics;
USES Graph;
VAR
  gd, gm : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');

  SetColor(4);
  Rectangle(150, 200, 350, 350);

  SetColor(6);
  Line(150, 200, 250, 120);
  Line(250, 120, 350, 200);

  SetColor(8);
  Rectangle(230, 275, 270, 350);

  SetColor(10);
  Rectangle(170, 220, 210, 260);
  Rectangle(290, 220, 330, 260);

  Readln(gd);
  CloseGraph;   { CloseGraph is a procedure with 0 inputs }
END.