BEGIN ~psMagIte~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~Global("psItemCreationBookToggle","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("psItemCreationBookToggle","GLOBAL",1)
GiveItemCreate("psBook03",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @5
  IF ~~ THEN EXIT
END
