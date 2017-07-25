BEGIN ~psMel~

IF ~Global("psMelsIntro", "GLOBAL", 0)~ THEN BEGIN 0 // from:
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
  ++ @4 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  ++ @6 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 0.0
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @46
  IF ~~ THEN DO ~SetGlobal("psMelsIntro", "GLOBAL", 1)
StartCutScene("psCut02")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @8
  IF ~~ THEN DO ~Kill(Player1)~ EXIT
END


IF ~Global("psMelsIntro", "GLOBAL", 1)~ THEN BEGIN psMelsIntro-0 // from:
  SAY @9
  ++ @10 GOTO psMelsIntro-1
END

IF ~~ THEN BEGIN psMelsIntro-1 // from: 0.0
  SAY @11
  ++ @12 GOTO psMelsIntro-3
  ++ @13 GOTO psMelsIntro-2
END

IF ~~ THEN BEGIN psMelsIntro-2 // from: 1.1 1.0
  SAY @14
  IF ~~ THEN GOTO psMelsIntro-3
END

IF ~~ THEN BEGIN psMelsIntro-3 // from: 2.0
  SAY @15
  ++ @16 GOTO psMelsIntro-4
  ++ @17 GOTO psMelsIntro-10
END

IF ~~ THEN BEGIN psMelsIntro-4 // from: 10.0 3.0
  SAY @18
  ++ @19 GOTO psMelsIntro-5
END

IF ~~ THEN BEGIN psMelsIntro-5 // from: 4.0
  SAY @20
  ++ @21 GOTO psMelsIntro-6
END

IF ~~ THEN BEGIN psMelsIntro-6 // from: 5.0
  SAY @22
  IF ~~ THEN GOTO psMelsIntro-12
END

IF ~~ THEN BEGIN psMelsIntro-12 // from: 5.0
  SAY @45
  IF ~~ THEN GOTO psMelsIntro-7
END

IF ~~ THEN BEGIN psMelsIntro-7 // from: 6.0
  SAY @23
  IF ~~ THEN GOTO psMelsIntro-8
END

IF ~~ THEN BEGIN psMelsIntro-8 // from: 7.0
  SAY @24
  IF ~~ THEN GOTO psMelsIntro-9
END

IF ~~ THEN BEGIN psMelsIntro-9 // from: 8.0
  SAY @25
  IF ~~ THEN DO ~
SetGlobal("psNightmareOfTheSoulToggle","GLOBAL",1)
SetGlobal("psMelsIntro", "GLOBAL", 2)

StartCutSceneMode()
Wait(2)
CreateVisualEffectObject("HELLOLY",Player1)
CreateVisualEffectObject("HELLOLY",Player2)
CreateVisualEffectObject("HELLOLY",Player3)
CreateVisualEffectObject("HELLOLY",Player4)
CreateVisualEffectObject("HELLOLY",Player5)
CreateVisualEffectObject("HELLOLY",Player6)
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride(Player1,Rest())
ActionOverride(Player2,Rest())
ActionOverride(Player3,Rest())
ActionOverride(Player4,Rest())
ActionOverride(Player5,Rest())
ActionOverride(Player6,Rest())
EndCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR0421","",[682.632],0))
ActionOverride(Player2,LeaveAreaLUA("AR0421","",[682.632],0))
ActionOverride(Player3,LeaveAreaLUA("AR0421","",[682.632],0))
ActionOverride(Player4,LeaveAreaLUA("AR0421","",[682.632],0))
ActionOverride(Player5,LeaveAreaLUA("AR0421","",[682.632],0))
ActionOverride(Player6,LeaveAreaLUA("AR0421","",[682.632],0))
~ EXIT
END

IF ~~ THEN BEGIN psMelsIntro-10 // from: 3.1
  SAY @26
  IF ~~ THEN GOTO psMelsIntro-4
END



IF ~Global("psElminsterDead", "GLOBAL", 1)~ THEN BEGIN 22 // from:
  SAY @39 = @40
  IF ~~ DO ~StartCutScene("psCut05")~ EXIT
END


IF ~Global("psMystrasInTrouble", "GLOBAL", 1)~ THEN BEGIN 24 // from:
  SAY @43 = @44
  IF ~~ THEN DO ~StartCutScene("psCut07")~ EXIT
END

CHAIN
IF ~Global("psElminsterFoughtMelCounter","GLOBAL",2)~ THEN ~psMel~ deathtalk @34 = @35 = @36
== ~psElmin~ @37 = @38
DO ~ActionOverride("spElmin", ApplySpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT))
ActionOverride("spElmin", DestroyItem("MINHP1"))
ActionOverride("spElmin", DestroyItem("IMMUNE1"))
StartCutScene("psCut04")~ EXIT
