BEGIN ~psBaat~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  ++ @1 GOTO 21
  ++ @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  ++ @4 GOTO 2
END

IF ~~ THEN BEGIN 21
  SAY @55
  ++ @56 GOTO 1
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  ++ @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  ++ @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  ++ @10 GOTO 5
  ++ @11 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  ++ @11 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.1
  SAY @13
  ++ @14 GOTO 7
  ++ @15 GOTO 22
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.0
  SAY @16
  ++ @17 GOTO 8
  ++ @18 GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 6.1 6.0
  SAY @57
  ++ @17 GOTO 8
  ++ @18 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @19
  ++ @20 GOTO 9
  ++ @21 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @22
  ++ @23 GOTO 10
  ++ @24 GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @25
  IF ~~ THEN DO ~GiveItemCreate("psSCRL03",Player1,1,0,0)
SetGlobal("psBaatQuestAccepted","GLOBAL",1)~ EXIT
END

IF ~!NumTimesTalkedTo(0)
Global("psBaatQuestAccepted", "GLOBAL", 0)~ THEN BEGIN returned
SAY @51
++ @52 GOTO 9
++ @53 GOTO freak
END

IF ~~ THEN BEGIN freak
SAY @54
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 8.1 7.1
  SAY @58
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.1 8.1 7.1
  SAY @58
  IF ~~ THEN EXIT
END

IF ~Global("psBaatQuestAccepted","GLOBAL",1)
Global("psKWQC","GLOBAL",0)
~ THEN BEGIN noSpell
  SAY @42
++ @43 GOTO noSpell2
++ @44 GOTO 16
END

IF ~~ noSpell2
SAY @45
IF ~~ THEN EXIT
END

IF ~Global("psKWQC","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY @27
  ++ @28 DO ~TakePartyItem("psSCRL03")
DestroyItem("psSCRL03")~ GOTO 13
  ++ @29 DO ~TakePartyItem("psSCRL03")
DestroyItem("psSCRL03")~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @30
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @31
  ++ @32 GOTO 15
  ++ @33 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @34
  IF ~~ THEN DO ~SetGlobal("psKWQC","GLOBAL",3)~ EXIT
END

IF ~Global("psKWQC", "GLOBAL", 3) !Dead("psWeil")~ THEN BEGIN weilNotDead
SAY @46
++ @47 GOTO 20
++ @48 GOTO iAmAMoron
END

IF ~~ THEN BEGIN iAmAMoron
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @35
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Dead("psWeil")
Global("psKWQC","GLOBAL",3)~ THEN BEGIN 17 // from:
  SAY @36
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @37
  ++ @38 GOTO 19
  ++ @39 GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @40
  IF ~~ THEN DO ~AddexperienceParty(60000)
GiveItemCreate("psAmul01",Player1,1,0,0)
GiveItemCreate("sppsmsr",Player1,1,0,0)
GiveItemCreate("sppsbta",Player1,1,0,0)
SetGlobal("psKWQC", "GLOBAL", 4)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @41
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("psKWQC", "GLOBAL", 4)~ THEN BEGIN goAwayMortal
SAY @50
IF ~~ THEN EXIT
END