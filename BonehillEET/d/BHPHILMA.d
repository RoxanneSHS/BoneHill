BEGIN ~BHPHILMA~

IF ~AreaCheck("BH2020")
~ THEN BEGIN 0
  SAY @1
  IF ~OR(3)
Global("BHAbrahamTellsOfWho","GLOBAL",1)
Global("BHAbrahamTellsOnGlami","GLOBAL",1)
Global("BHPriskaTellsOnGuild","GLOBAL",1)
~ THEN REPLY @2 GOTO 1
  IF ~GlobalLT("BHAbrahamTellsOfWho","GLOBAL",1)
GlobalLT("BHAbrahamTellsOnGlami","GLOBAL",1)
GlobalLT("BHPriskaTellsOnGuild","GLOBAL",1)
~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~NumberOfTimesTalkedTo(0)
OR(3)
Global("BHAbrahamTellsOfWho","GLOBAL",1)
Global("BHAbrahamTellsOnGlami","GLOBAL",1)
Global("BHPriskaTellsOnGuild","GLOBAL",1)
~ THEN REPLY @5 GOTO 2
  IF ~OR(3)
Global("BHAbrahamTellsOfWho","GLOBAL",1)
Global("BHAbrahamTellsOnGlami","GLOBAL",1)
Global("BHPriskaTellsOnGuild","GLOBAL",1)
~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~OR(3)
Global("BHBardTellsofWho","GLOBAL",1)
Global("BHAbrahamTellsOfWho","GLOBAL",1)
Global("BHPriskaTellsOnGuild","GLOBAL",1)
~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @16
  IF ~~ THEN REPLY @17 DO ~ActionOverride("BHOscar",EscapeArea())
ActionOverride("BHBasmar",EscapeArea())
SetGlobal("BHSetContact","GLOBAL",1)
RevealAreaOnMap("BH2300")
EscapeArea()
~ EXIT
END
