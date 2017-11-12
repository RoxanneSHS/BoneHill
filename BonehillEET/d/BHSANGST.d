BEGIN ~BHSANGST~

IF ~NumberOfTimesTalkedTo(0)
AreaCheck("BH2102")
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("BHToldToLeave","BH2102",1)
~ EXIT
END

IF ~Global("BHStartFight","BH2102",1)
AreaCheck("BH2102")
~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~CreateCreature("BHSHARG1",[-1.-1],6)
CreateCreature("BHSHARG1",[-1.-1],5)
ActionOverride("BHOLIEUT",Enemy())
Shout(ALERT)
Enemy()
~ EXIT
END

IF ~AreaCheck("BH2300")
~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~SetGlobalTimer("BHStupidTalkTime","GLOBAL",ONE_DAY)
SetGlobal("BHHiredAssassin","GLOBAL",5)
Shout(ALERT)
Enemy()
~ EXIT
END
