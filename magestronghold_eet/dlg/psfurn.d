BEGIN ~psFurn~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~GlobalGT("psFurnaceTestItemsDoneCounter","GLOBAL",1)~ THEN REPLY @2 GOTO 1
  IF ~Global("psFurnaceTestItemsDoneCounter","GLOBAL",1)~ THEN REPLY @3 DO ~SetGlobal("psFurnaceTestItemsDoneCounter","GLOBAL",2)~ GOTO 118
  IF ~Global("psFurnaceTestItemsDoneCounter","GLOBAL",0)~ THEN REPLY @4 DO ~SetGlobal("psFurnaceTestItemsDoneCounter","GLOBAL",1)~ GOTO 119
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~PartyHasItem("SW1H04")~ THEN REPLY @6 GOTO 2
  IF ~PartyHasItem("SPER01")~ THEN REPLY @7 GOTO 25
  IF ~PartyHasItem("RING10")~ THEN REPLY @8 GOTO furn02-start
  IF ~PartyHasItem("AMUL10")~ THEN REPLY @9 GOTO furn03-start
  IF ~PartyHasItem("STAF01")~ THEN REPLY @10 GOTO furn04-start
  IF ~PartyHasItem("STAF01")~ THEN REPLY @11 GOTO furn05-start
  IF ~PartyHasItem("SHLD05")~ THEN REPLY @12 GOTO furn06-start
  IF ~PartyHasItem("LEAT01")~ THEN REPLY @13 GOTO furn07-start
  IF ~PartyHasItem("PLAT04")~ THEN REPLY @14 GOTO 92
  IF ~PartyHasItem("LEAT04")~ THEN REPLY @16 GOTO 102
  IF ~PartyHasItem("AX1H01")~ THEN REPLY @17 GOTO 109
  IF ~~ THEN REPLY @15 GOTO 101
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @18
  IF ~LevelLT(Player1,9)~ THEN REPLY @79 EXIT
  IF ~LevelGT(Player1,9)~ THEN REPLY @19 GOTO 3
  IF ~LevelGT(Player1,12)~ THEN REPLY @21 GOTO 18
  IF ~LevelGT(Player1,15)~ THEN REPLY @20 DO ~SetGlobal("psFurnaceTestItemsDoneCounter","GLOBAL",3)~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @22
  IF ~LevelLT(Player1,9)~ THEN REPLY @79 EXIT
  IF ~LevelGT(Player1,9)~ THEN REPLY @23 GOTO 4
  IF ~LevelGT(Player1,10)~ THEN REPLY @24 GOTO 7
  IF ~LevelGT(Player1,12)~ THEN REPLY @25 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 5
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade01",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 116.1 114.1 112.1 110.1 107.1 105.1 103.1 99.1 97.1 95.1 93.1 30.1 28.1 26.1 23.1 21.1 19.1 16.1 14.1 12.1 9.1 7.1 4.1
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 8
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 10
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade03",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY @22
  IF ~LevelLT(Player1,15)~ THEN REPLY @79 EXIT
  IF ~LevelGT(Player1,15)~ THEN REPLY @31 GOTO 12
  IF ~LevelGT(Player1,18)~ THEN REPLY @24 GOTO 14
  IF ~LevelGT(Player1,21)~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 13
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade07",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade08",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade09",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2
  SAY @22
  IF ~LevelLT(Player1,12)~ THEN REPLY @79 EXIT
  IF ~LevelGT(Player1,12)~ THEN REPLY @31 GOTO 19
  IF ~LevelGT(Player1,15)~ THEN REPLY @24 GOTO 21
  IF ~LevelGT(Player1,18)~ THEN REPLY @25 GOTO 23
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade04",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade05",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 24
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SW1H04") DestroyItem("SW1H04")
GiveItemCreate("psMade06",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.1
  SAY @32
  IF ~LevelLT(Player1,9)~ THEN REPLY @79 EXIT  
  IF ~LevelGT(Player1,9)~ THEN REPLY @19 GOTO 26
  IF ~LevelGT(Player1,12)~ THEN REPLY @21 GOTO 28
  IF ~LevelGT(Player1,15)~ THEN REPLY @20 GOTO 30
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 27
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SPER01") DestroyItem("SPER01")
GiveItemCreate("SPER02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 29
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SPER01") DestroyItem("SPER01")
GiveItemCreate("SPER05",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 31
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SPER01") DestroyItem("SPER01")
GiveItemCreate("SPER06",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 91 // from:
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN 92 // from: 1.8
  SAY @18
  IF ~~ THEN REPLY @35 GOTO 93
  IF ~LevelLT(Player1,12)~ THEN REPLY @79 EXIT  
  IF ~LevelGT(Player1,12)~ THEN REPLY @36 GOTO 95
  IF ~LevelGT(Player1,15)~ THEN REPLY @37 GOTO 97
  IF ~LevelGT(Player1,18)~ THEN REPLY @38 GOTO 99
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 94
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("PLAT04") DestroyItem("PLAT04")
GiveItemCreate("PLAT09",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 92.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 96
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("PLAT04") DestroyItem("PLAT04")
GiveItemCreate("psMade27",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 92.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 98
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("PLAT04") DestroyItem("PLAT04")
GiveItemCreate("psMade28",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 92.3
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 100
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("PLAT04") DestroyItem("PLAT04")
GiveItemCreate("psMade29",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 1.9
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 102 // from: 1.10
  SAY @18
  IF ~~ THEN REPLY @40 GOTO 103
  IF ~LevelGT(Player1,15)~ THEN REPLY @41 GOTO 105
  IF ~LevelGT(Player1,18)~ THEN REPLY @42 GOTO 107
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 104
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("LEAT01") DestroyItem("LEAT01")
GiveItemCreate("LEAT12",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 102.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 106
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("LEAT04") DestroyItem("LEAT04")
GiveItemCreate("psMade30",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 107 // from: 102.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 108
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("LEAT01") DestroyItem("LEAT01")
GiveItemCreate("psMade31",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 1.11
  SAY @18
  IF ~LevelLT(Player1,9)~ THEN REPLY @79 EXIT
  IF ~LevelGT(Player1,9)~ THEN REPLY @19 GOTO 110
  IF ~LevelGT(Player1,12)~ THEN REPLY @21 GOTO 112
  IF ~LevelGT(Player1,15)~ THEN REPLY @20 GOTO 114
  IF ~LevelGT(Player1,18)~ THEN REPLY @43 GOTO 116
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 111
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AX1H01") DestroyItem("AX1H01")
GiveItemCreate("AX1H02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 113
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AX1H01") DestroyItem("AX1H01")
GiveItemCreate("AX1H03",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 109.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 115
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AX1H01") DestroyItem("AX1H01")
GiveItemCreate("psMade32",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 116 // from: 109.3
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 117
  IF ~~ THEN REPLY @28 GOTO 6
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AX1H01") DestroyItem("AX1H01")
GiveItemCreate("psMade33",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 118 // from: 0.2
  SAY @44
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
ActionOverride(Player1,ForceSpell(Myself,FLASHY_2))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
CreateVisualEffectObject("SPCRTWPN",Player1)
ActionOverride(Player1,ApplySpell(Myself,CHICKEN_CHANGE))
Wait(2)
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 119 // from: 0.3
  SAY @45
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
ActionOverride(Player1,ApplySpell(Myself,FIFTY_PERCENT_DAMAGE))
ScreenShake([20.20],10)
Wait(5)
CreateVisualEffectObject("SPCRTWPN",Player1)
EndCutSceneMode()~ EXIT
END






//Weapon

IF ~~ THEN BEGIN furn02-start // from:
  SAY @46
  IF ~LevelLT(Player1,12)~ THEN REPLY @79 EXIT  
  IF ~LevelGT(Player1,12)~ THEN REPLY @47 GOTO 1
  IF ~LevelGT(Player1,15)~ THEN REPLY @48 GOTO 4
  IF ~LevelGT(Player1,18)~ THEN REPLY @49 GOTO 6
  IF ~~ THEN REPLY @50 GOTO 8
  IF ~LevelGT(Player1,20)~ THEN REPLY @51 GOTO 10
END

IF ~~ THEN BEGIN furn02-1 // from: 0.0
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn02-2
  IF ~~ THEN REPLY @54 GOTO furn02-3
END

IF ~~ THEN BEGIN furn02-2 // from: 10.0 8.0 6.0 4.0 1.0
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN furn02-3 // from: 1.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("RING10") DestroyItem("RING10")
GiveItemCreate("psMade10",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn02-4 // from: 0.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn02-2
  IF ~~ THEN REPLY @54 GOTO furn02-5
END

IF ~~ THEN BEGIN furn02-5 // from: 4.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("RING10") DestroyItem("RING10")
GiveItemCreate("psMade11",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn02-6 // from: 0.2
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn02-2
  IF ~~ THEN REPLY @54 GOTO furn02-7
END

IF ~~ THEN BEGIN furn02-7 // from: 6.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("RING10") DestroyItem("RING10")
GiveItemCreate("psMade12",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn02-8 // from: 0.3
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn02-2
  IF ~~ THEN REPLY @54 GOTO furn02-9
END

IF ~~ THEN BEGIN furn02-9 // from: 8.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("RING10") DestroyItem("RING10")
GiveItemCreate("psMade13",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn02-10 // from: 0.4
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn02-2
  IF ~~ THEN REPLY @54 GOTO furn02-11
END

IF ~~ THEN BEGIN furn02-11 // from: 10.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("RING10") DestroyItem("RING10")
GiveItemCreate("psMade14",Player1,1,0,0)~ EXIT
END




//Amulet

IF ~~ THEN BEGIN furn03-start // from:
  SAY @46
  IF ~LevelGT(Player1,12)~ THEN REPLY @57 GOTO furn03-1
  IF ~LevelGT(Player1,15)~ THEN REPLY @58 GOTO furn03-4
  IF ~LevelGT(Player1,18)~ THEN REPLY @59 GOTO furn03-6
  IF ~LevelGT(Player1,21)~ THEN REPLY @60 GOTO furn03-8
  IF ~LevelGT(Player1,9)~ THEN REPLY @61 GOTO furn03-10
  IF ~LevelLT(Player1,9)~ THEN REPLY @79 EXIT  
END

IF ~~ THEN BEGIN furn03-1 // from: 0.0
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn03-2
  IF ~~ THEN REPLY @54 GOTO furn03-3
END

IF ~~ THEN BEGIN furn03-2 // from: 10.0 8.0 6.0 4.0 1.0
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN furn03-3 // from: 1.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AMUL10") DestroyItem("AMUL10")
GiveItemCreate("psMade15",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn03-4 // from: 0.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn03-2
  IF ~~ THEN REPLY @54 GOTO furn03-5
END

IF ~~ THEN BEGIN furn03-5 // from: 4.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AMUL10") DestroyItem("AMUL10")
GiveItemCreate("psMade16",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn03-6 // from: 0.2
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn03-2
  IF ~~ THEN REPLY @54 GOTO furn03-7
END

IF ~~ THEN BEGIN furn03-7 // from: 6.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AMUL10") DestroyItem("AMUL10")
GiveItemCreate("psMade17",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn03-8 // from: 0.3
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn03-2
  IF ~~ THEN REPLY @54 GOTO furn03-9
END

IF ~~ THEN BEGIN furn03-9 // from: 8.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AMUL10") DestroyItem("AMUL10")
GiveItemCreate("psMade18",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn03-10 // from: 0.4
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn03-2
  IF ~~ THEN REPLY @54 GOTO furn03-11
END

IF ~~ THEN BEGIN furn03-11 // from: 10.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("AMUL10") DestroyItem("AMUL10")
GiveItemCreate("AMUL14",Player1,1,0,0)~ EXIT
END



//Staff and Wand

IF ~~ THEN BEGIN furn04-start // from:
  SAY @46
  IF ~LevelLT(Player1,12)~ THEN REPLY @79 EXIT  
  IF ~LevelGT(Player1,12)~ THEN REPLY @62 GOTO furn04-1
  IF ~LevelGT(Player1,15)~ THEN REPLY @63 GOTO furn04-4
  IF ~LevelGT(Player1,18)~ THEN REPLY @64 GOTO furn04-6
  IF ~LevelGT(Player1,21)~ THEN REPLY @65 GOTO furn04-8
END

IF ~~ THEN BEGIN furn04-1 // from: 11.0 10.0 0.0
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn04-2
  IF ~~ THEN REPLY @54 GOTO furn04-3
END

IF ~~ THEN BEGIN furn04-2 // from: 8.0 6.0 4.0 1.0
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN furn04-3 // from: 1.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("STAF01") DestroyItem("STAF01")
GiveItemCreate("WAND05",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn04-4 // from: 0.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn04-2
  IF ~~ THEN REPLY @54 GOTO furn04-5
END

IF ~~ THEN BEGIN furn04-5 // from: 4.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("STAF01") DestroyItem("STAF01")
GiveItemCreate("WAND07",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn04-6 // from: 0.2
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn04-2
  IF ~~ THEN REPLY @54 GOTO furn04-7
END

IF ~~ THEN BEGIN furn04-7 // from: 6.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("STAF01") DestroyItem("STAF01")
GiveItemCreate("psMade19",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn04-8 // from: 0.3
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn04-2
  IF ~~ THEN REPLY @54 GOTO furn04-9
END

IF ~~ THEN BEGIN furn04-9 // from: 8.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("STAF01") DestroyItem("STAF01")
GiveItemCreate("psMade20",Player1,1,0,0)~ EXIT
END




//Staff

IF ~~ THEN BEGIN furn05-start // from:
  SAY @46
  IF ~LevelGT(Player1,12)~ THEN REPLY @66 GOTO furn05-1
  IF ~LevelGT(Player1,9)~ THEN REPLY @67 GOTO furn05-4
  IF ~LevelLT(Player1,9)~ THEN REPLY @79 EXIT
  IF ~LevelGT(Player1,9)~ THEN REPLY @68 GOTO furn05-6
  IF ~LevelGT(Player1,15)~ THEN REPLY @69 GOTO furn05-8
END

IF ~~ THEN BEGIN furn05-1 // from: 11.0 10.0 0.0
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn05-2
  IF ~~ THEN REPLY @54 GOTO furn05-3
END

IF ~~ THEN BEGIN furn05-2 // from: 8.0 6.0 4.0 1.0
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN furn05-3 // from: 1.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("STAF01") DestroyItem("STAF01")
GiveItemCreate("STAF12",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn05-4 // from: 0.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn05-2
  IF ~~ THEN REPLY @54 GOTO furn05-5
END

IF ~~ THEN BEGIN furn05-5 // from: 4.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("STAF01") DestroyItem("STAF01")
GiveItemCreate("STAF17",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn05-6 // from: 0.2
  SAY @52
  IF ~~ THEN REPLY @6 GOTO furn05-2
  IF ~~ THEN REPLY @7 GOTO furn05-7
END

IF ~~ THEN BEGIN furn05-7 // from: 6.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("STAF01") DestroyItem("STAF01")
GiveItemCreate("STAF15",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn05-8 // from: 0.3
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn05-2
  IF ~~ THEN REPLY @54 GOTO furn05-9
END

IF ~~ THEN BEGIN furn05-9 // from: 8.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("STAF01") DestroyItem("STAF01")
GiveItemCreate("psMade21",Player1,1,0,0)~ EXIT
END



//Shield

IF ~~ THEN BEGIN furn06-start // from:
  SAY @46
  IF ~True()~ THEN REPLY @70 GOTO furn06-1
  IF ~LevelLT(Player1,12)~ THEN REPLY @79 EXIT  
  IF ~LevelGT(Player1,12)~ THEN REPLY @71 GOTO furn06-4
  IF ~LevelGT(Player1,15)~ THEN REPLY @72 GOTO furn06-6
  IF ~LevelGT(Player1,18)~ THEN REPLY @73 GOTO furn06-8
END

IF ~~ THEN BEGIN furn06-1 // from: 11.0 10.0 0.0
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn06-2
  IF ~~ THEN REPLY @54 GOTO furn06-3
END

IF ~~ THEN BEGIN furn06-2 // from: 8.0 6.0 4.0 1.0
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN furn06-3 // from: 1.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SHLD05") DestroyItem("SHLD05")
GiveItemCreate("psMade23",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn06-4 // from: 0.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn06-2
  IF ~~ THEN REPLY @54 GOTO furn06-5
END

IF ~~ THEN BEGIN furn06-5 // from: 4.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SHLD05") DestroyItem("SHLD05")
GiveItemCreate("psMade24",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn06-6 // from: 0.2
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn06-2
  IF ~~ THEN REPLY @54 GOTO furn06-7
END

IF ~~ THEN BEGIN furn06-7 // from: 6.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SHLD05") DestroyItem("SHLD05")
GiveItemCreate("psMade25",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn06-8 // from: 0.3
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn06-2
  IF ~~ THEN REPLY @54 GOTO furn06-9
END

IF ~~ THEN BEGIN furn06-9 // from: 8.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("SHLD05") DestroyItem("SHLD05")
GiveItemCreate("psMade26",Player1,1,0,0)~ EXIT
END




//Robes
IF ~~ THEN BEGIN furn07-start // from:
  SAY @46
  IF ~LevelLT(Player1,9)~ THEN REPLY @79 EXIT
  IF ~LevelGT(Player1,9)~ THEN REPLY @74 GOTO furn07-1
  IF ~LevelGT(Player1,12)~ THEN REPLY @75 GOTO furn07-4
  IF ~LevelGT(Player1,18)~ THEN REPLY @76 GOTO furn07-6
  IF ~LevelGT(Player1,15)~ THEN REPLY @77 GOTO furn07-8
  IF ~LevelGT(Player1,21)~ THEN REPLY @78 GOTO furn07-10
END

IF ~~ THEN BEGIN furn07-1 // from: 0.0
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn07-2
  IF ~~ THEN REPLY @54 GOTO furn07-3
END

IF ~~ THEN BEGIN furn07-2 // from: 10.0 8.0 6.0 4.0 1.0
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN furn07-3 // from: 1.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("LEAT01") DestroyItem("LEAT01")
GiveItemCreate("psMade22",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn07-4 // from: 0.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn07-2
  IF ~~ THEN REPLY @54 GOTO furn07-5
END

IF ~~ THEN BEGIN furn07-5 // from: 4.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("LEAT01") DestroyItem("LEAT01")
GiveItemCreate("psRobe01",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn07-6 // from: 0.2
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn07-2
  IF ~~ THEN REPLY @54 GOTO furn07-7
END

IF ~~ THEN BEGIN furn07-7 // from: 6.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("LEAT01") DestroyItem("LEAT01")
GiveItemCreate("psRobe02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn07-8 // from: 0.3
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn07-2
  IF ~~ THEN REPLY @54 GOTO furn07-9
END

IF ~~ THEN BEGIN furn07-9 // from: 8.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("LEAT01") DestroyItem("LEAT01")
GiveItemCreate("psRobe03",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furn07-10 // from: 0.4
  SAY @52
  IF ~~ THEN REPLY @53 GOTO furn07-2
  IF ~~ THEN REPLY @54 GOTO furn07-11
END

IF ~~ THEN BEGIN furn07-11 // from: 10.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,ForceSpell(Myself,WIZARD_ENCHANTED_WEAPON))
SmallWait(1)
ActionOverride(Player1,ReallyForceSpell(Myself,4199))
CreateVisualEffectObject("SPCRTWPN",Player1)
Wait(2)
EndCutSceneMode()
TakePartyItem("LEAT01") DestroyItem("LEAT01")
GiveItemCreate("psRobe04",Player1,1,0,0)~ EXIT
END
