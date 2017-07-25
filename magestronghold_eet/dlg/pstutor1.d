BEGIN ~psTutor1~

IF ~RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.3 2.2 2.1 2.0
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4
  SAY @9
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,4)
~ THEN BEGIN 5 // from:
  SAY @10
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,5)
~ THEN BEGIN 6 // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,6)~ THEN BEGIN 7 // from:
  SAY @12
  IF ~~ THEN EXIT
END
