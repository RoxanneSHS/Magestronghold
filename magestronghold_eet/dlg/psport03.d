BEGIN ~psPort03~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  ++ @2 GOTO 2
  ++ @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~
SetGlobal("psFinalQuestToKillMelCounter", "GLOBAL", 3)
//FadeToColor([30.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("AR0412","",[951.1387],0))
ActionOverride(Player2,LeaveAreaLUA("AR0412","",[869.1327],0))
ActionOverride(Player3,LeaveAreaLUA("AR0412","",[919.1242],0))
ActionOverride(Player4,LeaveAreaLUA("AR0412","",[1031.1243],0))
ActionOverride(Player5,LeaveAreaLUA("AR0412","",[1049.1327],0))
ActionOverride(Player6,LeaveAreaLUA("AR0412","",[1049.1327],0))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @5
  IF ~~ THEN EXIT
END
