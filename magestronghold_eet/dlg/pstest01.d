BEGIN ~psTest01~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~StartCutSceneMode()
ActionOverride(Player1,JumpToPoint([2801.2599]))
Wait(2)
CreateVisualEffectObject("ICMAGICH",Myself)
Wait(2)
ForceSpell(Myself,FLASHY_1)
Wait(2)
ForceSpellRES("Sppsap2",Myself)
AddexperienceParty(10000)
Kill(Myself)
EndCutSceneMode()~ EXIT
END
