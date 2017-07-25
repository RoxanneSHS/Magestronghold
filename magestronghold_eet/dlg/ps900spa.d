BEGIN ~PS900Spa~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN ahhh
SAY @0
++ @1 GOTO ahhh2
END

IF ~~ THEN BEGIN ahhh2
SAY @2
++ @3 GOTO ahhh3
END

IF ~~ THEN BEGIN ahhh3
SAY @4
IF ~~ THEN DO ~
FadeToColor([20.0],0)
StartCutSceneMode()
StartCutScene("psCut44")
EscapeArea()~ EXIT
END