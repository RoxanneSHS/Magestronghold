BEGIN ~psPort01~

IF ~!Global("psFearSpawned", "GLOBAL", 1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  ++ @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @4
  ++ @5 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  ++ @7 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @8
  ++ @9 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 10.0 6.0
  SAY @11
  ++ @12 GOTO 8
  ++ @13 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @14
  IF ~~ THEN DO ~StartCutSceneMode()
  CutSceneID(Player1)
MoveViewPoint([2250.1784],VERY_FAST)
Wait(1)
CreateVisualEffect("SPCALLLI",[2179.1725])
CreateVisualEffect("SPCALLLI",[2163.1835])
CreateVisualEffect("SPCALLLI",[2326.1726])
Wait(1)
CreateVisualEffect("SPFIRSDI",[2179.1725])
CreateVisualEffect("SPFIRSDI",[2163.1835])
CreateVisualEffect("SPFIRSDI",[2326.1726])
Wait(1)
CreateVisualEffect("SPFEAREF",[2250.1784])
CreateVisualEffect("SPFLAMES",[2179.1725])
CreateVisualEffect("SPFLAMES",[2163.1835])
CreateVisualEffect("SPFLAMES",[2326.1726])
Wait(1)
CreateCreature("psFear",[2250.1784],0)
SetGlobal("psFearSpawned", "GLOBAL", 1)
Wait(1)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @11
  ++ @21 GOTO 8
  ++ @16 EXIT
END

IF ~Global("psFearSpawned", "GLOBAL", 1)
!Dead("psFear")~ THEN BEGIN fightFear
SAY @20
IF ~~ THEN EXIT
END

IF ~Global("psFearSpawned", "GLOBAL", 1)
Dead("psFear")~ THEN BEGIN 11 // from:
  SAY @17
  IF ~~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @18
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @19
  IF ~~ THEN DO ~
SetGlobal("psElminsterSpawnToggle", "GLOBAL", 1) 
FadeToColor([30.0],0)
StartCutScene("psCut21")~ EXIT
END
