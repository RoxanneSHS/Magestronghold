BEGIN ~psElmin~

IF ~Global("psElminsterFoughtMelCounter","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 18.0 11.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @31
  IF ~~ THEN DO ~
StartCutSceneMode()
CutSceneID("psElmin")
SetGlobal("psElminsterFoughtMelCounter","GLOBAL",1)
Wait(1)
CreateVisualEffectObject("SPDIMNDR",Player1)
CreateVisualEffectObject("SPDIMNDR",Player2)
CreateVisualEffectObject("SPDIMNDR",Player3)
CreateVisualEffectObject("SPDIMNDR",Player4)
CreateVisualEffectObject("SPDIMNDR",Player5)
CreateVisualEffectObject("SPDIMNDR",Player6)
Wait(1)
FadeToColor([30.0],0)
Wait(1)
ActionOverride(Player1,Rest())
ActionOverride(Player2,Rest())
ActionOverride(Player3,Rest())
ActionOverride(Player4,Rest())
ActionOverride(Player5,Rest())
ActionOverride(Player6,Rest())
ActionOverride(Player1,LeaveAreaLUA("AR0308","",[1000.998],2))
ActionOverride(Player2,LeaveAreaLUA("AR0308","",[1000.998],2))
ActionOverride(Player3,LeaveAreaLUA("AR0308","",[1000.998],14))
ActionOverride(Player4,LeaveAreaLUA("AR0308","",[1000.998],0))
ActionOverride(Player5,LeaveAreaLUA("AR0308","",[1000.998],4))
ActionOverride(Player6,LeaveAreaLUA("AR0308","",[1000.998],2))
DestroySelf()
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 12
END