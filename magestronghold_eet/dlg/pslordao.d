BEGIN ~psLordAo~ 

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 2.0
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN GOTO 6
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
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @14
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @15
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(1)
CreateVisualEffectObject("SPGRWHRL",Myself)
Wait(1)
CreateVisualEffectObject("SPGFLSH1",Myself)
SmallWait(1)
AddXPObject(Player1,30000)
AddXPObject(Player2,30000)
AddXPObject(Player3,30000)
AddXPObject(Player4,30000)
AddXPObject(Player5,30000)
AddXPObject(Player6,30000)
EndCutSceneMode()
DestroySelf()~ EXIT
END


IF ~Global("psFinalQuestToKillMelCounter", "GLOBAL", 6)~ THEN BEGIN end
SAY @16
IF ~~ THEN DO ~
Wait(1)
MoveViewObject(Player1, INSTANT)
DestroySelf()~ EXIT
END