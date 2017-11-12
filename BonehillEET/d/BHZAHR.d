BEGIN ~BHZAHR~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~Global("BHGuardQuest","GLOBAL",1)
~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~GlobalGT("BHGuardQuest","GLOBAL",0)
~ THEN REPLY @18 UNSOLVED_JOURNAL @17 EXIT
  IF ~GlobalGT("BHGuardQuest","GLOBAL",0)
~ THEN REPLY @19 GOTO 8
  IF ~GlobalGT("BHGuardQuest","GLOBAL",2)
~ THEN REPLY @20 DO ~AddexperienceParty(600)
SetGlobal("BHRatProblemDone","GLOBAL",1)
~ EXIT
  IF ~GlobalLT("BHGuardQuest","GLOBAL",1)
~ THEN REPLY @21 DO ~SetGlobal("BHGuardQuest","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22
  IF ~~ THEN DO ~SetGlobal("BHGuardQuest","GLOBAL",1)
~ UNSOLVED_JOURNAL @17 EXIT
END

IF ~True()
~ THEN BEGIN 9
  SAY @23
  IF ~Global("BHGuardQuest","GLOBAL",3)
Global("BHRatProblemDone","GLOBAL",0)
~ THEN REPLY @24 GOTO 10
  IF ~GlobalLT("BHZahrdalSpeaks","GLOBAL",3)
~ THEN REPLY @25 GOTO 11
  IF ~GlobalLT("BHGuardQuest","GLOBAL",2)
~ THEN REPLY @26 GOTO 17
  IF ~!PartyHasItem("BHZahrJ")
~ THEN REPLY @27 EXIT
  IF ~Global("BHZahrdalSpokeOfGossip","GLOBAL",1)
GlobalLT("BHZahrdalGossips","GLOBAL",4)
~ THEN REPLY @28 GOTO 18
  IF ~PartyHasItem("BHZahrJ")
~ THEN REPLY @29 GOTO 18
END

IF ~~ THEN BEGIN 10
  SAY @30
  IF ~~ THEN DO ~AddexperienceParty(600)
EraseJournalEntry(@17)
EraseJournalEntry(@32)
SetGlobal("BHRatProblemDone","GLOBAL",1)
~ SOLVED_JOURNAL @31 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @33
  IF ~GlobalLT("BHZahrdalSpokeOfGossip","GLOBAL",1)
~ THEN REPLY @34 DO ~SetGlobal("BHSpyQuest","GLOBAL",1)
SetGlobal("BHZahrdalSpokeOfGossip","GLOBAL",1)
~ GOTO 12
  IF ~Global("BHGnollQuest","GLOBAL",1)
GlobalLT("BHZahrdalSpokeOfGnolls","GLOBAL",1)
~ THEN REPLY @35 GOTO 13
  IF ~Global("BHBanditQuest","GLOBAL",1)
GlobalLT("BHZahrdalSpokeOfBandits","GLOBAL",1)
~ THEN REPLY @36 GOTO 15
  IF ~GlobalLT("BHBanditQuest","GLOBAL",1)
GlobalLT("BHZahrdalSpokeOfBandits","GLOBAL",1)
~ THEN REPLY @37 EXIT
  IF ~GlobalLT("BHGnollQuest","GLOBAL",1)
GlobalLT("BHZahrdalSpokeOfGnolls","GLOBAL",1)
~ THEN REPLY @37 EXIT
  IF ~~ THEN REPLY @38 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @39
  IF ~~ THEN REPLY @40 DO ~SetGlobal("BHZahrdalSpokeOfGossip","GLOBAL",1)
IncrementGlobal("BHZahrdalSpeaks","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @41
  IF ~~ THEN REPLY @42 DO ~SetGlobal("BHZahrdalSpokeOfGnolls","GLOBAL",1)
IncrementGlobal("BHZahrdalSpeaks","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @43 DO ~SetGlobal("BHZahrdalSpokeOfGnolls","GLOBAL",1)
IncrementGlobal("BHZahrdalSpeaks","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @45
  IF ~~ THEN REPLY @42 DO ~SetGlobal("BHZahrdalSpokeOfBandits","GLOBAL",1)
IncrementGlobal("BHZahrdalSpeaks","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @46 DO ~SetGlobal("BHZahrdalSpokeOfBandits","GLOBAL",1)
IncrementGlobal("BHZahrdalSpeaks","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 16
  SAY @42
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 17
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @48
  IF ~Global("BHGuardQuest","GLOBAL",3)
Global("BHToldZahrRat","GLOBAL",0)
~ THEN REPLY @49 DO ~IncrementGlobal("BHZahrdalGossips","GLOBAL",1)
~ GOTO 19
  IF ~GlobalGT("BHGnollQuest","GLOBAL",1)
Global("BHToldZahrGnoll","GLOBAL",0)
~ THEN REPLY @50 DO ~IncrementGlobal("BHZahrdalGossips","GLOBAL",1)
~ GOTO 20
  IF ~Global("BHRestenfordEnemies","GLOBAL",2)
Global("BHToldZahrBone","GLOBAL",0)
~ THEN REPLY @51 DO ~IncrementGlobal("BHZahrdalGossips","GLOBAL",1)
~ GOTO 21
  IF ~Global("BHOrcBanditsDone","GLOBAL",1)
Global("BHToldZahrBandit","GLOBAL",0)
~ THEN REPLY @52 DO ~IncrementGlobal("BHZahrdalGossips","GLOBAL",1)
~ GOTO 22
  IF ~!PartyHasItem("BHZahrJ")
~ THEN REPLY @53 JOURNAL @32 GOTO 12
  IF ~PartyHasItem("BHZAHRJ")
~ THEN REPLY @54 GOTO 23
END

IF ~~ THEN BEGIN 19
  SAY @55
  IF ~~ THEN REPLY @56 DO ~SetGlobal("BHToldZahrRat","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 20
  SAY @55
  IF ~~ THEN REPLY @56 DO ~SetGlobal("BHToldZahrGnoll","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 21
  SAY @55
  IF ~~ THEN REPLY @56 DO ~SetGlobal("BHToldZahrBone","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 22
  SAY @55
  IF ~~ THEN REPLY @56 DO ~SetGlobal("BHToldZahrBandit","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 23
  SAY @57
  IF ~~ THEN DO ~Polymorph(MAGE_MALE_HUMAN)
Enemy()
~ EXIT
END
