BEGIN ~BHFABIOJ~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~BHFAIR~ 9
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN EXTERN ~BHPELL~ 37
END

IF ~~ THEN BEGIN 10
  SAY @11
  IF ~Global("BHFabioWarning","GLOBAL",1)
~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @14
  IF ~~ THEN EXTERN ~BHANDRE~ 3
END

IF ~Global("BHFabioAndrella","GLOBAL",1)
~ THEN BEGIN 12
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @17
  IF ~!IfValidForPartyDialogue("Jaheira")
~ THEN REPLY @18 GOTO 14
  IF ~IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ FABJAHE
END

IF ~~ THEN BEGIN 14
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @21
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ FABIMOEN
  IF ~!IfValidForPartyDialogue("Imoen2")
~ THEN REPLY @22 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @23
  IF ~~ THEN EXIT
END

APPEND ~IMOEN2J~

IF ~~ THEN BEGIN FABIMOEN
  SAY @24
  IF ~~ THEN EXTERN ~BHFABIOJ~ 16
END

END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN FABJAHE
  SAY @25
  IF ~~ THEN REPLY @26 EXTERN ~BHFABIOJ~ 14
END

END

