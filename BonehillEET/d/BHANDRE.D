BEGIN ~BHANDRE~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~!IfValidForPartyDialogue("Fabio")~ THEN EXIT
  IF ~IfValidForPartyDialogue("Fabio")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~BHFABIOJ~ 10
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("BHFabioAndrella","GLOBAL",1)~ EXIT
END
