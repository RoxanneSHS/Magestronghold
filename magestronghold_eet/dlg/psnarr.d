BEGIN ~psNarr~

IF ~Global("psProfsPortalCounter", "GLOBAL", 1)~ THEN BEGIN byebyeProfessor
SAY @2 = @3 = @4
IF ~~ THEN DO ~SetGlobal("psProfsPortalCounter", "GLOBAL", 2)
DestroySelf()~ EXIT
END

IF ~Global("psPassOutInHold", "GLOBAL", 1)
Global("psHavocEnsues", "GLOBAL", 0)~ THEN BEGIN 25 // from:
  SAY @1
  IF ~~ THEN DO ~FadeToColor([30.0],0) 
CreateCreature("psMystra",[622.758],14)
ActionOverride("psMel", DestroySelf())
Wait(10)
FadeFromColor([30.0],0)
DestroySelf()~ EXIT
END

IF ~Global("psHavocEnsues", "GLOBAL", 1)~ THEN BEGIN havoc
SAY @0
IF ~~ THEN DO ~
SetGlobal("psHavocEnsues", "GLOBAL", 2)
StartCutSceneMode()
StartCutScene("psCut39")~ EXIT
END

