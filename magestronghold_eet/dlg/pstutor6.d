BEGIN ~psTutor6~

IF ~Global("psCureSlimeQuestCounter","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN DO ~SetGlobal("psCureSlimeQuestCounter","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @12
  IF ~~ THEN EXIT
END

IF ~Global("psCureSlimeQuestCounter","GLOBAL",1)
or(2)
	!PartyHasItem("AMUL24")
	!PartyHasItem("SCRL5G")~
THEN BEGIN notThereYet
SAY @18
IF ~~ THEN REPLY @19 GOTO noItems
END

IF ~~ THEN BEGIN noItems
SAY @20
IF ~~ THEN EXIT
END

IF ~Global("psCureSlimeQuestCounter","GLOBAL",1)
PartyHasItem("AMUL24")
PartyHasItem("SCRL5G")~ THEN BEGIN 7 // from:
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16
  IF ~~ THEN DO ~SetGlobal("psCureSlimeQuestCounter","GLOBAL",2)
TakePartyItem("SCRL5G")
TakePartyItem("AMUL24")
DestroyItem("SCRL5G")
DestroyItem("AMUL24")
GiveGoldForce(8000)
GiveItemCreate("sppsmoh",Player1,1,0,0)
GiveItemCreate("sppstpa",Player1,1,0,0)
GiveItemCreate("sppsoif",Player1,1,0,0)
StartCutSceneMode()
Wait(1)
ForceSpell("psSlime",FLASHY_1)
ForceSpell("psSlime",WIZARD_REMOVE_CURSE)
SmallWait(2)
ActionOverride("psSlime",Polymorph(MAGE_MALE_HUMAN))
SmallWait(5)
ActionOverride("psSlime",DisplayStringHead(Myself,"167"))
Wait(1)
ActionOverride("psSlime",EscapeArea())
ForceSpell(Myself,WIZARD_DIMENSION_DOOR)
SmallWait(5)
AddexperienceParty(2000)
EndCutSceneMode()
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @17
  IF ~~ THEN DO ~SetGlobal("psCureSlimeQuestCounter","GLOBAL",3)
EscapeArea()~ EXIT
END
