BEGIN ~BHFABIOP~

IF WEIGHT #2 ~Global("IWasKickedOut","LOCALS",0)
!Global("BHToldOfDeath","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #1 ~Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("BHToldOfDeath","GLOBAL",5)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetDialogue("BHFabio")~ EXTERN ~BHPELL~ 46
END
