BEGIN ~psDwarf2~

IF ~Global("psItemCreationBookToggle","GLOBAL", 0)~ THEN BEGIN intro
SAY @0
++ @1 GOTO intro-2
END

IF ~~ THEN BEGIN intro-2
SAY @2
IF ~~ THEN EXIT
END

IF ~Global("psItemCreationBookToggle","GLOBAL", 1)~ THEN BEGIN information
SAY @3
++ @4 GOTO information-2
++ @18 EXIT
END

IF ~~ THEN BEGIN information-2
SAY @5
++ @6 GOTO information-3
END

IF ~~ THEN BEGIN information-3
SAY @7 = @8 = @9 = @10 = @11 = @12 = @13 = @14 = @15 = @16 = @17
++ @19 EXIT
++ @20 GOTO information-2
END