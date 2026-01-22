PROGRAM testlist;
USES csp;
VAR
  myList : List;
BEGIN
  Append(myList, 8);
  Append(myList, 10);
  Append(myList, 12);
  Append(myList, 7);
  Insert(myList, 10, 100);
  Remove(myList, 3);
  PrintList(myList);
  Writeln('sum of list = ', sum(myList));
  Writeln('average of list = ', average(mylist));
  readln;
END.