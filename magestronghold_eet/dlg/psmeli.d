BEGIN ~psMeli~

IF ~Global("psMelicampQuestCounter","GLOBAL",0)
Global("psMelicampQuestCounterp","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)
Wait(1)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(2)
CreateVisualEffectObject("SPFLSRIN",Myself)
Wait(2)
ForceSpell(Myself,FLASHY_2)
CreateVisualEffectObject("SPCALLLI",Myself)
Wait(1)
CreateVisualEffectObject("SPCALLLI",Myself)
PlaySound("PORTAL2")
Wait(1)
CreateVisualEffectObject("SPCALLLI",Myself)
Wait(1)
ForceSpell(Myself,FLASHY_1)
Wait(1)
ForceSpell(Myself,WIZARD_PROTECTION_FROM_ENERGY)
DisplayStringHead(Myself,"5251")
Wait(1)
DisplayStringHead(Myself,"44898")
CreateVisualEffectObject("SPFLSRIN",Myself)
Wait(3)
CreateVisualEffect("SPFIREPI",[2488.726])
CreateVisualEffect("SPFIREPI",[2637.851])
CreateVisualEffect("SPFIREPI",[2415.846])
CreateVisualEffect("SPFIREPI",[2527.899])
ScreenShake([20.20],10)
ForceSpell(Myself,FLASHY_3)
Wait(1)
Polymorph(CHICKEN)
CreateVisualEffectObject("SPBOOM",Myself)
SetGlobal("psMelicampQuestCounter","GLOBAL",1)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @16
  IF ~~ THEN EXIT
END

IF ~Global("psMelicampQuestCounter","GLOBAL",1)
Global("psMelicampQuestCounterr","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @20
  IF ~~ THEN DO ~SetGlobal("psMelicampQuestCounter","GLOBAL",0)
ForceSpell(Myself,DRYAD_TELEPORT)
Wait(1)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("psMelicampQuestCounterr","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @26
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(2)
CreateCreature("psThal",[2438.771],0)
EndCutSceneMode()
~ EXIT
END

IF ~Global("psMelicampQuestCounterp","GLOBAL",1)~ THEN BEGIN 15 // from:
  SAY @27
  IF ~~ THEN DO ~SetGlobal("psMelicampQuestCounterp","GLOBAL",0)
ForceSpell(Myself,DRYAD_TELEPORT)
Wait(1)
DestroySelf()~ EXIT
END
