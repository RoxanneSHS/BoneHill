BEGIN ~BHMART1~

IF ~AreaCheck("BH2000")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~GlobalLT("BHDruidQuest","GLOBAL",1)~ THEN REPLY @4 GOTO 5
  IF ~GlobalGT("BHDruidQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @17
  IF ~~ THEN DO ~SetGlobal("BHMartinScared","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~AreaCheck("BH2015")~ THEN BEGIN 11
  SAY @18
  IF ~~ THEN REPLY @19 EXIT
  IF ~OR(3)
Global("BHHarperArrested","GLOBAL",1)
Global("BHBardArrested","GLOBAL",1)
Global("BHAbrahamArrested","GLOBAL",1)~ THEN REPLY @20 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @25
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @26
  IF ~~ THEN REPLY @27 EXIT
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @29
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @32
  IF ~~ THEN DO ~RandomWalk()~ JOURNAL @33 EXIT
END
