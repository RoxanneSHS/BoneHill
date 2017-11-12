BEGIN ~BHKRAK~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~!Alignment(LastTalkedToBy(Myself),MASK_GOOD)~ THEN REPLY @1 DO ~StartStore("BHKRAK",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 EXIT
  IF ~Alignment(LastTalkedToBy(Myself),MASK_GOOD)~ THEN REPLY @1 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~RandomNum(2,1)~ THEN DO ~StartStore("BHKRAK",LastTalkedToBy(Myself))~ EXIT
  IF ~RandomNum(2,2)~ THEN GOTO 1
END
