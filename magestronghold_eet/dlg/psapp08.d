BEGIN ~psApp08~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN HiThere
SAY @0
++ @1 GOTO bye
++ @3 GOTO explain
END

IF ~~ THEN BEGIN bye
SAY @2
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN explain
SAY @4
++ @5 GOTO puppy
++ @6 GOTO work
END

IF ~~ THEN BEGIN puppy
SAY @8
++ @9 GOTO whatADork
END

IF ~~ THEN BEGIN work
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN whatADork
SAY @10
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN welcomeBack
SAY @11
++ @12 GOTO secondBye
++ @13 GOTO notYet
++ @14 GOTO insane
END

IF ~~ THEN BEGIN secondBye
SAY @15
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN notYet
SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN insane
SAY @17
IF ~~ THEN EXIT
END