BEGIN ~PSADATT1~

IF ~Global("psAppsDead","GLOBAL",0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~StartCutScene("psCut30")
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN DO ~StartCutScene("psCut30")
~ EXIT
END

IF ~Global("psAppsDead","GLOBAL",1)
~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN DO ~Enemy()
ActionOverride("psAdv01",Enemy())
ActionOverride("psAdv02",Enemy())
ActionOverride("psAdv03",Enemy())
ActionOverride("psAdv04",Enemy())
ActionOverride("psAdv05",Enemy())
ReallyForceSpell(Myself,WIZARD_STONE_SKIN)
ActionOverride("psAdv02",ReallyForceSpell(Myself,WIZARD_BLUR))
ActionOverride("psAdv02",ReallyForceSpell(Myself,WIZARD_MIRROR_IMAGE))
ActionOverride("psAdv03",ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("psAdv04",ReallyForceSpell(Myself,WIZARD_IMPROVED_HASTE))
~ EXIT
END
