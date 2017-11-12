BEGIN ~BHRGUARD~

IF ~!AreaCheck("BH0109")
!AreaCheck("BH0504")
!AreaCheck("BH2000")
!AreaCheck("BH2100")
!AreaCheck("BH2101")
!AreaCheck("BH2102")
!Global("BHHandSearch","GLOBAL",2)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("BHHandQuestAccept","GLOBAL",3)
OR(2)
AreaCheck("BH0109")
AreaCheck("BH0504")
~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~EscapeArea()
~ EXTERN ~BHPELL~ 34
END

IF ~Global("BHSpokeOfRavella","GLOBAL",0)
AreaCheck("BH0300")
Global("BHHandSearch","GLOBAL",2)
~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @8 EXIT
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @17
  IF ~IfValidForPartyDialogue("Kivan")
~ THEN EXTERN ~KIVANJ~ GUARDKIVAN
  IF ~IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ GUARDMINSC
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @24
  IF ~~ THEN REPLY @25 EXIT
  IF ~~ THEN REPLY @26 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @27
  IF ~~ THEN REPLY @28 DO ~SetGlobalTimer("RavellaAppears","GLOBAL",ONE_DAY)
SetGlobal("BHSpokeOfRavella","GLOBAL",1)
SetGlobal("BHHandRavella","GLOBAL",1)
~ EXIT
END

IF ~OR(5)
AreaCheck("BH0504")
AreaCheck("BH2000")
AreaCheck("BH2100")
AreaCheck("BH2101")
AreaCheck("BH2102")
!Global("BHHandSearch","GLOBAL",2)
~ THEN BEGIN 12
  SAY @29
  IF ~~ THEN EXIT
END

IF ~!GlobalTimerExpired("RavellaAppears","GLOBAL")
Global("BHSpokeOfRavella","GLOBAL",1)
~ THEN BEGIN 13
  SAY @30
  IF ~~ THEN EXIT
END

IF ~!AreaCheck("BH0109")
!AreaCheck("BH0504")
!AreaCheck("BH2000")
!AreaCheck("BH2100")
!AreaCheck("BH2101")
!AreaCheck("BH2102")
GlobalTimerExpired("RavellaAppears","GLOBAL")
~ THEN BEGIN 14
  SAY @1
  IF ~~ THEN EXIT
END

APPEND ~KIVANJ~

IF ~~ THEN BEGIN GUARDKIVAN 
  SAY @31 
  IF ~~ THEN EXTERN ~BHRGUARD~ 8
END

END

APPEND ~MINSCJ~

IF ~~ THEN BEGIN GUARDMINSC 
  SAY @32 
  IF ~~ THEN EXTERN ~BHRGUARD~ 8
END

END