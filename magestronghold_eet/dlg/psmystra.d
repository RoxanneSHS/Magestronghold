BEGIN ~psMystra~

IF ~Global("psRetrieveSpellKeyCounter","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  ++ @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  ++ @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  ++ @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  ++ @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  ++ @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  ++ @11 GOTO 6
  ++ @12 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @14
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @19
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @20
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @21
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @22
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @23
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @24
  ++ @25 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @26
  ++ @27 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @28
  ++ @29 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @30
  ++ @31 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @32
  ++ @33 GOTO 22
  ++ @34 GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY @36
IF ~~ THEN DO ~SetGlobal("psRetrieveSpellKeyCounter","GLOBAL",1)
SetGlobal("MelPStShake","GLOBAL",1)~ EXIT
END


IF ~Global("psRetrievedSpellKeyToggle","GLOBAL",1)~ THEN BEGIN 24 // from:
  SAY @37
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @38
  ++ @39 GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @40
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @41
  ++ @42 GOTO 28
  ++ @43 GOTO 30
  ++ @44 GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @45
  ++ @46 GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 31.0 30.0 28.0
  SAY @47
  IF ~~ THEN DO ~
SetGlobal("psRetrievedKeyTalkedToMysToggle","GLOBAL",1)  
StartCutSceneMode()
StartCutScene("psCut38")~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY @48
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY @49
  IF ~~ THEN GOTO 29
END

IF ~Global("psRetrieveSpellKeyCounter", "GLOBAL", 1)~ THEN BEGIN whyReturned
SAY @50
++ @51 GOTO sighs
++ @52 GOTO imFine
END

IF ~~ THEN BEGIN sighs
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imFine
  SAY @54
  IF ~~ THEN EXIT
END
