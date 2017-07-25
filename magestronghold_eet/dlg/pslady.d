BEGIN ~psLady~

IF ~Global("psMelsFinalSpellSceneToggle","GLOBAL",1)
Global("psLadySpokeToYou", "GLOBAL", 0)
Global("psLadySpokenToMelToggle","GLOBAL",1)~ THEN BEGIN 13
  SAY @19
  IF ~PartyHasItem("psKey")~ THEN REPLY @20 GOTO 14
  ++ @21 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @22
  ++ @23 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @24
  IF ~~ THEN DO ~
TakePartyItem("psKey")
DestroyItem("pskey")
CreateVisualEffect("SPFIREPI",[963.1592])
SetGlobal("psLadySpokeToYou", "GLOBAL", 1)
StartCutScene("psCut11")~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @25
  IF ~~ THEN DO ~StartCutScene("psCut17")~ EXIT
END


IF ~Global("psFinalQuestToKillMelCounter","GLOBAL",0)
Global("psMelsFinalSpellFailed","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  ++ @2 GOTO 2
  ++ @3 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 7.0 2.0
  SAY @5
  ++ @6 GOTO 4
  ++ @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @8
  ++ @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("psFinalPortalToggle","GLOBAL",1)
  SetGlobal("psFinalQuestToKillMelCounter","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY @12
  IF ~~ THEN GOTO 3
END

IF ~Global("psFinalQuestToKillMelCounter","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY @13
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @14
  ++ @15 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @17
  IF ~~ THEN GOTO 21
END


IF ~~ THEN BEGIN 21 // from: 11.0
  SAY @18
  IF ~~ THEN DO ~
	StartCutSceneMode()
	CutSceneID(Player1)
	SetGlobal("psFinalQuestToKillMelCounter", "GLOBAL", 4)
	GiveItemCreate("psSW2H01",Player1,1,0,0)
	Wait(2)
	CreateVisualEffectObject("SPPLANAR",Myself)
	ScreenShake([20.20],10)
	Wait(2)
	EndCutSceneMode()
	CreateCreature("psMysEnd",[689.1266],4)
	DestroySelf()
	ActionOverride("psMysEnd", StartDialogNoSet(Player1)~ EXIT
END

IF ~Global("psClimaxOfFinalSpellToggle", "GLOBAL", 2)
Global("psLadySpokenToMelToggle","GLOBAL",1)
Global("psFinalQuestToKillMelCounter","GLOBAL",1)~ THEN BEGIN hurryup
SAY @31
IF ~~ THEN EXIT
END

CHAIN
IF ~Global("psClimaxOfFinalSpellToggle", "GLOBAL", 1)~ THEN ~psLady~ ladyofPain @26 = @27 ==
~psMelLad~ @28 = @29 = @30 DO ~
SetGlobal("psLadySpokenToMelToggle","GLOBAL",1)
SetGlobal("psClimaxOfFinalSpellToggle", "GLOBAL", 2)
StartCutSceneMode()
StartCutScene("psCut10")~ EXIT