BEGIN ~psHag~

IF ~Global("psHagSpokeToggle", "GLOBAL", 0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~SetGlobal("psHagSpokeToggle", "GLOBAL", 1)~ EXIT
END
