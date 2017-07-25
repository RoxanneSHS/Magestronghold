BEGIN ~psApAtt1~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([30.0],0)
Wait(2)
MoveViewPoint([3048.2739],INSTANT)
FadeFromColor([30.0],0)
ActionOverride(Player1,JumpToPoint([2837.2595]))
Wait(1)
StartCutScene("psCut29")
Wait(2)
DestroySelf()~ EXIT
END
