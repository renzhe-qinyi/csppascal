PROGRAM stats;
USES csp;
VAR
  myList : LIST;
  n: INTEGER;
BEGIN
  REPEAT
  Writeln('how many random numbers for your list?');
  Readln(n);
  IF (n <= 0) or (n > size) then
    Writeln('bigger than 0 and smaller than ', size);
  until (n > 0) and (n <= size);
  Randomlist(mylist, n);
  Printlist(mylist);
  BubbleSort(mylist);
  IF IsIncreasing(mylist) then
    writeln('the list is increasing');
  else
    writeln('the list is not increasing');
  readln;
  Writeln('the average = ', average(mylist):3:2);
  Writeln('the median = ', median(mylist):3:2);
  Readln;
END.