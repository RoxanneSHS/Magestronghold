BEGIN ~psInch~

IF ~True()~ THEN BEGIN inchIntro
SAY @0 = @1
IF ~~ THEN REPLY @2 GOTO inchAttack
END

IF ~~ THEN BEGIN inchAttack
SAY @3
IF ~~ THEN DO ~ActionOverride("OBSERVE", DestroySelf())~ EXIT
END