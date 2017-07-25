BEGIN ~psThal~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN DO ~GiveItemCreate("Psqevis",Player1,1,0,0)
GiveItemCreate("Psqkcf",Player1,1,0,0)
SetGlobal("psMelicampQuestCounterr","GLOBAL",0)
SetGlobal("psMelicampQuestCounter","GLOBAL",0)
SetGlobal("psMelicampQuestCounterp","GLOBAL",1)
AddexperienceParty(50000)
ActionOverride("psMeli",ReallyForceSpell(Myself,DRYAD_TELEPORT))
ForceSpell(Myself,DRYAD_TELEPORT)
Wait(1)
ActionOverride("psMeli",DestroySelf())
DestroySelf()~ EXIT
END
