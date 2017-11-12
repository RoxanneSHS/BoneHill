BEGIN ~BHBBOB~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~Global("BHBanditQuestAccept","GLOBAL",1)
~ THEN REPLY @12 GOTO 7
  IF ~GlobalLT("BHBanditQuestAccept","GLOBAL",1)
~ THEN REPLY @13 DO ~SetGlobal("BHBanditQuestAccept","GLOBAL",1)
~ GOTO 11
  IF ~Dead("BHKRELUS")
~ THEN REPLY @14 GOTO 22
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN REPLY @20 DO ~SetGlobal("BHBanditQuestAccept","GLOBAL",2)
SetGlobal("BHFoundWagon","GLOBAL",0)
~ UNSOLVED_JOURNAL @19 EXIT
  IF ~!GlobalGT("BHRestenfordEnemies","Global",0)
~ THEN REPLY @21 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @22
  IF ~~ THEN DO ~SetGlobal("BHBBOBReject","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @23
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 13
  SAY @22
  IF ~~ THEN DO ~SetGlobal("BHBBOBReject","GLOBAL",1)
~ EXIT
END

IF ~!NumberOfTimesTalkedTo(0)
~ THEN BEGIN 14
  SAY @24
  IF ~GlobalGT("BHFoundWagon","GLOBAL",0)
!GlobalGT("BHBanditQuestAccept","GLOBAL",1)
~ THEN REPLY @25 GOTO 15
  IF ~Global("BHFoundWagon","GLOBAL",0)
Global("BHBanditQuestAccept","GLOBAL",3)
~ THEN REPLY @26 GOTO 20
  IF ~GlobalGT("BHBanditQuestAccept","GLOBAL",1)
GlobalLT("BHFoundWagon","GLOBAL",1)
Dead("BHKRELUS")
~ THEN REPLY @27 GOTO 16
  IF ~GlobalLT("BHBBobSpokeOfHimself","GLOBAL",2)
Global("BHFoundWagon","GLOBAL",1)
GlobalLT("BHOrcBanditsDone","GLOBAL",1)
~ THEN REPLY @28 GOTO 15
  IF ~Global("BHFoundWagon","GLOBAL",0)
Global("BHBanditQuestAccept","GLOBAL",2)
~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 EXIT
  IF ~GlobalGT("BHToldOfDeath","GLOBAL",4)
~ THEN REPLY @31 GOTO 23
  IF ~Global("BHBBOBReject","GLOBAL",1)
GlobalLT("BHBanditQuestAccept","GLOBAL",2)
~ THEN REPLY @32 GOTO 8
  IF ~Global("BHOrcBanditsDone","GLOBAL",1)
GlobalLT("BHBBOBSpokeOfHimself","GLOBAL",2)
~ THEN REPLY @33 GOTO 17
END

IF ~~ THEN BEGIN 15
  SAY @34
  IF ~GlobalLT("BHBBobSpokeOfHimself","GLOBAL",2)
~ THEN REPLY @36 DO ~SetGlobal("BHOrcBanditsDone","GLOBAL",1)
EraseJournalEntry(@19)
~ SOLVED_JOURNAL @35 GOTO 17
  IF ~~ THEN REPLY @37 DO ~SetGlobal("BHOrcBanditsDone","GLOBAL",1)
EraseJournalEntry(@19)
~ SOLVED_JOURNAL @35 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @39
  IF ~GlobalLT("BHBBobSpokeOfAge","GLOBAL",1)
~ THEN REPLY @40 GOTO 18
  IF ~GlobalLT("BHBBobSpokeOfLead","GLOBAL",1)
~ THEN REPLY @41 GOTO 28
END

IF ~~ THEN BEGIN 18
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @44
  IF ~~ THEN DO ~SetGlobal("BHBBobSpokeOfAge","GLOBAL",1)
IncrementGlobal("BHBBobSpokeOfHimself","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 15
END

IF ~~ THEN BEGIN 21
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @48
  IF ~~ THEN DO ~SetGlobal("BHBanditQuestAccept","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @49
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @50
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @55
  IF ~~ THEN REPLY @56 EXIT
  IF ~~ THEN REPLY @57 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @58
  IF ~~ THEN DO ~SetGlobal("BHBBobSpokeOfLead","GLOBAL",1)
IncrementGlobal("BHBBobSpokeOfHimself","GLOBAL",1)
~ EXIT
END
