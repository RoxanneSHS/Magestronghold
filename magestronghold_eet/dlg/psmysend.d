BEGIN ~psMysEnd~

IF ~Global("psFinalQuestToKillMelCounter", "GLOBAL", 4)~ THEN BEGIN 1
  SAY @0 = @1
  IF ~~ THEN DO ~
StartCutSceneMode()
Wait(1)
ForceSpell(Myself,CLERIC_HEAL)
Wait(1)
CreateVisualEffect("SPBASEWT",[736.1328])
CreateVisualEffect("SPBASEWT",[748.1218])
Wait(1)
CreateCreature("psElmin",[748.1218],0)
CreateCreature("psKhel",[736.1328],0)
Wait(2)
ActionOverride("psKhel",ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("psElmin",ForceSpell(Myself,DRYAD_TELEPORT))
Wait(1)
ActionOverride("psElmin",DestroySelf())
ActionOverride("psKhel",DestroySelf())
ForceSpell(Myself,HOLY_LIGHT_FROM_ABOVE)
ReputationInc(4)
GiveItemCreate("psSPL08",Player1,1,0,0)
ApplySpellRES("SPPSMYS",Player1)
ApplySpellRES("SPPSMYS",Player2)
ApplySpellRES("SPPSMYS",Player3)
ApplySpellRES("SPPSMYS",Player4)
ApplySpellRES("SPPSMYS",Player5)
ApplySpellRES("SPPSMYS",Player6)
Wait(2)
SetGlobal("psFinalQuestToKillMelCounter","GLOBAL",5)
EndCutSceneMode()
DestroySelf()~ EXIT
END
