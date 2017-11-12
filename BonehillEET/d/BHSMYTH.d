BEGIN ~BHSMYTH~

IF ~True()
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~StartStore("BHST0108",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 EXIT
  IF ~Global("BHHandLightHouse","GLOBAL",1)
!Dead("BHSirius")
GlobalLT("BHSmythSpokeOfBomarc","GLOBAL",1)
~ THEN REPLY @4 GOTO 1
  IF ~Dead("BHSirius")
Global("BHHandTellSmyth","GLOBAL",0)
~ THEN REPLY @5 GOTO 4
  IF ~Dead("BHSirius")
Global("BHHandGrave","GLOBAL",6)
Global("BHHandTellSmyth","GLOBAL",0)
~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 2
  IF ~Global("BHHandGrave","GLOBAL",6)
~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("BHHandLightHouseOpen","GLOBAL",1)
SetGlobal("BHSmythSpokeOfBomarc","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @14 DO ~SetGlobal("BHHandLightHouseOpen","GLOBAL",1)
SetGlobal("BHSmythSpokeOfBomarc","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15
  IF ~~ THEN DO ~SetGlobal("BHHandTellSmyth","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16
  IF ~~ THEN DO ~SetGlobal("BHHandTellSmyth","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @17
  IF ~~ THEN REPLY @18 EXIT
END
