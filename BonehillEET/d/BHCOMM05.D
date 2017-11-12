BEGIN ~BHCOMM05~ 2

IF ~RandomNum(3,1)
!AreaCheck("BH2201")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
!AreaCheck("BH2201")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
!AreaCheck("BH2201")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~AreaCheck("BH2201")~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~AddexperienceParty(500)
EscapeArea()~ EXIT
END
