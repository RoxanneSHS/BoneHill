BEGIN ~BHGILMI~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 DO ~StartStore("BHGILMI",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 DO ~StartStore("BHGILMI",LastTalkedToBy(Myself))~ EXIT
  IF ~Global("BHOscarScared","GLOBAL",2)~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~Enemy()~ EXIT
END
