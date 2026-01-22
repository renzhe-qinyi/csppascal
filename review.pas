PROGRAM reveiw;
TYPE
  Fraction = Record
               num : INTEGER;
               den : INTEGER;
             END;
VAR
  f1, f2 : Fraction;
FUNCTION Frac2String(f : Fraction) : STRING;
VAR
  s1, s2 : STRING;
BEGIN
  Str(f.num, s1);
  Str(f.den, s2);
  Frac2String := s1 + '/' + s2;
END;

BEGIN
  f1.num := 2;
  f1.den := 3;
  f2.num := 4;
  f2.den := 5;

Writeln(Frac2String(f1));
Writeln(Frac2String(f2));

Writeln(f1.num * f2.num, '/', f1.den * f2.den);
Writeln(f1.num*f2.den +  , '/, f1.den * f2.den)

Readln;
END.