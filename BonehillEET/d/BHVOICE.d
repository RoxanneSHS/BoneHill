BEGIN ~BHVOICE~

IF ~NumberOfTimesTalkedTo(0)
Global("BHStatueDone","GLOBAL",0)
!Alignment(LastTalkedToBy(Myself),MASK_EVIL)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN EXIT
  IF ~~ THEN EXIT
END

IF ~Global("BHStatueDone","GLOBAL",2)
!Alignment(LastTalkedToBy(Myself),MASK_EVIL)
~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Alignment(LastTalkedToBy(Myself),MASK_EVIL)
~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)
~ EXIT
END

IF ~Global("BHRestenfordEnemies","GLOBAL",2)
~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN DO ~SetGlobal("BHStatueDone","GLOBAL",2)
GiveItemCreate("BHMHELM",LastTalkedToBy,0,0,0)
~ EXIT
END

IF ~GlobalLT("BHRestenfordEnemies","GLOBAL",2)
~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN DO ~SetGlobal("BHStatueDone","GLOBAL",1)
~ EXIT
END
