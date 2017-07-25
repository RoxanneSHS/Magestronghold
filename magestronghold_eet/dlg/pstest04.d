BEGIN ~psTest04~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~StartCutSceneMode()
AddexperienceParty(10000)
ActionOverride(Player1,JumpToPoint([2801.2599]))
Wait(2)
CreateVisualEffectObject("SPGREAXI",Myself)
Wait(2)
CreateVisualEffectObject("SPNPOISI",Myself)
Wait(2)
ForceSpell(Myself,FLASHY_2)
Wait(2)
ForceSpell(Myself,WIZARD_CACOFIEND)
EndCutSceneMode()
Kill(Myself)~ EXIT
END
