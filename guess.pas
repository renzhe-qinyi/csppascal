PROGRAM Conditionals; { Number guessing game }
VAR
  num, guess, i : INTEGER;
BEGIN
  Randomize;
  num := Random(10);

  REPEAT
    Write('Guess an number betwwen 0 and 9: ');
    Read(guess);
    IF guess < num THEN Writeln('Incorrect, woo low')
    Else IF guess > num THEN Writeln('Incorrect, too high')
    Else Writeln('That is correct');
  UNTIL num = guess;

  Read(guess)
END.