BEGIN ~BHYALTA~ 1

IF WEIGHT #0 ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~GlobalGT("BHGnollQuest","GLOBAL",1) Global("BHToldYaltaGnoll","BH0306",0) Global("BHYaltaGivesGnollQuest","BH0306",1)
~ THEN REPLY @5 DO ~EraseJournalEntry(@4)~ SOLVED_JOURNAL @3 GOTO 16
  IF ~GlobalGT("BHGuardQuest","GLOBAL",1) Global("BHToldYaltaRat","BH0306",0) Global("BHYaltaGivesGuardQuest","BH0306",1)~ THEN REPLY @6 GOTO 17
END

IF WEIGHT #4 ~True()~ THEN BEGIN 1
  SAY @7 
  IF ~~ THEN REPLY @52 EXIT
  IF ~GlobalLT("BHYaltaSpokeOfPriest","GLOBAL",1)~ THEN REPLY @8 GOTO 2
  IF ~GlobalLT("BHYaltaSpokeOfGnolls","GLOBAL",1)~ THEN REPLY @9 GOTO 7
  IF ~GlobalLT("BHYaltaSpokeOfRats","GLOBAL",1)~ THEN REPLY @10 GOTO 8
  IF ~GlobalLT("BHYaltaSpokeOfPriest","GLOBAL",1) GlobalLT("BHYaltaSpokeOfGnolls","GLOBAL",1) GlobalLT("BHYaltaSpokeOfRats","GLOBAL",1)~ THEN REPLY @11 GOTO 8
  IF ~GlobalGT("BHGnollQuest","GLOBAL",1) GlobalGT("BHGuardQuest","GLOBAL",1)~ THEN REPLY @12 GOTO 15
  IF ~GlobalGT("BHYaltaSpokeOfPriest","GLOBAL",0) GlobalGT("BHYaltaSpokeOfGnolls","GLOBAL",0) GlobalGT("BHYaltaSpokeOfRats","GLOBAL",0)~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @16
  IF ~~ THEN DO ~SetGlobal("BHYaltaSpokeOfPriest","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @19
  IF ~IfValidForPartyDialogue("Khalid")~ THEN EXTERN ~KHALIJ~ YALTAKHALID
  IF ~IfValidForPartyDialogue("Montaron")~ THEN EXTERN ~MONTAJ~ YALTAMONTY
  IF ~~ THEN REPLY @20 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @21
  IF ~GlobalLT("BHYaltaSpokeOfPriest","GLOBAL",1) GlobalLT("BHYaltaSpokeOfGnolls","GLOBAL",1) GlobalLT("BHYaltaSpokeOfRats","GLOBAL",1)~ THEN REPLY @22 GOTO 1
  IF ~GlobalGT("BHYaltaSpokeOfPriest","GLOBAL",0) GlobalGT("BHYaltaSpokeOfGnolls","GLOBAL",0) GlobalGT("BHYaltaSpokeOfRats","GLOBAL",0)~ THEN REPLY @23 EXIT
  IF ~GlobalGT("BHYaltaSpokeOfPriest","GLOBAL",0)~ THEN REPLY @22 GOTO 1
END

IF ~~ THEN BEGIN 7
  SAY @24
  IF ~~ THEN GOTO 11
END

IF WEIGHT #5 ~GlobalLT("BHYaltaSpokeOfRats","GLOBAL",1) GlobalLT("BHToldYaltaRat","BH0306",1)~ THEN BEGIN 8
  SAY @25
  IF ~GlobalLT("BHGuardQuest","GLOBAL",1)~ THEN REPLY @27 DO ~SetGlobal("BHYaltaSpokeOfRats","GLOBAL",1) SetGlobal("BHYaltaGivesGuardQuest","BH0306",1)~ JOURNAL @26 GOTO 10
  IF ~~ THEN REPLY @28 DO ~SetGlobal("BHYaltaSpokeOfRats","GLOBAL",1) SetGlobal("BHYaltaGivesGuardQuest","BH0306",1)~ GOTO 9
  IF ~GlobalLT("BHGuardQuest","GLOBAL",3)~ THEN REPLY @29 DO ~SetGlobal("BHYaltaSpokeOfRats","GLOBAL",1) SetGlobal("BHYaltaGivesGuardQuest","BH0306",1)~ GOTO 14
  IF ~Global("BHGuardQuest","GLOBAL",3)~ THEN REPLY @30 DO ~SetGlobal("BHYaltaSpokeOfRats","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @52 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @31
  IF ~IfValidForPartyDialogue("Mincs")~ THEN EXTERN ~MINSCJ~ YALTAMINSC
  IF ~~ THEN DO ~SetGlobal("BHYaltaPissed","GLOBAL",1) ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @33
  IF ~IfValidForPartyDialogue("Kagain")~ THEN DO ~SetGlobal("BHYaltaSpokeOfGnolls","GLOBAL",1)~ EXTERN ~KAGAIJ~ YALTAKAGAIN
  IF ~~ THEN DO ~SetGlobal("BHYaltaSpokeOfGnolls","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 13
  IF ~GlobalGT("BHYaltaSpokeOfGnolls","GLOBAL",0)~ THEN REPLY @36 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @37
  IF ~GlobalLT("BHGnollQuest","GLOBAL",2)~ THEN REPLY @38 DO ~SetGlobal("BHGnollQuest","GLOBAL",1) SetGlobal("BHYaltaGivesGnollQuest","BH0306",1)~ UNSOLVED_JOURNAL @4 EXIT
  IF ~GlobalLT("BHGnollQuest","GLOBAL",2)~ THEN REPLY @39 DO ~SetGlobal("BHGnollQuest","GLOBAL",1) SetGlobal("BHYaltaGivesGnollQuest","BH0306",1)~ EXIT
IF ~Global("BHGnollQuest","GLOBAL",2) Global("BHToldYaltaGnoll","BH0306",0)~ THEN REPLY @5 DO ~EraseJournalEntry(@4)~ SOLVED_JOURNAL @3 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @40
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 15
  SAY @41
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @42
  IF ~~ THEN REPLY @43 DO ~AddexperienceParty(1000) SetGlobal("BHToldYaltaGnoll","BH0306",1)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @44
  IF ~~ THEN REPLY @45 DO ~AddexperienceParty(1000) SetGlobal("BHToldYaltaRat","BH0306",1)~ EXIT
END

IF WEIGHT #2 ~Global("BHToldYaltaQuest","GLOBAL",1) True()~ THEN BEGIN 18
  SAY @46
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~AreaCheck("BH0306") NumTimesTalkedToGT(0)~ THEN BEGIN 19
  SAY @47
  IF ~GlobalLT("BHGnollQuest","GLOBAL",2) GlobalLT("BHGuardQuest","GLOBAL",2)~ THEN REPLY @48 GOTO 1
  IF ~GlobalGT("BHGnollQuest","GLOBAL",1) Global("BHToldYaltaGnoll","BH0306",0) Global("BHYaltaGivesGnollQuest","BH0306",1)
~ THEN REPLY @51 DO ~IncrementGlobal("BHToldYaltaQuest","GLOBAL",1) EraseJournalEntry(@50)~ SOLVED_JOURNAL @49 GOTO 16
  IF ~GlobalGT("BHGuardQuest","GLOBAL",1) Global("BHToldYaltaRat","BH0306",0) Global("BHYaltaGivesGuardQuest","BH0306",1)~ THEN REPLY @6 GOTO 17
  IF ~Global("BHToldYaltaRat","BH0306",1) GlobalLT("BHToldYaltaQuest","GLOBAL",1) Global("BHGuardQuest","GLOBAL",2)~ THEN REPLY @52 GOTO 10
  IF ~GlobalLT("BHGnollQuest","GLOBAL",2)~ THEN REPLY @48 GOTO 1
  IF ~~ THEN REPLY @52 EXIT
END

IF WEIGHT #1 ~Global("BHYaltaPissed","GLOBAL",1)~ THEN BEGIN 20
  SAY @53
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("BHGuardQuest","GLOBAL",3)~ THEN BEGIN 21
  SAY @54
  IF ~GlobalGT("BHGuardQuest","GLOBAL",1) Global("BHToldYaltaRat","BH0306",0) ~ THEN REPLY @6 GOTO 17
END

APPEND ~KAGAIJ~

IF ~~ THEN BEGIN YALTAKAGAIN
  SAY @55 
  IF ~~ THEN EXTERN ~BHYALTA~ 12
END

END

APPEND ~MINSCJ~

IF ~~ THEN BEGIN YALTAMINSC 
  SAY @56 
  IF ~GlobalLT("BHGuardQuest","GLOBAL",2)~ THEN DO ~SetGlobal("BHGuardQuest","GLOBAL",1)~ EXIT
END

END

APPEND ~KHALIJ~

IF ~~ THEN BEGIN YALTAKHALID 
  SAY @57 
  IF ~~ THEN EXTERN ~BHYALTA~ 6
END

END

APPEND ~MONTAJ~

IF ~~ THEN BEGIN YALTAMONTY 
  SAY @58 
  IF ~~ THEN REPLY @59 EXTERN ~BHYALTA~ 6
END

END