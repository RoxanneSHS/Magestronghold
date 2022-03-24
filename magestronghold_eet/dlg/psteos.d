BEGIN ~psTeos~

IF ~Global("psTeosInitialDialogToggle", "GLOBAL", 0)~ THEN BEGIN 0 // from:
  SAY @0
  ++ @1 GOTO 1
  ++ @2 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  ++ @4 GOTO 2
  ++ @5 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  ++ @7 GOTO 3
  ++ @8 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  ++ @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  ++ @12 GOTO 5
  ++ @13 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  ++ @15 GOTO 6
  ++ @16 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @17
  ++ @18 GOTO mustSign
  ++ @19 GOTO 8
END

IF ~~ THEN BEGIN mustSign
SAY @76
++ @77 GOTO 8
++ @78 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 4.1 2.1 1.1 0.1
  SAY @20 = @68
  IF ~~ THEN DO ~
SetGlobal("psTeosNotAccepted", "GLOBAL", 1)
SetGlobal("psTeosInitialDialogToggle", "GLOBAL", 1)
DestroySelf()~ EXIT
END

IF ~Global("psTeosNotAccepted", "GLOBAL", 1)~ THEN BEGIN secondChance
SAY @69
++ @70 GOTO secondChanceAccepted
++ @71 GOTO excuseMe
END

IF ~~ THEN BEGIN excuseMe
SAY @80
++ @81 DO ~Enemy()~ EXIT
++ @82 EXIT
END

IF ~~ THEN BEGIN secondChanceAccepted
SAY @72
IF ~~ THEN DO ~
ReallyForceSpell(myself, WIZARD_DIMENSION_DOOR)
Wait(1)
SetGlobal("psTeosNotAccepted", "GLOBAL", 2)
SetGlobal("psTeosInitialDialogToggle", "GLOBAL", 1)
ActionOverride(Player1,LeaveAreaLUA("AR0411","",[2836.2779],2))
ActionOverride(Player2,LeaveAreaLUA("AR0411","",[2907.2803],2))
ActionOverride(Player3,LeaveAreaLUA("AR0411","",[2995.2809],2))
ActionOverride(Player4,LeaveAreaLUA("AR0411","",[3065.2781],0))
ActionOverride(Player5,LeaveAreaLUA("AR0411","",[3113.2736],4))
ActionOverride(Player6,LeaveAreaLUA("AR0411","",[3116.2677],2))~ EXIT
END

IF ~Global("psTeosNotAccepted", "GLOBAL", 3)~ THEN BEGIN secondChanceAcceptedYay
SAY @83
++ @70 GOTO 2
++ @84 DO ~ReallyForceSpell(myself, WIZARD_DIMENSION_DOOR)
Wait(1)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @21  = @79
  IF ~~ THEN DO ~

CreateCreature("psApp01",[387.525],0)
CreateCreature("psApp01",[730.496],0)
CreateCreature("psApp01",[769.640],0)
CreateCreature("psApp01",[932.2126],0)
CreateCreature("psApp01",[915.2189],0)
CreateCreature("psApp01",[799.2234],0)
CreateCreature("psApp01",[973.2314],0)
CreateCreature("psTutor3",[1503.285],0)
CreateCreature("psTutor3",[756.2072],0)
CreateCreature("psApp01",[1469.329],0)
CreateCreature("psApp01",[1562.337],0)
CreateCreature("psApp01",[1651.291],0)
CreateCreature("psDummy1",[1321.1090],0)
CreateCreature("psDummy2",[1545.1101],0)
CreateCreature("psApp05",[1260.1402],0)
CreateCreature("psApp03",[1530.1389],0)
CreateCreature("psTutor2",[1639.1400],0)
CreateCreature("psApp01",[1613.2656],0)
CreateCreature("psApp01",[1548.2458],0)
CreateCreature("psTutor1",[386.572],0)
CreateCreature("psTutor1",[744.559],0)
CreateCreature("psTutor3",[2090.484],0)
CreateCreature("psApp01",[2005.456],0)
CreateCreature("psApp01",[2007.500],0)
CreateCreature("psApp01",[2058.539],0)
CreateCreature("psApp01",[2035.384],0)
CreateCreature("psTutor3",[2272.2206],0)
CreateCreature("psTutor4",[2497.2220],0)		//MM scroll request
CreateCreature("psDem01",[2222.1609],0)
CreateCreature("psDem01",[2602.1613],0)
CreateCreature("psWeil",[2413.1744],0)
CreateCreature("psApp02",[2236.1735],0)
CreateCreature("psApp02",[2577.1724],0)
CreateCreature("psApp04",[3141.2242],0)
CreateCreature("psApp04",[3302.2093],0)
CreateCreature("psExam",[2471.2160],0)
CreateCreature("psSlime",[1955.1027],0)
CreateCreature("psTutor6",[2059.1007],0)
CreateCreature("psMagIte",[2304.2888],0)
CreateCreature("psApp01",[2282.2831],0)
CreateCreature("psMeli",[2548.825],0)
CreateCreature("psTutor7",[2397.2149],0)
CreateCreature("psEnfor",[2648.2218],0)
CreateCreature("psInfer",[1040.2862],4)
CreateCreature("psVortel",[2228.2280],4)
CreateCreature("psBaat",[218.1384],4)
CreateCreature("psGlab",[584.1252],4)
CreateCreature("psGlab",[342.1311],4)
Deactivate("obsGol01")
GiveItemCreate("psBadge",Player1,1,0,0)
SetGlobalTimer("psTimeToAdventurerSpawn","GLOBAL",TWO_DAYS) 	//Starts timer for adventurer fight
SetGlobal("psTeosInitialDialogToggle", "GLOBAL", 1)
SetGlobal("psTeosNotAccepted", "GLOBAL", 4)
SetGlobal("CowledWarning", "GLOBAL", 10)		//Allows you to cast spells in the city
TriggerActivation("Sahaugin Trigger", FALSE)	//So fishies wont spawn in with Weil
JumpToPoint([2415.2258])~ EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN psMainQuest-0 // from:
  SAY @22
  IF ~~ THEN EXIT
END

IF ~!PartyHasItem("psArti")
Global("psTeosRetrieveArtifactQuest","GLOBAL",0)~ THEN BEGIN psMainQuest-1 // from:
  SAY @23
  ++ @24 GOTO psMainQuest-2
END

IF ~~ THEN BEGIN psMainQuest-2 // from: 1.0
  SAY @25
  ++ @26 GOTO psMainQuest-3
END

IF ~~ THEN BEGIN psMainQuest-3 // from: 2.0
  SAY @27
  ++ @28 GOTO psMainQuest-4
  ++ @29 GOTO psMainQuest-5
END

IF ~~ THEN BEGIN psMainQuest-4 // from: 3.0
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN psMainQuest-5 // from: 3.1
  SAY @31
  ++ @32 GOTO psMainQuest-6
END

IF ~~ THEN BEGIN psMainQuest-6 // from: 5.0
  SAY @33
  ++ @34 GOTO psMainQuest-7
END

IF ~~ THEN BEGIN psMainQuest-7 // from: 6.0
  SAY @35
  ++ @36 GOTO psMainQuest-8
END

IF ~~ THEN BEGIN psMainQuest-8 // from: 7.0
  SAY @37
  ++ @38 GOTO psMainQuest-9
END

IF ~~ THEN BEGIN psMainQuest-9 // from: 8.0
  SAY @39
  ++ @40 GOTO psMainQuest-10
END

IF ~~ THEN BEGIN psMainQuest-10 // from: 9.0
  SAY @41
  ++ @42 GOTO psMainQuest-11
  ++ @43 GOTO psMainQuest-12
  ++ @44 GOTO psMainQuest-13
END

IF ~~ THEN BEGIN psMainQuest-11 // from: 10.0
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN psMainQuest-12 // from: 10.1
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN psMainQuest-13 // from: 10.2
  SAY @47
  ++ @48 GOTO psMainQuest-14
END

IF ~~ THEN BEGIN psMainQuest-14 // from: 13.0
  SAY @49
  ++ @50 GOTO psMainQuest-15
END

IF ~~ THEN BEGIN psMainQuest-15 // from: 14.0
  SAY @51
  IF ~~ THEN DO ~SetGlobal("psTeosRetrieveArtifactQuest","GLOBAL",1)
~ EXIT
END

IF ~PartyHasItem("psArti")~ THEN BEGIN psMainQuest-16 // from:
  SAY @52
  ++ @53 GOTO psMainQuest-17
END

IF ~~ THEN BEGIN psMainQuest-17 // from: 16.0
  SAY @54
  ++ @55 GOTO psMainQuest-18
END

IF ~~ THEN BEGIN psMainQuest-18 // from: 17.0
  SAY @56
  ++ @57 GOTO psMainQuest-19
  ++ @97 GOTO psMainQuest-19
END

IF ~~ THEN BEGIN psMainQuest-19 // from: 18.0
  SAY @58
  IF ~~ THEN DO ~TakePartyItem("psArti")
DestroyItem("psArti")
AddexperienceParty(5000)
SetGlobal("psGiveToesArtifactCounter","GLOBAL",1)
StartCutScene("psCut20")~ EXIT
END



IF ~Global("psTeosCutSceneDialogToggle", "GLOBAL", 1)~ THEN BEGIN psTeosCut
  SAY @59
  IF ~~ THEN GOTO psTeosCut2
END

IF ~~ THEN BEGIN psTeosCut2
  SAY @60
  IF ~~ THEN GOTO psTeosCut3
END

IF ~~ THEN BEGIN psTeosCut3
  SAY @61
  IF ~~ THEN GOTO psTeosCut4
END

IF ~~ THEN BEGIN psTeosCut4
  SAY @62
  IF ~~ THEN DO ~StartCutScene("psCut01")
MoveToPointNoInterrupt([781.574])~ EXIT
END


IF ~or(2)
Global("psTeosRetrieveArtifactQuest","GLOBAL",1)
Global("psTeosRetrieveArtifactQuest","GLOBAL",2)
!PartyHasItem("psArti")~ THEN BEGIN explanationTwo
SAY @63
++ @64 GOTO explanationThreeForMorons
++ @65 GOTO teosIsAWuss
END

IF ~~ THEN BEGIN explanationThreeForMorons
SAY @66
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN teosIsAWuss
SAY @67
IF ~~ THEN EXIT
END

IF WEIGHT #-1~Global("PsTeosRabbit","ar0410",1)~THEN BEGIN rabbit1
SAY @85 /*A...a rabbit...magic of immense magnitude. A rabbit out of nowhere - by Mystra!*/
IF~~THEN REPLY @86 /*Teos?*/ GOTO rabbit2
IF~~THEN REPLY @87 /*I have the feeling I've seen this trick before...it did not require artifacts or Mystra or such last time around.*/ GOTO rabbit2
END

IF~~THEN BEGIN rabbit2
SAY @88 /*This is...a rabbit. A pretty ordinary one, as it seems. Nothing magical or powerful about it. This must have been a...fraud?*/
IF~~THEN REPLY @89 /*Obviously. And the last one you and your cowls play on me. It's over, Teos!*/ GOTO rabbit3
END

IF~~THEN BEGIN rabbit3
SAY @90 /*What do you mean?*/
IF~~THEN REPLY @91 /*I mean that it's over, Teos, you and your masters have overdone it. Leave while you still can or I'll show you MY magic!*/ GOTO rabbit4
IF~~THEN REPLY @92 /*I'm fed up with you and your games, Teos. This sphere is now rightfully mine, you clown. Get out and never come back, this is my last word!*/ GOTO rabbit4
IF~~THEN REPLY @93 /*Enough is enough. This is your end, Teos, no magic will now save you from my wrath!*/ GOTO rabbit4
END

IF~~THEN BEGIN rabbit4
SAY @94 /*Huh, someone's angry, aren't we...we are...take that down...please...eh...*/
=@95 /*Magic, Teos, think of your magic.*/
=@96 /*I leave you to your sphere, <CHARNAME>, it's all yours, yes, it is. I hold my word. Eh, peace?*/
IF~~THEN DO~SetGlobal("PsTeosRabbit","ar0410",2) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
END

ADD_TRANS_ACTION MGTeos01 BEGIN 43 END BEGIN 0  END
 ~SetGlobalTimer("TeolMessenger","GLOBAL",SEVEN_DAYS)~