BEGIN ~psTeosEn~

IF ~Global("psBelleGoneCounter", "GLOBAL", 1)~ THEN BEGIN belleIsDead
SAY @32
++ @66 GOTO thankyouthankyou-free
END

IF ~Global("psRemoveBelleCounter", "GLOBAL", 5)~ THEN BEGIN thankyouthankyou
SAY @60
IF ~Global("psRemoveBelleCounter", "GLOBAL", 5)~ THEN REPLY @61 GOTO thankyouthankyou-scared
END

IF ~~ THEN BEGIN thankyouthankyou-scared
SAY @62 = @63 = @64
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN thankyouthankyou-free
SAY @65
IF ~~ THEN DO ~SetGlobal("psBelleGoneCounter", "GLOBAL", 2)
ActionOverride("psTeos", ForceSpell(Myself, DRYAD_TELEPORT))
Wait(2)
DestroySelf()~
EXIT
END

IF ~Global("psTeosPetCounter", "GLOBAL", 2)~ THEN BEGIN iHateYou
SAY @54
++ @55 GOTO iHateYou-2
END

IF ~~ THEN BEGIN iHateYou-2
SAY @56
++ @57 GOTO iHateYou-3
END

IF ~~ THEN BEGIN iHateYou-3
SAY @58
++ @59 EXIT
END

IF ~Global("psTeosComesBackCounter", "GLOBAL", 1)~ THEN BEGIN imBack
SAY @0 = @1
++ @2 GOTO imBack2
END

IF ~~ THEN BEGIN imBack2
SAY @3
++ @4 GOTO imBack3
END

IF ~~ THEN BEGIN imBack3
SAY @5
++ @6 GOTO imBack4
END

IF ~~ THEN BEGIN imBack4
SAY @7
++ @8 GOTO imBack5
END

IF ~~ THEN BEGIN imBack5
SAY @9 = @10 = @11
++ @12 GOTO imBack6
END

IF ~~ THEN BEGIN imBack6
SAY @13 = @14
++ @15 GOTO imBack7
END

IF ~~ THEN BEGIN imBack7
SAY @16
++ @17 GOTO imBack8
END

IF ~~ THEN BEGIN imBack8
SAY @18 = @19 = @20
++ @21 GOTO imBack9
END

IF ~~ THEN BEGIN imBack9
SAY @22 = @23 = @24
++ @25 DO ~
SetGlobal("psTeosComesBackCounter", "GLOBAL", 2)
StartCutSceneMode()
StartCutScene("psCutTC")~ EXIT
++ @26 GOTO imBack11
++ @27 GOTO goAwayTeos
END

IF ~~ THEN BEGIN goAwayTeos
SAY @28 = @29
IF ~~ THEN DO ~
SetGlobal("psTurnedDownTeosToggle", "GLOBAL", 1)
SetGlobal("psTeosComesBackCounter", "GLOBAL", 2)~ EXIT
END

IF ~~ THEN BEGIN imBack11
SAY @30
IF ~~ THEN DO ~
SetGlobal("psTeosComesBackCounter", "GLOBAL", 2)
SetGlobal("psRemoveBelleCounter", "GLOBAL", 1)~ EXIT
END

IF ~Global("psTurnedDownTeosToggle", "GLOBAL", 1)~ THEN BEGIN reconsider
SAY @31
++ @25 DO ~
SetGlobal("psTeosComesBackCounter", "GLOBAL", 2)
StartCutSceneMode()
StartCutScene("psCutTC")~ EXIT
++ @26 GOTO imBack11
++ @27 GOTO goAwayTeos
END


IF ~Global("psRemoveBelleCounter", "GLOBAL", 4)~ THEN BEGIN psReconcile
SAY @32
++ @33 GOTO psReconcile2
END

IF ~~ THEN BEGIN psReconcile2
SAY @34
++ @35 GOTO psReconcile3
END

IF ~~ THEN BEGIN psReconcile3
SAY @36
++ @37 DO ~
SetGlobal("psTeosTriesToRecCounter", "GLOBAL", 1)
SetGlobal("psRemoveBelleCounter", "GLOBAL", 5 )
SetGlobal("psBelleGoneCounter", "GLOBAL", 10)
SetGlobal("psRemoveBelleCounter", "GLOBAL", 10)

StartCutSceneMode()
StartCutScene("psCutTB")~ EXIT
END

IF ~~ THEN BEGIN psReconcile-Strong
SAY @49
IF ~~ THEN DO ~SetGlobal("psRemoveBelleCounter", "GLOBAL", 6)
ActionOverride("psBelle", ForceSpell(Myself, DRYAD_TELEPORT))
Wait(2)
ActionOverride("psBelle", DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN psReconcile-Hmph
SAY @50
IF ~~ THEN DO ~SetGlobal("psRemoveBelleCounter", "GLOBAL", 5)
ActionOverride("psBelle", ForceSpell(Myself, DRYAD_TELEPORT))
Wait(2)
ActionOverride("psBelle", DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN psReconcile-Miserable
SAY @47
IF ~~ THEN DO ~SetGlobal("psRemoveBelleCounter", "GLOBAL", 5)
ActionOverride("psBelle", ForceSpell(Myself, DRYAD_TELEPORT))
Wait(2)
ActionOverride("psBelle", DestroySelf())~ EXIT
END


CHAIN
IF ~Global("psTeosTriesToRecCounter", "GLOBAL", 1)~ THEN ~psTeosEn~ psReconcile4 @38 = @39
== ~psBelle~ @40
== ~psTeosEn~ @41
== ~psBelle~ @42
== ~psTeosEn~ @43
END
++ @44 DO ~SetGlobal("psTeosDisintegratedToggle", "GLOBAL", 1)
StartCutSceneMode()
StartCutScene("psCutTBD")~ EXIT
++ @45 GOTO psReconcile-Miserable
IF ~Gender(Player1, MALE)~ THEN REPLY @46 GOTO psReconcile-Strong
IF ~Gender(Player1, FEMALE)~ THEN REPLY @46 GOTO psReconcile-Hmph

CHAIN
IF ~~ THEN ~psTeosEn~ endOfTeos-TeosPet2 @53
== ~psBelle~ @52 DO ~SetGlobal("psTeosPetCounter", "GLOBAL", 1)
ActionOverride("psTeosCh", DestroySelf())~ EXIT