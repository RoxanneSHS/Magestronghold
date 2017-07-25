BEGIN ~psTutor4~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~True()
~ THEN BEGIN 1 // from:
  SAY @1
  IF ~PartyHasItem("SCRL77")~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~TakePartyItem("SCRL77")
DestroyItem("SCRL77")
AddexperienceParty(1000)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @5
  IF ~~ THEN EXIT
END
