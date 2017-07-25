BEGIN ~psApp06~

IF ~Global("psProfsPortalCounter", "GLOBAL", 2)~ THEN BEGIN interesting
SAY @4
IF ~~ THEN EXIT
END

IF ~Global("psProfsPortalCounter", "GLOBAL", 0)~ THEN BEGIN goAway
SAY @0
	IF ~~ THEN REPLY @1 GOTO scareyMan
END

IF ~~ THEN BEGIN scareyMan
SAY @2 = @3
	IF ~~ THEN EXIT
END