BEGIN ~psBelle~

IF ~Global("psRemoveBelleCounter", "GLOBAL", 6)~ THEN BEGIN favor
SAY @92 = @93
IF ~~ THEN EXIT
END

IF ~Global("psTeosDisintegratedToggle", "GLOBAL", 1)~ THEN BEGIN hahaHesDead
SAY @90 = @91
IF ~~ THEN DO ~ActionOverride("psBelle", ForceSpell(Myself, DRYAD_TELEPORT))
SetGlobal("psTeosDisintegratedToggle", "GLOBAL", 0)
Wait(2)
DestroySelf()~ EXIT
END

IF ~Global("psTeosEatenCounter", "GLOBAL", 1)~ THEN BEGIN TeosEatenWrapup
SAY @79
IF ~~ THEN DO ~SetGlobal("psTeosEatenCounter", "GLOBAL", 2)~ EXIT
END

IF ~Global("psTeosEatenWimpedOutCounter", "GLOBAL", 1)~ THEN BEGIN TeosEatenWimp
SAY @80
IF ~~ THEN DO ~SetGlobal("psTeosEatenWimpedOutCounter", "GLOBAL", 2)~ EXIT
END

IF ~Global("psTeosPetCounter", "GLOBAL", 1)~ THEN BEGIN TeosPetWrapup
SAY @81
IF ~~ THEN DO ~SetGlobal("psTeosPetCounter", "GLOBAL", 2)~ EXIT
END

IF ~Global("psTeosEatenCounter", "GLOBAL", 2)~ THEN BEGIN TeosEatenAftermath
SAY @82
++ @83 GOTO TeosEatenAftermath-2
END

IF ~~ THEN BEGIN TeosEatenAftermath-2
SAY @84
IF ~~ THEN EXIT
END

IF ~Global("psTeosEatenWimpedOutCounter", "GLOBAL", 2)~ THEN BEGIN TeosEatenWimp-2
SAY @85
IF ~~ THEN EXIT
END

IF ~Global("psTeosPetCounter", "GLOBAL", 2)~ THEN BEGIN TeosPetWrapup-2
SAY @86
++ @87 GOTO TeosPetWrapup-3
END

IF ~~ THEN BEGIN TeosPetWrapup-3
SAY @88 = @89
IF ~~ THEN EXIT
END

IF ~Global("psRetrievedKeyTalkedToMysToggle","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  ++ @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @4
  ++ @5 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7 = @8
  IF ~~ THEN DO ~
SetGlobal("psRetrievedKeyTalkedToMysToggle","GLOBAL",2)		//Disallows three optional encounters
ForceSpell(Myself,DRYAD_TELEPORT)
Wait(2)
JumpToPoint([3563.2234])~ EXIT
END

IF ~Global("psRetrievedKeyTalkedToMysToggle","GLOBAL",2)
Global("psToldBelleTheTruthToggle", "GLOBAL", 0)~ THEN BEGIN 6
SAY @9
++ @10 GOTO 7
END

IF ~~ THEN BEGIN 7
SAY @11
++ @12 GOTO 8
++ @28 EXIT
END

IF ~~ THEN BEGIN 8
SAY @13
++ @14 GOTO 9
END

IF ~~ THEN BEGIN 9
SAY @15
++ @16 GOTO 10
END

IF ~~ THEN BEGIN 10
SAY @17
++ @18 GOTO 11
END

IF ~~ THEN BEGIN 11
SAY @19
++ @20 GOTO 12
END

IF ~~ THEN BEGIN 12
SAY @21
++ @22 GOTO 13
END

IF ~~ THEN BEGIN 13
SAY @23
++ @24 GOTO 14
++ @25 GOTO 15
END

IF ~~ THEN BEGIN 14
SAY @26
IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
SAY @27
IF ~~ THEN DO ~SetGlobal("psToldBelleTheTruthToggle", "GLOBAL", 1)~ EXIT
END

IF ~PartyHasItem("psTChick")~ THEN BEGIN endOfTeos
SAY @29
++ @30 DO ~CreateCreatureObject("psTeosCh", Player1, 0, 0, 0)
TakePartyItem("psTChick")
DestroyItem("psTChick")
StartDialogNoSet("psTeos")~ GOTO endOfTeos-Stupid
++ @62 EXIT
END

IF ~~ THEN BEGIN endOfTeos-TeosEaten
SAY @39
++ @63 DO ~
SetGlobal("psTeosEatenCounter", "GLOBAL", 1)
FadeToColor([20.0], 0)
Wait(3)
ActionOverride(Player1, ReallyForceSpell(Myself, WISH_HEAL_PARTY))
FadeFromColor([20.0], 0)
ActionOverride("psTeosCh", DestroySelf())~ EXIT
END

IF ~Global("psRemoveBelleCounter", "GLOBAL", 1)~ THEN BEGIN dealWithBelle
SAY @47
++ @48 GOTO dealWithBelle2
++ @62 EXIT
END

IF ~~ THEN BEGIN dealWithBelle2
SAY @49
++ @50 GOTO dealWithBelle3
END

IF ~~ THEN BEGIN dealWithBelle3
SAY @51
++ @52 GOTO dealWithBelle-ForceOut
IF ~Gender(Player1, MALE)~ THEN REPLY @53 GOTO dealWithBelle-ReconcileMale
IF ~Gender(Player1, FEMALE)~ THEN REPLY @53 GOTO dealWithBelle-ReconcileFemale
++ @54 GOTO dealWithBelle-Kill
END

IF ~~ THEN BEGIN dealWithBelle-ForceOut
SAY @56
IF ~Gender(Player1, MALE)~ THEN REPLY @57 GOTO dealWithBelle-ForceOutMale
IF ~Gender(Player1, FEMALE)~ THEN REPLY @57 GOTO dealWithBelle-ForceOutFemale
END

IF ~~ THEN BEGIN dealWithBelle-ForceOutMale
SAY @58
IF ~~ THEN DO ~
SetGlobal("psBelleGoneCounter", "GLOBAL", 1)
ForceSpell(Myself, DRYAD_TELEPORT)
Wait(2)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN dealWithBelle-ForceOutFemale
SAY @59
IF ~~ THEN DO ~
SetGlobal("psBelleGoneCounter", "GLOBAL", 1)
ForceSpell(Myself, DRYAD_TELEPORT)
Wait(2)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN dealWithBelle-ReconcileMale
SAY @60
++ @64 GOTO dealWithBelle-Reconcile2
++ @65 DO ~ForceSpell(Player1, WIZARD_MAGIC_MISSILE)
DisplayStringHead(Myself, @66)~ EXIT
END

IF ~~ THEN BEGIN dealWithBelle-ReconcileFemale
SAY @61
++ @67 GOTO dealWithBelle-Reconcile2
END

IF ~~ THEN BEGIN dealWithBelle-Reconcile2
SAY @68
++ @69 GOTO dealWithBelle-Reconcile3
END

IF ~~ THEN BEGIN dealWithBelle-Reconcile3
SAY @70
++ @71 GOTO dealWithBelle-Reconcile4
END

IF ~~ THEN BEGIN dealWithBelle-Reconcile4
SAY @72
++ @73 GOTO dealWithBelle-Reconcile5
END

IF ~~ THEN BEGIN dealWithBelle-Reconcile5
SAY @74
++ @75 GOTO dealWithBelle-Reconcile6
END

IF ~~ THEN BEGIN dealWithBelle-Reconcile6
SAY @76
++ @77 DO ~SetGlobal("psRemoveBelleCounter", "GLOBAL", 4)~ EXIT
END

IF ~~ THEN BEGIN dealWithBelle-Kill
SAY @55
IF ~~ THEN DO ~SetGlobal("psRemoveBelleCounter", "GLOBAL", 2)
Enemy()~ EXIT
END


IF ~Global("psRetrievedKeyTalkedToMysToggle","GLOBAL",2)
Global("psToldBelleTheTruthToggle", "GLOBAL", 1)~ THEN BEGIN nothing
SAY @78
IF ~~ THEN EXIT
END


CHAIN
IF ~~ THEN ~psBelle~ endOfTeos-Stupid @31
== ~psTeosEn~ @32 == ~psBelle~ @33 == ~psTeosEn~ @34 == ~psBelle~ @35
END
++ @36 GOTO endOfTeos-TeosEaten
++ @37 GOTO endOfTeos-Coward
++ @38 DO ~SetGlobal("psTeosPetCounter", "GLOBAL", 1)~ GOTO endOfTeos-TeosPet

CHAIN
IF ~~ THEN ~psBelle~ endOfTeos-Coward @40
== ~psTeosEn~ @41 DO ~SetGlobal("psTeosEatenWimpedOutCounter", "GLOBAL", 1)
ActionOverride("psTeosCh", DestroySelf())~ EXIT

CHAIN
IF ~~ THEN ~psBelle~ endOfTeos-TeosPet @42
== ~psTeosEn~ @43
END
++ @44 EXTERN psTeosEn endOfTeos-TeosPet2