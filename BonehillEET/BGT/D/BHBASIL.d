BEGIN ~BHBASIL~ 1

IF ~NumberOfTimesTalkedTo(0)
!Global("BHBasilGetsLothar","GLOBAL",2)
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
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~IfValidForPartyDialogue("Khalid")
~ THEN DO ~MoveToObjectFollow([PC])
~ EXTERN ~KHALIJ~ BASILKHALID
  IF ~!IfValidForPartyDialogue("Khalid")
~ THEN REPLY @9 DO ~MoveToObjectFollow([PC])
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~IfValidForPartyDialogue("Khalid")
~ THEN DO ~MoveToObjectFollow([PC])
~ EXTERN ~KHALIJ~ BASILKHALID
  IF ~!IfValidForPartyDialogue("Khalid")
~ THEN REPLY @9 DO ~MoveToObjectFollow([PC])
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN EXTERN ~BHHARPER~ 5
END

IF ~!Global("BHBasilGetsLothar","GLOBAL",2)
~ THEN BEGIN 6
  SAY @12
  IF ~~ THEN REPLY @13 DO ~StartStore("BHCleri1",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @14 EXIT
  IF ~GlobalLT("BHHarperGone","BH2002",2)
Global("BHMayorStopsParty","GLOBAL",1)
~ THEN REPLY @15 GOTO 7
  IF ~PartyHasItem("BHOSPREM")
Global("BHBasilGetsLothar","GLOBAL",0)
~ THEN REPLY @16 GOTO 8
  IF ~PartyHasItem("BHMisc01")
~ THEN REPLY @17 GOTO 12
END

IF ~~ THEN BEGIN 7
  SAY @18
  IF ~~ THEN DO ~SetGlobal("BHHarperArrested","GLOBAL",1)
~ JOURNAL @19 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @20
  IF ~~ THEN REPLY @21 EXTERN ~BHHARMIN~ 24
END

IF ~~ THEN BEGIN 9
  SAY @22
  IF ~~ THEN DO ~SetGlobal("BHBasilGetsLothar","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~Global("BHBasilGetsLothar","GLOBAL",2)
~ THEN BEGIN 10
  SAY @23
  IF ~~ THEN REPLY @24 EXTERN ~BHHARMIN~ 26
END

IF ~~ THEN BEGIN 11
  SAY @25
  IF ~~ THEN REPLY @26 EXTERN ~BHHARMIN~ 27
END

IF ~~ THEN BEGIN 12
  SAY @27
  IF ~~ THEN DO ~TakePartyItem("BHMisc01")
DestroyItem("BHMisc01")
AddexperienceParty(600)
~ EXIT
END

APPEND ~KHALIJ~

IF ~~ THEN BEGIN BASILKHALID
  SAY @28 
  IF ~~ THEN EXIT
END

END

