BEGIN ~psPPort~

IF ~Global("psFinalPortalToggle","GLOBAL",1)
Global("psFinalQuestToKillMelCounter","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("psFinalPortalToggle","GLOBAL",2)
FadeToColor([30.0],0)
Wait(2)
ActionOverride(Player1,LeaveAreaLUA("AR0452","",[677.883],0))
ActionOverride(Player2,LeaveAreaLUA("AR0452","",[479.1054],0))
ActionOverride(Player3,LeaveAreaLUA("AR0452","",[479.1054],0))
ActionOverride(Player4,LeaveAreaLUA("AR0452","",[479.1054],0))
ActionOverride(Player5,LeaveAreaLUA("AR0452","",[479.1054],0))
ActionOverride(Player6,LeaveAreaLUA("AR0452","",[479.1054],0))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~GlobalGT("psFinalQuestToKillMelCounter","GLOBAL",2)~ THEN BEGIN 4 // from:
  SAY @6
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END
