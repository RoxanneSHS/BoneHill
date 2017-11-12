BEGIN ~BHGLAMI~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("BHFindAbraham","BH2020",1)
~ EXIT
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN DO ~SetGlobal("BHFindAbraham","BH2020",1)
SetGlobal("BHMadeContact","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @17 DO ~SetGlobal("BHStupidTalk","GLOBAL",1)
SetGlobal("BHFindAbraham","BH2020",1)
~ EXIT
END

IF ~True()
~ THEN BEGIN 8
  SAY @18
  IF ~GlobalLT("BHAbrahamGone","BH2020",2)
~ THEN REPLY @19 DO ~StartStore("BHGlami",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @20 EXIT
  IF ~GlobalLT("BHAbrahamGone","BH2020",2)
Global("BHMayorStopsParty","GLOBAL",1)
!Dead("BHAbraha")
~ THEN REPLY @21 GOTO 9
  IF ~Dead("BHArrnes")
Global("BHToldGlami","BH2020",0)
~ THEN REPLY @22 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @23
  IF ~~ THEN DO ~SetGlobal("BHAbrahamArrested","GLOBAL",1)
~ JOURNAL @24 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @27
  IF ~~ THEN REPLY @28 DO ~SetGlobal("BHToldGlami","BH2020",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @29
  IF ~!Dead("BHOscar")
~ THEN REPLY @30 EXIT
  IF ~~ THEN REPLY @31 EXIT
END
