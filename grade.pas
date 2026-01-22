PROGRAM AgecClass(ifier(Input, Output);
VAR
  number : INTEGER;
  letter : CHAR;

FUNCTION Classifynumber(grade : INTEGER) : CHAR;
  BEGIN
    IF grade >= 90 then Classifynumber := 'A'
    ELSE IF grade > 80 then Classifynumber := 'B'
    ELSE IF grade > 70 then Classifynumber := 'C'
    ELSE IF grade > 60 then Classifynumber := 'D'
    ELSE Classifynumber := 'F'
  END;
PROCEDURE PrintgradeClassifier(letter : CHAR);
  BEGIN
    IF letter = 'A' then writeln('Your grade is A, That''s prety good')
    ELSE IF letter = 'B' then writeln('Your grade is B, you got it')
    ELSE IF letter = 'C' then writeln('Your grade is C, you can be better')
    ELSE IF letter = 'D' then writeln('Your grade is D, you fail')
    ELSE writeln('You are fail')
  END;

BEGIN
  REPEAT
  Writeln('Enter your number: ');
  Readln(number);
  IF (number < 0) OR (number > 100) THEN Writeln('Please enter a number between 0 and 120');
  UNTIL (number >= 0) AND (number <= 100);
  letter := Classifynumber(number);
  PrintgradeClassifier(letter);
  Read(letter);
END.