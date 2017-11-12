BEGIN ~BHKRELUS~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~CreateCreature("BHORC01",[299.2486],0)
CreateCreature("BHORC01",[175.2560],0)
CreateCreature("BHORC01",[482.2720],0)
CreateCreature("BHORC01",[242.2790],0)
CreateCreature("BHGORHRG",[98.2650],0)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN DO ~CreateCreature("BHORC01",[299.2486],0)
CreateCreature("BHORC01",[175.2560],0)
CreateCreature("BHORC01",[482.2720],0)
CreateCreature("BHORC01",[242.2790],0)
CreateCreature("BHGORHRG",[98.2650],0)
Enemy()
~ EXIT
END
