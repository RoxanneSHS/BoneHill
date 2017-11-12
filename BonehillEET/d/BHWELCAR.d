BEGIN ~BHWELCAR~

IF ~Global("BHHandQuest","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~GlobalGT("BHHandQuest","GLOBAL",0)~ THEN BEGIN 1
  SAY @2
  IF ~Global("BHHandTalkToWelcar","Global",0)~ THEN REPLY @3 GOTO 2
  IF ~PartyHasItem("BHMISC4F")~ THEN REPLY @4 DO ~TakePartyItem("BHMISC4F") SetGlobal("BHWelcarStuff","GLOBAL",1)~ GOTO 5
  IF ~Global("BHWelcarStuff","GLOBAL",1) PartyHasItem("BHBPEARL")~ THEN REPLY @5 GOTO 6
  IF ~Global("BHHandNoteDecipher","GLOBAL",1)~ THEN REPLY @6 GOTO 8
  IF ~Global("BHHandNoteDecipher","GLOBAL",2)~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @13
  IF ~~ THEN REPLY @15 UNSOLVED_JOURNAL @14 GOTO 10
END

IF ~~ THEN BEGIN 5
  SAY @16
  IF ~PartyHasItem("BHBPEARL")~ THEN REPLY @17 DO ~AddexperienceParty(1000)~ GOTO 6
  IF ~!PartyHasItem("BHBPEARL")~ THEN REPLY @18 DO ~AddexperienceParty(500)~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @19
  IF ~~ THEN DO ~EraseJournalEntry(@14) SetGlobal("BHWelcarStuff","GLOBAL",2) TakePartyItem("BHBPEARL") AddexperienceParty(1500)~ SOLVED_JOURNAL @20 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22
  IF ~~ THEN DO ~SetGlobal("BHHandNoteDecipher","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @23
  IF ~~ THEN DO ~SetGlobal("BHHandNoteDecipher","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @26
  IF ~~ THEN DO ~SetGlobal("BHHandSewerOpen","GLOBAL",1) SetGlobal("BHHandTalkToWelcar","GLOBAL",1)~ JOURNAL @27 EXIT
END

IF ~Global("BHWelcarStuff","GLOBAL",2)~ THEN BEGIN 12
  SAY @28
  IF ~~ THEN EXIT
END
