BEGIN ~psWeil~

IF ~Global("psKWQC","GLOBAL",3)~ THEN BEGIN timeToDie
SAY @13
++ @14 DO ~Enemy()~ EXIT
++ @15 GOTO ofCourse
++ @16 EXIT
END

IF ~~ THEN BEGIN ofCourse
SAY @17
IF ~~ THEN DO ~
StartCutSceneMode()
StartCutScene("psCut48")~ EXIT
END

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN EXIT
END