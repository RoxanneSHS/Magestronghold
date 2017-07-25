BEGIN ~psVecna~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~Difficulty(EASIEST)~ THEN REPLY @6 GOTO easiest
  IF ~Difficulty(EASY)~ THEN REPLY @6 GOTO easy
  IF ~Difficulty(NORMAL)~ THEN REPLY @6 GOTO normal
  IF ~Difficulty(HARD)~ THEN REPLY @6 GOTO hard
  IF ~Difficulty(HARDEST)~ THEN REPLY @6 GOTO hardest

  IF ~Difficulty(EASIEST)~ THEN REPLY @7 GOTO easiest-2
  IF ~Difficulty(EASY)~ THEN REPLY @7 GOTO easy-2
  IF ~Difficulty(NORMAL)~ THEN REPLY @7 GOTO normal-2
  IF ~Difficulty(HARD)~ THEN REPLY @7 GOTO hard-2
  IF ~Difficulty(HARDEST)~ THEN REPLY @7 GOTO hardest-2
END


IF ~~ THEN BEGIN easiest // from: 3.0
  SAY @9
  IF ~~ THEN DO ~
GiveItemCreate("MISC07", "psVecna", 2500, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
ChangeAIScript("psVEasy", 0)
~ EXIT
END

IF ~~ THEN BEGIN easy
SAY @9
IF ~~ THEN DO ~
GiveItemCreate("MISC07", "psVecna", 5000, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
GiveItemCreate("psqsMin", "psVecna", 1, 0, 0)
ChangeAIScript("psVNorm", 0)
CreateCreatureDoor("psModron",[1369.1104],0)
CreateCreatureDoor("psModron",[1389.1483],0)~ EXIT
END

IF ~~ THEN BEGIN normal
SAY @9
IF ~~ THEN DO ~
GiveItemCreate("MISC07", "psVecna", 7500, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
GiveItemCreate("psqpyro", "psVecna", 1, 0, 0)
GiveItemCreate("psqsMin", "psVecna", 1, 0, 0)
ChangeAIScript("psVCore", 0)
CreateCreatureDoor("psModron",[1369.1104],0)
CreateCreatureDoor("psModron",[1169.1104],0)
CreateCreatureDoor("psModron",[1189.1483],0)
CreateCreatureDoor("psModron",[1389.1483],0)~ EXIT
END

IF ~~ THEN BEGIN hard
SAY @9
IF ~~ THEN DO ~
GiveItemCreate("MISC07", "psVecna", 10000, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
GiveItemCreate("psqpyro", "psVecna", 1, 0, 0)
GiveItemCreate("psqsMin", "psVecna", 1, 0, 0)
GiveItemCreate("psPot05", "psVecna", 1, 0, 0)
ChangeAIScript("psVHard", 0)
CreateCreatureDoor("psModron",[1369.1104],0)
CreateCreatureDoor("Lich01",[1169.1104],0)
CreateCreatureDoor("psModron",[1389.1483],0)~ EXIT
END

IF ~~ THEN BEGIN hardest
SAY @9
IF ~~ THEN DO ~		
GiveItemCreate("MISC07", "psVecna", 15000, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
GiveItemCreate("psqpyro", "psVecna", 1, 0, 0)
GiveItemCreate("psqsMin", "psVecna", 1, 0, 0)
GiveItemCreate("psPot05", "psVecna", 1, 0, 0)
GiveItemCreate("psClck01", "psVecna", 1, 0, 0)
FillSlot(SLOT_CLOAK)
ChangeAIScript("psVIns", 0)
CreateCreatureDoor("Lich01",[1169.1104],0)
CreateCreatureDoor("psModron",[1369.1104],0)
CreateCreatureDoor("psModron",[1389.1483],0)
CreateCreatureDoor("Lich01",[1189.1483],0)~ EXIT
END

IF ~~ THEN BEGIN easiest-2 // from: 3.0
  SAY @9
  IF ~~ THEN DO ~
GiveItemCreate("MISC07", "psVecna", 2500, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
ChangeAIScript("psVEasy", 0)
~ EXIT
END

IF ~~ THEN BEGIN easy-2
SAY @9
IF ~~ THEN DO ~
GiveItemCreate("MISC07", "psVecna", 5000, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
GiveItemCreate("psqsMin", "psVecna", 1, 0, 0)
ChangeAIScript("psVNorm", 0)
CreateCreatureDoor("psModron",[1369.1104],0)
CreateCreatureDoor("psModron",[1389.1483],0)~ EXIT
END

IF ~~ THEN BEGIN normal-2
SAY @9
IF ~~ THEN DO ~
GiveItemCreate("MISC07", "psVecna", 7500, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
GiveItemCreate("psqpyro", "psVecna", 1, 0, 0)
GiveItemCreate("psqsMin", "psVecna", 1, 0, 0)
ChangeAIScript("psVCore", 0)
CreateCreatureDoor("psModron",[1369.1104],0)
CreateCreatureDoor("psModron",[1169.1104],0)
CreateCreatureDoor("psModron",[1189.1483],0)
CreateCreatureDoor("psModron",[1389.1483],0)~ EXIT
END

IF ~~ THEN BEGIN hard-2
SAY @9
IF ~~ THEN DO ~
GiveItemCreate("MISC07", "psVecna", 10000, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
GiveItemCreate("psqpyro", "psVecna", 1, 0, 0)
GiveItemCreate("psqsMin", "psVecna", 1, 0, 0)
GiveItemCreate("psPot05", "psVecna", 1, 0, 0)
ChangeAIScript("psVHard", 0)
CreateCreatureDoor("psModron",[1369.1104],0)
CreateCreatureDoor("Lich01",[1169.1104],0)
CreateCreatureDoor("psModron",[1389.1483],0)~ EXIT
END

IF ~~ THEN BEGIN hardest-2
SAY @9
IF ~~ THEN DO ~		
GiveItemCreate("MISC07", "psVecna", 15000, 0, 0)
GiveItemCreate("psWand03", "psVecna", 1, 0, 0)
GiveItemCreate("psqpyro", "psVecna", 1, 0, 0)
GiveItemCreate("psqsMin", "psVecna", 1, 0, 0)
GiveItemCreate("psPot05", "psVecna", 1, 0, 0)
GiveItemCreate("psClck01", "psVecna", 1, 0, 0)
FillSlot(SLOT_CLOAK)
ChangeAIScript("psVIns", 0)
CreateCreatureDoor("Lich01",[1169.1104],0)
CreateCreatureDoor("psModron",[1369.1104],0)
CreateCreatureDoor("psModron",[1389.1483],0)
CreateCreatureDoor("Lich01",[1189.1483],0)~ EXIT
END