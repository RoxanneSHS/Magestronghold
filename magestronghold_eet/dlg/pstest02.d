BEGIN ~psTest02~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~StartCutSceneMode()
AddexperienceParty(10000)
ActionOverride(Player1,JumpToPoint([2801.2599]))
Wait(2)
CreateVisualEffectObject("SPCALLLI",Myself)
Wait(2)
CreateVisualEffectObject("SPFLESHS",Myself)
Wait(2)
ForceSpell(Myself,FLASHY_3)
Wait(2)
ForceSpell(Myself,WIZARD_IMPRISONMENT)
Kill(Myself)
EndCutSceneMode()~ EXIT
END
