BEGIN ~BHFELWIN~

IF ~True()
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~Global("BHFelwinSpokeOfCaravan","GLOBAL",0)
~ THEN REPLY @5 GOTO 2
  IF ~Global("BHFelwinSpokeOfMartin","GLOBAL",0)
~ THEN REPLY @6 GOTO 6
  IF ~GlobalGT("BHFelwinSpokeOfCaravan","GLOBAL",0)
GlobalGT("BHFelwinSpokeOfMartin","GLOBAL",0)
~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8
  IF ~GlobalLT("BHFelwinSpokeOfCaravan","GLOBAL",1)
~ THEN REPLY @9 DO ~SetGlobal("BHFelwinSpokeOfCaravan","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~GlobalLT("BHBanditQuestAccept","GLOBAL",3)
~ THEN REPLY @11 DO ~SetGlobal("BHBanditQuestAccept","GLOBAL",1)
~ GOTO 1
  IF ~GlobalLT("BHBanditQuestAccept","GLOBAL",3)
~ THEN REPLY @12 DO ~SetGlobal("BHBanditQuestAccept","GLOBAL",1)
~ GOTO 1
  IF ~GlobalGT("BHFoundWagon","GLOBAL",1)
~ THEN REPLY @13 GOTO 4
  IF ~GlobalGT("BHBanditQuestAccept","GLOBAL",2)
~ THEN REPLY @14 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 1
END

IF ~~ THEN BEGIN 5
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 1
END

IF ~~ THEN BEGIN 6
  SAY @19
  IF ~GlobalLT("BHFelwinSpokeOfMartin","GLOBAL",1)
~ THEN REPLY @20 DO ~SetGlobal("BHFelwinSpokeOfMartin","GLOBAL",1)
~ GOTO 7
  IF ~GlobalLT("BHFelwinSpokeOfMartin","GLOBAL",1)
~ THEN REPLY @21 DO ~SetGlobal("BHFelwinSpokeOfMartin","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 1
END
