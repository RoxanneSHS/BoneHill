BEGIN ~BHLYDIA~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("BH2010",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
