BEGIN ~psTrait~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
