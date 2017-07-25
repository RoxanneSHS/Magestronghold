BEGIN ~psDego~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.0
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 8.0 6.1 6.0
  SAY @15
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(1)
ForceSpell(Myself,FLASHY_1)
CreateVisualEffect("SPUSEANY",[2990.2620])
CreateVisualEffect("SPUSEANY",[2838.2691])
CreateVisualEffect("SPUSEANY",[2927.2780])
CreateVisualEffect("SPUSEANY",[3071.2698])
Wait(1)
CreateCreature("psHelm1",[2990.2620],14)
CreateCreature("psHelm1",[2838.2691],14)
CreateCreature("psHelm1",[2927.2780],14)
CreateCreature("psHelm1",[3071.2698],14)
SmallWait(5)
ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
ApplySpell(Myself,WIZARD_GLOBE_OF_INVULNERABILITY)
ApplySpell(Myself,WIZARD_SPELL_TURNING)
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 7
END
