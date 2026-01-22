UNIT csp;

INTERFACE

CONST
  SIZE = 255;

TYPE
  LIST = ARRAY[0..SIZE] OF INTEGER;

FUNCTION Length(aList : List) : INTEGER;
PROCEDURE Append(VAR aList : List; value : INTEGER);
PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
FUNCTION Pow(n, p : INTEGER) : INTEGER;
FUNCTION Len(s : STRING) : INTEGER;
FUNCTION Concat(s1, s2 : STRING) : STRING;
FUNCTION Reverse(s : STRING) : STRING;
FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
PROCEDURE Remove(VAR aList : List; i : INTEGER);
PROCEDURE PrintList(aList : List);
FUNCTION Sum(aList : List) : INTEGER;
FUNCTION average(aList : List) : REAL;
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
FUNCTION Smallest(aList : LIST) : INTEGER;
PROCEDURE BubbleSort(VAR aList : LIST);
FUNCTION Median(aList : LIST) : REAL;
FUNCTION IsIncreasing(aList : LIST) : Boolean;
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : Boolean;
FUNCTION BinarySearch(aList : LIST; value : INTEGER) : Boolean;
PROCEDURE Swap(VAR a, b : INTEGER);
PROCEDURE SelectionSort(VAR aList : LIST);
PROCEDURE InsertionSort(VAR aList : LIST);

IMPLEMENTATION

PROCEDURE PrintList(aList : List);
VAR
  i : INTEGER;
BEGIN
  For i := 1 to length(aList) do
  writeln('Element #', i, ' = ', aList[i]);
END;

PROCEDURE Append(VAR aList : LIST; value : INTEGER);
BEGIN
  aList[0] := Length(aLIst) + 1;
  aList[ Length(aList) ] := value;
END;

PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF i > length(alist) then append(alist, value)
  ELSE IF i > 0 THEN
  BEGIN
    aList[0] := length(alist) + 1;
    FOR index := length(alist) downto i + 1 do
      alist[index] := aList[index - 1];
    aList[i] := value;
  END;
END;

PROCEDURE Remove(VAR aList : List; i : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF (i <= length(alist)) and (i > 0) then
  begin
    FOR index := i to length(alist) - 1 do
      alist[index] := alist[index + 1];
    alist[0] := length(alist) - 1;
  end;
END;

PROCEDURE BubbleSort(VAR aList : LIST);
VAR
  i, j, temp : INTEGER;
BEGIN
  FOR i := 1 TO length(alist) - 1 DO
    FOR j := 1 TO length(alist) - i DO
      IF alist[j] > alist[j + 1] THEN
        Swap(aList[j], alist[j + 1]);
END;

FUNCTION Median(aList : LIST) : REAL;
VAR
  mid : integer;
  temp : real;
BEGIN
  mid := 0;
  temp := 0;
    IF (length(alist) mod 2 = 0) then
      BEGIN
        mid := length(alist) div 2;
        temp := (alist[mid] + alist[mid + 1])/2;
      END
    ELSE
      BEGIN
        mid := (length(alist) div 2) + 1;
        temp := alist[mid];
      END;
END;

FUNCTION IsIncreasing(aList : LIST) : Boolean;
VAR
  i : INTEGER;
  stillincreasing : boolean;
BEGIN
  FOR i := 1 TO length(alist) - 1 DO
    if alist[i] <= alist[i + 1] then
      stillincreasing := true
    else
    BEGIN
      stillincreasing := false;
      break;
    END;
    isincreasing := stillincreasing;
END;

FUNCTION LinearSearch(aList : LIST; value : INTEGER) : Boolean;
VAR
  i, count : INTEGER;
  Found : Boolean;
BEGIN
  found := false;
  count := 0;
  FOR i := 1 to length(alist) do
  BEGIN
    count := count + 1;
    IF alist[i] = value then
    BEGIN
      found := true;
      break;
    END;
  END;
  Writeln('number of searches = ', count);
  LinearSearch := Found;
END;

FUNCTION BinarySearch(aList : LIST; value : INTEGER) : Boolean;
VAR l, r, mid, count : INTEGER;
  Found : Boolean;
BEGIN
  Found := False;
  l := 1;
  r := length(alist);
  count := 0;
  REPEAT
    count := count + 1;
    mid := (l + r) DIV 2;
    IF alist[mid] = value then BEGIN
      Found := true;
      break;
    END
    ELSE IF alist[mid] < value then l := mid + 1
    ELSE r := mid - 1;
  UNTIL l > r;
  Writeln('number of searches = ', count);
  BinarySearch := Found;
END;

PROCEDURE Swap(VAR a, b : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp;
END;

PROCEDURE SelectionSort(VAR aList : LIST);
VAR
  i, j, min : INTEGER;
BEGIN
  FOR i := 1 TO length(alist) - 1 DO
  BEGIN
    min := i;
    FOR j := i + 1 TO length(alist) DO
    BEGIN
      IF alist[j] < alist[min] THEN min := j;
    END
    Swap(alist[i], alist[min]);
  END;
END;

PROCEDURE InsertionSort(VAR aList : LIST);
VAR
  i, j : INTEGER;
BEGIN
  FOR i := 2 TO length(alist) DO
    FOR j := i DOWNTO 2 DO
      IF alist[j] < alist[j - 1] THEN
        Swap(alist[j], alist[j - 1]
      ELSE
        Break;
END;

FUNCTION Sum(aList : List) : INTEGER;
VAR
  i, total : INTEGER;
BEGIN
  total := 0;
  FOR i := 1 to length(alist) do
    total := total + alist[i];
  sum := total;
END;

PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 to n do
    Append(aList, Random(100));
END;

FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
  min, i : INTEGER;
BEGIN
  min := aList[1];
  FOR i := 2 to length(alist) do
    IF alist[i] < min THEN min := alist[i];
  Smallest := min;
END;

FUNCTION average(aList : List) : REAL;
BEGIN
  average := sum(alist) / length(alist);
END;

FUNCTION Length(aList : List) : INTEGER;
BEGIN
  Length := aList[0];
END;

FUNCTION Reverse(s : STRING) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  temps[0] := s[0];
  FOR i := 1 TO Len(s) DO
    temps[i] := s[len(s) - i + 1];
  reverse := temps;
END;

FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  IF n > len(s) THEN n := len(s);
  temps[0] := chr(n);
  FOR i := 1 TO n DO
    temps[i] := s[i];
  prefix := temps;
END;

FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  IF start > len(s) then
    start := len(s);
  IF n > len(s) - start + 1 then
    n := len(s) - start + 1;
  FOR i := 1 TO n DO
    temps[i] := s[(start + i - 1)];
  temps[0] := chr(n);
  substring := temps;
END;

FUNCTION Concat(s1, s2 : STRING) : STRING;
  VAR
    temps : STRING;
    i : INTEGER;
  BEGIN
    temps[0] := chr(Len(s1) + Len(s2));
    FOR i :=1 TO Len(s1) DO
      Temps[i] := s1[i];
    FOR i := 1 TO Len(s2) DO
      Temps[Len(s1) + i] := s2[i];
  END;

FUNCTION Len(s : STRING) : INTEGER;
  BEGIN
    Len := ord(s[0]);
  END;

FUNCTION Pow(n, p : INTEGER) : INTEGER;
  VAR
    prod, i : INTEGER;
  BEGIN
    IF p < 0 THEN prod := 0
    ELSE
    BEGIN
      prod := 1;
      FOR i := 1 TO p DO
      prod := prod*n;
    END;
    Pow := prod;
  END;
END.