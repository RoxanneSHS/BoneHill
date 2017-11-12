BEGIN ~BHASCUE~

IF ~AreaCheck("BH2101") !Global("BHGuardWarning","BH2101",2) GlobalLT("BHEscortedParty","GLOBAL",2)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("BHGuardWarning","BH2101",2) !NumberOfTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("BHGuardWarning","BH2101",3) Wait(3) CreateCreature("BHGUARDG",[-1.-1],0) CreateCreature("BHGUARDG",[-1.-1],0) CreateCreature("BHGUARDG",[-1.-1],0) ActionOverride("BHGUARDG",Enemy()) ActionOverride("BHOLIEUT",MoveToObject(Player1)) ActionOverride("BHOLIEUT",Enemy()) Shout(ALERT) Enemy() MoveToObject(Player1)~ EXIT
END

IF ~OR(4) AreaCheck("BH2000") AreaCheck("BH2002") AreaCheck("BH2018") AreaCheck("BH2020") Global("BHEscortSpawn","GLOBAL",1)~ THEN BEGIN 3
  SAY @1
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~SetGlobal("BHEscortedParty","GLOBAL",1)~ EXIT
END

IF ~Global("BHGuardWarning","BH2101",2) NumberOfTimesTalkedTo(0)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~SetGlobal("BHGuardWarning","BH2101",3) Wait(3) CreateCreature("BHGUARDG",[-1.-1],0) CreateCreature("BHGUARDG",[-1.-1],0) CreateCreature("BHGUARDG",[-1.-1],0) Shout(ALERT) Enemy()~ EXIT
END

IF ~GlobalGT("BHMayorStopsParty","GLOBAL",0) GlobalLT("BHGuardWarning","BH2101",2) GlobalLT("BHEscortSpawn","GLOBAL",2)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("BHAbrahamArrested","GLOBAL",1) AreaCheck("BH2020")~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @14
  IF ~~ THEN DO ~DialogueInterrupt(FALSE) SetGlobal("BHAscueToldParty","BH2020",2) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~GlobalGT("BHMayorStopsParty","GLOBAL",0) GlobalLT("BHGuardWarning","BH2101",2) Global("BHEscortSpawn","GLOBAL",3)~ THEN BEGIN 12
  SAY @7
  IF ~~ THEN GOTO 7
END
