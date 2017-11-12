BEGIN ~BHHOLGA~

IF ~NumberOfTimesTalkedTo(0)
Global("BHWilburLied","GLOBAL",1)
AreaCheck("BH2102")
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~CreateCreature("BHSHARG1",[-1.-1],0)
CreateCreature("BHSHARG1",[-1.-1],6)
Shout(ALERT)
Enemy()
~ EXIT
END

IF ~NumberOfTimesTalkedTo(0)
GlobalGT("BHWilburTells","GLOBAL",0)
~ THEN BEGIN 1
  SAY @2
  IF ~Global("BHWilburTells","GLOBAL",2)
~ THEN REPLY @3 GOTO 2
  IF ~Global("BHWilburTells","GLOBAL",1)
~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @17
  IF ~~ THEN DO ~SetGlobal("BHHolgaTalked","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @18
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
