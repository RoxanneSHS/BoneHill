BEGIN ~BHQUAL~

IF ~!PartyHasItem("BHNOTE1")
!Global("Healed","LOCALS",1)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~GlobalLT("BHQualtonSpokeOfPhaulkon","GLOBAL",1)
~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~GlobalGT("BHToldOfDeath","GLOBAL",1)
GlobalLT("BHQualtonImpotent","GLOBAL",1)
~ THEN REPLY @5 GOTO 10
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("BHQualtonIll","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN DO ~SetGlobal("BHQualtonSpokeOfPhaulkon","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY @8 DO ~SetGlobal("BHQualtonSpokeOfPhaulkon","GLOBAL",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 1
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN EXIT
END

IF ~GlobalLT("Healed","LOCALS",1)
PartyHasItem("BHNOTE1")
~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @18
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @19
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @24
  IF ~~ THEN DO ~SetGlobal("BHQualtonImpotent","GLOBAL",1)
~ JOURNAL @25 EXIT
END

IF ~Global("Healed","LOCALS",1)
GlobalGT("BHToldOfDeath","GLOBAL",1)
~ THEN BEGIN 13
  SAY @26
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @27
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @28
  IF ~~ THEN REPLY @29 DO ~SetGlobal("BHQualConfessed","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @30 DO ~SetGlobal("BHQualConfessed","GLOBAL",1)
~ EXIT
END
