BEGIN ~psTutor7~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~Global("psMelicampQuestCounter","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~GlobalLT("psMelicampQuestCounter","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("psMelicampQuestCounterr","GLOBAL",1)
EscapeArea()~ EXIT
END
