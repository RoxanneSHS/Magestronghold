BEGIN "psKOrd05"

CHAIN
IF ~Global("psKnightsToFightMelToggle", "GLOBAL", 1)~ THEN ~psKOrd05~ killKnights @0
== ~psMelFED~ @1
DO ~StartCutScene("psCut15")~ EXIT