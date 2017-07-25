BEGIN ~psApp02~

IF ~RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(2,2)
~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END
