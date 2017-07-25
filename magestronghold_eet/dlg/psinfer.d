BEGIN ~psInfer~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16
  IF ~~ THEN EXIT
END

IF ~!Global("psFinalQuestToKillMelCounter", "GLOBAL", 7)~ THEN BEGIN 9 // from:
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  ++ @32 GOTO giveMeRobes
  IF ~~ THEN REPLY @19 GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN giveMeRobes
SAY @33
++ @34 EXIT
++ @35 GOTO giveMeRobes-2
END

IF ~~ THEN BEGIN giveMeRobes-2
SAY @36
++ @37 EXIT
++ @38 DO ~Enemy()~ EXIT
END

IF ~Global("psFinalQuestToKillMelCounter", "GLOBAL", 7)~ THEN BEGIN savedWorld
SAY @39
++ @40 GOTO savedWorld-2
END

IF ~~ THEN BEGIN savedWorld-2
SAY @41
++ @42 GOTO savedWorld-3
END

IF ~~ THEN BEGIN savedWorld-3
SAY @43
++ @44 GOTO savedWorld-4
END

IF ~~ THEN BEGIN savedWorld-4
SAY @45
++ @46 EXIT
++ @47 GOTO savedWorldAndNowYouDie
END

IF ~~ THEN BEGIN savedWorldAndNowYouDie
SAY @48
++ @49 DO ~Enemy()~ EXIT
END