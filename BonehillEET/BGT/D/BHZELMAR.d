BEGIN ~BHZELMAR~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~StartStore("BHZelmar",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @4 EXIT
END

IF ~OR(2)
GlobalLT("BHHandNoteDecipher","GLOBAL",3)
GlobalGT("BHHandZelmarGold","GLOBAL",1)
~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 DO ~StartStore("BHZelmar",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8
  IF ~IfValidForPartyDialogue("Kagain")
~ THEN EXTERN ~KAGAIJ~ ORDERDRINK
  IF ~~ THEN REPLY @9 DO ~StartStore("BHZelmar",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @11
  IF ~~ THEN DO ~StartStore("BHZelmar",LastTalkedToBy(Myself))
~ EXIT
END

IF ~GlobalGT("BHHandNoteDecipher","GLOBAL",2)
GlobalLT("BHHandZelmarGold","GLOBAL",2)
~ THEN BEGIN 4
  SAY @1
  IF ~!Dead("BHSirius")
GlobalLT("BHZelmarSpokeOfTheft","GLOBAL",1)
~ THEN REPLY @12 GOTO 5
  IF ~Dead("BHSirius")
Global("BHHandZelmarGold","GLOBAL",1)
~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 DO ~StartStore("BHZelmar",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("BHHandZelmarGold","GLOBAL",1)
SetGlobal("BHZelmarSpokeOfTheft","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY @23 DO ~SetGlobal("BHHandZelmarGold","GLOBAL",1)
SetGlobal("BHZelmarSpokeOfTheft","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 9
  SAY @24
  IF ~~ THEN DO ~TakePartyGold(250)
AddexperienceParty(1800)
SetGlobal("BHHandZelmarGold","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @25
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 12
  IF ~Global("BHHandGrave","GLOBAL",6)
~ THEN REPLY @28 GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY @29
  IF ~~ THEN REPLY @30 DO ~SetGlobal("BHHandLightHouse","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @31
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 14
  SAY @32
  IF ~~ THEN REPLY @33 EXIT
END

APPEND ~KAGAIJ~

IF ~~ THEN BEGIN ORDERDRINK 
  SAY @34 
  IF ~~ THEN EXTERN ~BHZELMAR~ 3
END

END