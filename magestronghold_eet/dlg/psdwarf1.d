BEGIN ~psDwarf1~

IF ~
OR(2)
Global("psFinalQuestToKillMelCounter", "GLOBAL", 0)
!GlobalLT("psFinalQuestToKillMelCounter", "GLOBAL", 7)~ THEN BEGIN endOfTheWorld
SAY @10
++ @11 GOTO endOfTheWorld-2
END

IF ~~ THEN BEGIN endOfTheWorld-2
SAY @12
++ @13 EXIT
++ @14 GOTO endOfTheWorld-3
END

IF ~~ THEN BEGIN endOfTheWorld-3
SAY @15
IF ~~ THEN EXIT
END

IF ~Global("psItemCreationBookToggle","GLOBAL", 0)~ THEN BEGIN intro
SAY @0
++ @1 GOTO intro-2
END

IF ~~ THEN BEGIN intro-2
SAY @2
++ @3 GOTO intro-3
END

IF ~~ THEN BEGIN intro-3
SAY @4
++ @5 EXIT
END

IF ~Global("psItemCreationBookToggle","GLOBAL", 1)~ THEN BEGIN haveBook
SAY @6
++ @7 GOTO haveBook-2
END

IF ~~ THEN BEGIN haveBook-2
SAY @8 = @9
IF ~~ THEN EXIT
END