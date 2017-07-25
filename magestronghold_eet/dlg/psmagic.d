BEGIN ~psMagic~

IF ~Global("psGovtBuildingMageSpawnCounter","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN DO ~CreateVisualEffect("SPCALLLI",[1031.487])
CreateVisualEffect("SPCALLLI",[1170.571])
CreateVisualEffect("SPCALLLI",[1095.520])
CreateCreature("psMDivi",[1130.480],0)
SetGlobal("psGovtBuildingMageSpawnCounter","GLOBAL",1)
DestroySelf()~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @8
  IF ~~ THEN DO ~CreateVisualEffect("SPCALLLI",[1031.487])
CreateVisualEffect("SPCALLLI",[1170.571])
CreateVisualEffect("SPCALLLI",[1095.520])
CreateCreature("psMDivi",[1130.480],0)
SetGlobal("psGovtBuildingMageSpawnCounter", "GLOBAL", 1)
DestroySelf()~ EXIT
END

IF ~Global("psGovtBuildingMageSpawnCounter","GLOBAL",9)~ THEN BEGIN 0 // from:
  SAY @9
  IF ~~ THEN DO ~ScreenShake([20.20],10)
AddexperienceParty(40000)
CreateCreature("psPort02",[418.1011],4)
DestroySelf()
~ EXIT
END
