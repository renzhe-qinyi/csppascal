PROGRAM RandList;
USES csp;
VAR
  myList : List;
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO 20 DO
    Append(mylist, Random(67) + 1);
  Printlist(mylist);

  For i := 1 to 20 do
    If mylist[i] = 67 then
      Writeln('six seven!');
  Readln;
END.