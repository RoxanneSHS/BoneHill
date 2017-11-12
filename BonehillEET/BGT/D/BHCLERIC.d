BEGIN ~BHCLERIC~

IF ~True()
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~GlobalLT("BHAcolyteSpokeOfPhaulkon","GLOBAL",1)
~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN DO ~StartStore("BHCleric",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~SetGlobal("BHAcolyteSpokeOfPhaulkon","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY @7 DO ~SetGlobal("BHAcolyteSpokeOfPhaulkon","GLOBAL",1)
~ GOTO 4
  IF ~IfValidForPartyDialogue("Minsc")
~ THEN DO ~SetGlobal("BHAcolyteSpokeOfPhaulkon","GLOBAL",1)
~ EXTERN ~MINSCJ~ CLERICMINSC
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 1
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN EXIT
END

APPEND ~MINSCJ~

IF ~~ THEN BEGIN CLERICMINSC 
  SAY @11 
  IF ~~ THEN EXTERN ~BHCLERIC~ 3
END

END

