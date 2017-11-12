BEGIN ~BHOLIEUT~

IF ~!Global("BHCellarOpen","GLOBAL",1)
OR(4)
AreaCheck("BH2104")
AreaCheck("BH2106")
AreaCheck("BH2108")
AreaCheck("BH2110")
OR(2)
!Dead("BHTELLIS")
!Dead("BHARRNES")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~OR(2)
Dead("BHTELLIS")
Dead("BHARRNES")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~Enemy()
Shout(125)~ EXIT
END

IF ~Global("BHOrcToldOnce","GLOBAL",0)
Global("BHCellarOpen","GLOBAL",1)
OR(4)
AreaCheck("BH2104")
AreaCheck("BH2106")
AreaCheck("BH2108")
AreaCheck("BH2110")
OR(2)
!Dead("BHTELLIS")
!Dead("BHARRNES")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~AreaCheck("BH2101")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN DO ~SetGlobal("BHOrcToldOnce","GLOBAL",1)
SetGlobal("BHCellarOpen","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN EXIT
END
