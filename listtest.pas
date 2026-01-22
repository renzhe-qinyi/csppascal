PROGRAM listtest;
USES csp;
VAR
  mylist : list;
  i : integer;
PROCEDURE PrintList(aList : List);
  Begin
    for i := 1 to length(alist) do
    writeln(alist[i]);
  End;
BEGIN
  Writeln('length of list is ', length(mylist));

  Append(mylist, 5);
  Append(mylist, 10);
  Append(mylist, -50);
  Append(mylist, 16);
  Writeln('now length is ', length(mylist));
  For i := 1 to length(mylist) do
    Writeln(mylist[i]);
  Append(mylist, 30);
  Append(mylist, 60);
  printlist(mylist);
  Readln(i);
END.