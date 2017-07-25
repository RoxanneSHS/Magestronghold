BEGIN ~psMelLad~ 

IF ~Global("psClimaxOfFinalSpellToggle", "GLOBAL", 0)~ THEN BEGIN 0 // from:
  SAY @0
  ++ @1  GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  ++ @3 GOTO 2
  ++ @4 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  ++ @22 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
  ++ @7 GOTO 4
  ++ @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  ++ @11 GOTO 6
  ++ @12 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 11.0 5.0
  SAY @13
  ++ @14 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16
  ++ @17 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @19
  IF ~~ THEN DO ~StartCutScene("psCut09")~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @20
  ++ @21 GOTO 6
END
