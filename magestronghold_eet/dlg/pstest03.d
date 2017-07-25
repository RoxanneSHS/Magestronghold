BEGIN ~psTest03~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~StartCutSceneMode()
AddexperienceParty(10000)
ActionOverride(Player1,JumpToPoint([2801.2599]))
Wait(1)
CreateVisualEffectObject("SPFLSRIN",Myself)
Wait(2)
CreateVisualEffectObject("SPCALLLI",Myself)
Wait(2)
ForceSpell(Myself,FLASHY_1)
Wait(1)
ForceSpellRES("Sppsap1",Myself)
Wait(1)
EndCutSceneMode()
Kill(Myself)
~ EXIT
END
