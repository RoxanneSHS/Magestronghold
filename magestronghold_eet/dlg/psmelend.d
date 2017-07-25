BEGIN ~psMelEnd~

IF ~Global("psLadySpokeToYou", "GLOBAL", 1)~ THEN BEGIN 14 // from:
  SAY @17 = @18 = @19
IF ~~ THEN DO ~
SetGlobal("psLadySpokeToYou", "GLOBAL", 2)
StartCutSceneMode()
StartCutScene("psCut12")~ EXIT
END


IF ~Global("psFinalQuestToKillMelCounter","GLOBAL",1)
!PartyHasItem("CLCK26")~ THEN BEGIN 0 // from: 13.0
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
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  ++ @6 GOTO 6
  ++ @7 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @11
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @13
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @14
  IF ~~ THEN DO ~StartCutScene("psCut23")~ EXIT
END

IF ~PartyHasItem("CLCK26")
Global("psFinalQuestToKillMelCounter","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY @15
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @16
  IF ~~ THEN DO ~TakePartyItem("CLCK26")
DestroyItem("CLCK26")
ActionOverride("psMel",GiveItemCreate("CLCK26",Myself,1,1,1))~ GOTO 0
END





IF ~Global("psFinalQuestToKillMelCounter", "GLOBAL", 2)~ THEN BEGIN melsEnd // from:
  SAY @20 = @21 =  @22
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: w0.0
  SAY @23
  ++ @24 GOTO 16
  ++ @25 GOTO 16
  ++ @26 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 3.2 3.1 3.0
  SAY @27 = @28 = @29 = @30 = @31 = @32
  IF ~~ THEN DO ~
FadeToColor([30.0],0)
MoveViewPoint([817.769],INSTANT)
ApplySpell(Player1,CLERIC_RESTORATION)
ApplySpell(Player1,WIZARD_BREACH)
ApplySpell(Player1,WIZARD_SPELL_STRIKE)
Wait(1)
CreateCreature("psSPTar1",[822.659],4)
CreateCreature("psSPTar2",[959.746],4)
CreateCreature("psSPTar3",[920.869],4)
CreateCreature("psSPTar4",[707.874],4)
CreateCreature("psSPTar5",[684.736],4)
Wait(1)
ActionOverride(Player1, JumpToPoint([678.883]))
ActionOverride(Player2, JumpToPoint([613.727]))
ActionOverride(Player3, JumpToPoint([761.629]))
ActionOverride(Player4, JumpToPoint([954.669]))
ActionOverride(Player5, JumpToPoint([1017.799]))
ActionOverride(Player6, JumpToPoint([869.906]))
SmallWait(1)
ActionOverride(Player1, FaceObject("psMel")
ActionOverride(Player2, FaceObject("psMel")
ActionOverride(Player3, FaceObject("psMel")
ActionOverride(Player4, FaceObject("psMel")
ActionOverride(Player5, FaceObject("psMel")
ActionOverride(Player6, FaceObject("psMel")
SetGlobal("psOpenPortalToggle", "AR0452", 1)
StartCutSceneMode()
StartCutScene("psCut25")~ EXIT
END


CHAIN
IF ~Global("psFinalQuestToKillMelCounter", "GLOBAL", 5)~ THEN ~psMelEnd~ melsToast
@50
== ~psLordAo~ @51 = @52 = @53 = @54
== ~psMelEnd~ @55 = @56 = @57 DO
~StartCutSceneMode()
StartCutScene("psCut40")~ EXIT