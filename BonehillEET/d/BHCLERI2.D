BEGIN ~BHCLERI2~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~CreateCreature("BHSHARG1",[-1.-1],0)
CreateCreature("BHSHARG1",[-1.-1],6)
Shout(125)
Enemy()~ EXIT
END
