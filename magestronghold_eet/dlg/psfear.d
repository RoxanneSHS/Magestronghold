BEGIN ~psFear~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9
  IF ~~ THEN DO ~EndCutScenemode()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @10
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @11
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END
