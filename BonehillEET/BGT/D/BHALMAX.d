BEGIN ~BHALMAX~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~Global("BHAlmaxSpeaks","Global",5)~ THEN REPLY @3 EXIT
  IF ~GlobalLT("BHAlmaxSpeaks","GLOBAL",5)~ THEN REPLY @4 GOTO 2
  IF ~Global("BHDruidQuest","GLOBAL",2) PartyHasItem("BHMessg")~ THEN REPLY @5 DO ~TakePartyItem("BHMESSG")~ GOTO 17
  IF ~Global("BHDruidQuest","GLOBAL",2)~ THEN REPLY @6 GOTO 19
  IF ~GlobalGT("BHDruidQuest","GLOBAL",1) Dead("BHMARTIN")~ THEN REPLY @7 GOTO 18
END

IF ~~ THEN BEGIN 1
  SAY @8
  IF ~~ THEN DO ~StartStore("BHAlmax",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9
  IF ~GlobalLT("BHAlmaxSpeaks","GLOBAL",5)~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 4
  IF ~GlobalLT("BHGnollQuest","GLOBAL",2) GlobalLT("BHAlmaxSpokeOfGnolls","GLOBAL",1)~ THEN REPLY @14 GOTO 6
  IF ~GlobalLT("BHBanditQuestAccept","GLOBAL",1)~ THEN REPLY @15 GOTO 8
  IF ~GlobalLT("BHAlmaxSpeaksOutlying","GLOBAL",2)~ THEN REPLY @16 GOTO 13
  IF ~Global("BHAlmaxSpeaks","GLOBAL",5)~ THEN REPLY @17 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @20
  IF ~GlobalLT("BHGuardQuest","GLOBAL",2)~ THEN REPLY @21 DO ~SetGlobal("BHAlmaxSpokeOfGuardhouse","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1)~ GOTO 2
  IF ~GlobalGT("BHGuardQuest","GLOBAL",1)~ THEN REPLY @22 DO ~SetGlobal("BHAlmaxSpokeOfGuardhouse","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1) SetGlobal("BHAlmaxSpokeOfGuardhouse","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 6
  SAY @23
  IF ~!IfValidForPartyDialogue("Jaheira")~ THEN GOTO 7
  IF ~IfValidForPartyDialogue("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ ALMAXJAHE
END

IF ~~ THEN BEGIN 7
  SAY @24
  IF ~GlobalLT("BHGnollQuest","GLOBAL",2)~ THEN REPLY @21 DO ~SetGlobal("BHGnollQuest","GLOBAL",1) SetGlobal("BHAlmaxSpokeOfGnolls","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1)~ GOTO 2
  IF ~GlobalGT("BHGnollQuest","GLOBAL",1)~ THEN REPLY @25 DO ~IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 8
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @28
  IF ~~ THEN REPLY @29 DO ~SetGlobal("BHBanditQuestAccept","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @30
  IF ~GlobalLT("BHBanditQuestAccept","GLOBAL",2)~ THEN REPLY @31 DO ~SetGlobal("BHBanditQuestAccept","GLOBAL",1)~ GOTO 11
  IF ~GlobalGT("BHBanditQuestAccept","GLOBAL",1)~ THEN REPLY @32 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @33
  IF ~~ THEN REPLY @21 GOTO 2
END

IF ~~ THEN BEGIN 12
  SAY @34
  IF ~~ THEN REPLY @21 GOTO 2
END

IF ~~ THEN BEGIN 13
  SAY @35
  IF ~GlobalLT("BHAlmaxSpokeOfBonehill","GLOBAL",1)~ THEN REPLY @36 GOTO 15
  IF ~GlobalLT("BHAlmaxSpokeOfReddy","GLOBAL",1)~ THEN REPLY @37 GOTO 14
  IF ~Global("BHAlmaxSpeaks","GLOBAL",5)~ THEN REPLY @38 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @39
  IF ~~ THEN REPLY @21 DO ~SetGlobal("BHDruidQuest","GLOBAL",1) SetGlobal("BHAlmaxSpokeOfReddy","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaksOutlying","GLOBAL",1)~ GOTO 2
  IF ~Dead("BHMARTIN")~ THEN REPLY @40 DO ~IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1)~ GOTO 18
END

IF ~~ THEN BEGIN 15
  SAY @41
  IF ~~ THEN REPLY @21 DO ~SetGlobal("BHAlmaxSpokeOfBonehill","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaks","GLOBAL",1) IncrementGlobal("BHAlmaxSpeaksOutlying","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 16
  SAY @42
  IF ~~ THEN REPLY @21 GOTO 2
END

IF ~~ THEN BEGIN 17
  SAY @43
  IF ~~ THEN REPLY @44 DO ~SetGlobal("BHDruidQuest","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @45 DO ~SetGlobal("BHDruidQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @46
  IF ~~ THEN DO ~SetGlobal("BHDruidQuest","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @47
  IF ~GlobalLT("BHMartinPissed","GLOBAL",1) !PartyHasItem("BHMessg")~ THEN REPLY @48 GOTO 20
  IF ~GlobalLT("BHAlmaxSpokeOfList","BH0200",1)~ THEN REPLY @49 GOTO 21
  IF ~PartyHasItem("BHMessg")~ THEN REPLY @50 DO ~TakePartyItem("BHMESSG")~ GOTO 17
  IF ~Global("BHMartinPissed","GLOBAL",1)~ THEN REPLY @51 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @52
  IF ~~ THEN DO ~SetGlobal("BHDruidQuest","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @53
  IF ~~ THEN DO ~SetGlobal("BHAlmaxSpokeOfList","BH0200",1)~ EXIT
END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN ALMAXJAHE
  SAY @54 
  IF ~~ THEN EXTERN ~BHALMAX~ 7
END

END

