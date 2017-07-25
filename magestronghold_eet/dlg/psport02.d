BEGIN ~psPort02~

IF ~!PartyHasItem("psKey")~ THEN BEGIN getKey
SAY @6
IF ~~ THEN EXIT
END

IF ~PartyHasItem("psKey")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  ++ @2 GOTO 2
  ++ @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~ActionOverride(Player1,Rest())
ActionOverride(Player2,Rest())
ActionOverride(Player3,Rest())
ActionOverride(Player4,Rest())
ActionOverride(Player5,Rest())
ActionOverride(Player6,Rest())
SetGlobal("psRetrievedSpellKeyToggle","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUA("AR0308","",[1000.998],2))
ActionOverride(Player2,LeaveAreaLUA("AR0308","",[1000.998],2))
ActionOverride(Player3,LeaveAreaLUA("AR0308","",[1000.998],14))
ActionOverride(Player4,LeaveAreaLUA("AR0308","",[1000.998],0))
ActionOverride(Player5,LeaveAreaLUA("AR0308","",[1000.998],4))
ActionOverride(Player6,LeaveAreaLUA("AR0308","",[1000.998],2))
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @5
  IF ~~ THEN EXIT
END
