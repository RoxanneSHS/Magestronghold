BEGIN ~psExam~

IF ~Global("psExamStarted", "GLOBAL", 0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @8
  IF ~~ THEN REPLY @14 DO ~
FadeToColor([20.0],0)
StartCutSceneMode()
StartCutScene("psCut36")~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 5 // from:
SAY @9
	IF ~Dead("psTest01")
		Dead("psTest02")
		Dead("psTest03")
		Dead("psTest04")~ THEN REPLY @10 GOTO 6
	IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 0.0
	SAY @12
	IF ~~ THEN DO ~ForceSpell(Myself,WIZARD_DIMENSION_DOOR)
		Wait(1)
		DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
	SAY @13
	IF ~~ THEN EXIT
END