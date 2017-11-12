BEGIN ~BHOSCAR~

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
  IF ~GlobalGT("BHMetFalpir","GLOBAL",2)
~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @17
  IF ~~ THEN REPLY @18 DO ~ActionOverride("BHPHILMA",EscapeArea())
ActionOverride("BHBasmar",EscapeArea())
SetGlobal("BHSetContact","GLOBAL",1)
RevealAreaOnMap("BH2300")
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @19
  IF ~PartyHasItem("BHPLOT02")
~ THEN REPLY @20 GOTO 8
  IF ~!PartyHasItem("BHPLOT02")
~ THEN REPLY @21 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 14
  IF ~~ THEN REPLY @34 GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @35
  IF ~~ THEN REPLY @34 GOTO 15
  IF ~~ THEN REPLY @36 DO ~SetGlobal("BHOscarScared","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @37
  IF ~~ THEN DO ~SetGlobal("BHOscarScared","GLOBAL",1)
EscapeArea()
~ EXIT
END
