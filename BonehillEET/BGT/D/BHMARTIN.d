BEGIN ~BHMARTIN~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~GlobalGT("BHDruidQuest","GLOBAL",0)
~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~IfValidForPartyDialogue("Jaheira")
GlobalGT("BHDruidQuest","GLOBAL",0)
~ THEN EXTERN ~JAHEIRAJ~ MARTINJAHE
  IF ~IfValidForPartyDialogue("Minsc")
GlobalGT("BHDruidQuest","GLOBAL",0)
~ THEN EXTERN ~MINSCJ~ MARTINMINSC
  IF ~GlobalGT("BHDruidQuest","GLOBAL",0)
~ THEN REPLY @8 GOTO 1
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~True()
~ THEN BEGIN 4
  SAY @11
  IF ~Global("BHDruidQuest","GLOBAL",3)
~ THEN REPLY @12 GOTO 9
  IF ~Global("BHDruidQuest","GLOBAL",2)
~ THEN REPLY @13 GOTO 10
  IF ~GlobalLT("BHDruidQuest","GLOBAL",2)
~ THEN REPLY @14 GOTO 12
  IF ~Global("BHDruidQuest","GLOBAL",4)
~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16
  IF ~IfValidForPartyDialogue("Montaron")
GlobalGT("BHGnollQuest","GLOBAL",1)
~ THEN EXTERN ~MONTAJ~ MARTINMONTY
  IF ~IfValidForPartyDialogue("Kagain")
GlobalGT("BHGnollQuest","GLOBAL",1)
~ THEN EXTERN ~KAGAIJ~ MARTINKAGAIN
  IF ~GlobalGT("BHGnollQuest","GLOBAL",1)
~ THEN REPLY @17 GOTO 6
  IF ~GlobalGT("BHGnollQuest","GLOBAL",1)
~ THEN REPLY @18 GOTO 6
  IF ~GlobalLT("BHGnollQuest","GLOBAL",1)
~ THEN REPLY @19 DO ~SetGlobal("BHGnollQuest","GLOBAL",1)
~ EXIT
  IF ~GlobalLT("BHGnollQuest","GLOBAL",1)
~ THEN REPLY @20 DO ~SetGlobal("BHGnollQuest","GLOBAL",1)
~ EXIT
  // Isaya: would need an additional line for when Global("BHGnollQuest","GLOBAL",1) (ogre mage not dead yet)
  // http://www.shsforums.net/topic/44739-secret-of-bonehill-v275-bug-reports/page__view__findpost__p__522990
  IF ~Global("BHGnollQuest","GLOBAL",1)
~ THEN REPLY @19 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21
  IF ~~ THEN REPLY @22 DO ~CreateItem("BHMessg",0,0,0)
GiveItem("BHMessg",Player1)
SetGlobal("BHDruidQuest","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY @23 DO ~SetGlobal("BHDruidQuest","GLOBAL",2)
~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @25
  IF ~~ THEN DO ~SetGlobal("BHMartinPissed","GLOBAL",1)
MoveToPoint([4389.673])
EscapeAreaDestroy(90)
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @26
  IF ~~ THEN REPLY @27 DO ~AddexperienceParty(6000)
CreateItem("clck23",0,0,0)
GiveItem("clck23",Player1)
SetGlobal("BHDruidQuest","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY @28 DO ~AddexperienceParty(2000)
CreateItem("clck23",0,0,0)
GiveItem("clck23",Player1)
SetGlobal("BHDruidQuest","GLOBAL",4)
~ GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @30
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @31
  IF ~~ THEN GOTO 2
END

APPEND ~MINSCJ~

IF ~~ THEN BEGIN MARTINMINSC 
  SAY @32 
  IF ~~ THEN EXTERN ~BHMARTIN~ 1
END

END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN MARTINJAHE 
  SAY @33 
  IF ~~ THEN EXTERN ~BHMARTIN~ 1
END

END

APPEND ~MONTAJ~

IF ~~ THEN BEGIN MARTINMONTY 
  SAY @34 
  IF ~~ THEN EXTERN ~BHMARTIN~ 6
END

END

APPEND ~KAGAIJ~

IF ~~ THEN BEGIN MARTINKAGAIN 
  SAY @35 
  IF ~~ THEN EXTERN ~BHMARTIN~ 6
END

END