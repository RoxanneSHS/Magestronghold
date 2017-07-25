BEGIN ~psDream~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~ScreenShake([20.20],10)~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END