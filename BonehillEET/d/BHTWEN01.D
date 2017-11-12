BEGIN ~BHTWEN01~ 2

IF ~!Global("BHFabioWench","GLOBAL",1)
RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("BHFabioWench","GLOBAL",1)
RandomNum(3,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~!Global("BHFabioWench","GLOBAL",1)
RandomNum(3,3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXTERN ~BHFABIO~ 31
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("BHFabioWench","Global",1)
RandomWalk()~ EXIT
END
