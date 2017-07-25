BEGIN ~psMelFED~

IF ~Global("psMelKilledKnights", "GLOBAL", 0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @4
  IF ~~ THEN DO ~
SetGlobal("psKnightsToFightMelToggle", "GLOBAL", 1)
StartCutSceneMode()
StartCutScene("psCut14")~ EXIT
END


IF ~Global("psMelKilledKnights", "GLOBAL", 1)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(2)
CreateVisualEffect("SPSUMPLN",[526.480])
CreateVisualEffect("S077CRVS",[292.575])
CreateVisualEffect("S077CRVS",[475.696])
Wait(1)
CreateCreature("psSolar",[526.480],4)
CreateCreature("psMarile",[292.575],4)
CreateCreature("psMarile",[475.696],4)
Wait(1)
CreateVisualEffectObject("HELLOLY",Myself)
SmallWait(3)
EndCutSceneMode()
DestroySelf()~ EXIT
END
