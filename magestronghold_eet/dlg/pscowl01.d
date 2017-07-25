BEGIN ~psCowl01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN proffIntro
SAY @0
++ @1 GOTO explainGateway
++ @2 GOTO sorryHaveToGo
END

IF ~~ THEN BEGIN explainGateway
SAY @4
++ @5 GOTO openGateway
++ @6 GOTO comeBackLater
END

IF ~~ THEN BEGIN sorryHaveToGo
SAY @3
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN openGateway
SAY @7
IF ~~ THEN DO ~SetGlobal("psProfsPortalCounter", "GLOBAL", 1)
StartCutSceneMode()
StartCutScene("psCutPor")~ EXIT
END

IF ~~ THEN BEGIN comeBackLater
SAY @8
IF ~~ THEN EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN returned
SAY @9
++ @10 GOTO questions
++ @11 DO ~SetGlobal("psProfsPortalCounter", "GLOBAL", 1)
StartCutSceneMode()
StartCutScene("psCutPor")~ EXIT
END

IF ~~ THEN BEGIN questions
SAY @13
++ @14 GOTO explainGateway
++ @15 GOTO sorryHaveToGo
++ @16 GOTO ofCourseNot
END

IF ~~ THEN BEGIN ofCourseNot
SAY @17
++ @18 EXIT
END