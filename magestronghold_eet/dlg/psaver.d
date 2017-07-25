BEGIN ~psAver~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN intro
SAY @20
++ @0 GOTO iTalk
END

IF ~~ THEN BEGIN iTalk
SAY @1
++ @2 GOTO iTalk2
END

IF ~~ THEN BEGIN iTalk2
SAY @3
++ @4 GOTO unpleasant
END

IF ~~ THEN BEGIN unpleasant
SAY @5
++ @6 GOTO question
++ @7 GOTO bye
END

IF ~~ THEN BEGIN question
SAY @9
++ @10 GOTO whyHere
END

IF ~~ THEN BEGIN bye
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN whyHere
SAY @11 = @12
++ @13 DO ~StartStore("psWauk", LastTalkedToBy())~ EXIT
++ @14 GOTO howLong
END

IF ~~ THEN BEGIN howLong
SAY @15
++ @16 DO ~StartStore("psWauk", LastTalkedToBy())~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN moronic
SAY @17
++ @18 DO ~StartStore("psWauk", LastTalkedToBy())~ EXIT
++ @19 GOTO bye
END