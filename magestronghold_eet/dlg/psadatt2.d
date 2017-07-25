BEGIN ~psAdAtt2~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN DO ~Enemy()
ActionOverride("psFanat1",Enemy())
ActionOverride("psFanat2",Enemy())
ActionOverride("psFanat3",Enemy())
ActionOverride("psFanat4",Enemy())
ActionOverride("psFanat5",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @12
  IF ~~ THEN DO ~Enemy()
ActionOverride("psFanat1",Enemy())
ActionOverride("psFanat2",Enemy())
ActionOverride("psFanat3",Enemy())
ActionOverride("psFanat4",Enemy())
ActionOverride("psFanat5",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @13
  IF ~~ THEN DO ~Enemy()
ActionOverride("psFanat1",Enemy())
ActionOverride("psFanat2",Enemy())
ActionOverride("psFanat3",Enemy())
ActionOverride("psFanat4",Enemy())
ActionOverride("psFanat5",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY @14
  IF ~~ THEN DO ~Enemy()
ActionOverride("psFanat1",Enemy())
ActionOverride("psFanat2",Enemy())
ActionOverride("psFanat3",Enemy())
ActionOverride("psFanat4",Enemy())
ActionOverride("psFanat5",Enemy())~ EXIT
END
