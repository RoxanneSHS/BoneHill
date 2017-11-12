BEGIN ~BHGSKEL~

IF ~Global("BHCurse","GLOBAL",0)
Global("Restored","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 3
END

IF ~Global("Restored","LOCALS",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("BHCurse","GLOBAL",1)
AddexperienceParty(6000)
GiveItemCreate("scrla4",LastTalkedToBy,0,0,0)
CreateVisualEffectObject("SPCLOUD2",Myself)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~PartyHasItem("RESTORE")~ THEN REPLY @4 GOTO 4
  IF ~!PartyHasItem("RESTORE")~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END
