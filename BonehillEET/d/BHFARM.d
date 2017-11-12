BEGIN ~BHFARM~

IF WEIGHT #0 ~RandomNum(7,1)
~ THEN BEGIN 0
  SAY @1
  IF ~GlobalLT("BHGnollQuest","GLOBAL",1)
~ THEN DO ~SetGlobal("BHGnollQuest","GLOBAL",1)
~ JOURNAL @2 EXIT
  IF ~GlobalGT("BHGnollQuest","GLOBAL",1)
~ THEN REPLY @3 EXIT
  IF ~GlobalLT("BHGnollQuest","GLOBAL",2)
~ THEN DO ~SetGlobal("BHGnollQuest","GLOBAL",1)
~ JOURNAL @2 EXIT
END

IF WEIGHT #1 ~RandomNum(7,3)
~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN JOURNAL @5 EXIT
END

IF WEIGHT #6 ~RandomNum(7,2)
~ THEN BEGIN 2
  SAY @6
  IF ~GlobalLT("BHGuardQuest","GLOBAL",1)
~ THEN DO ~SetGlobal("BHGuardQuest","GLOBAL",1)
~ JOURNAL @7 EXIT
  IF ~GlobalGT("BHGuardQuest","GLOBAL",1)
~ THEN REPLY @8 EXIT
  IF ~~ THEN DO ~SetGlobal("BHGuardQuest","GLOBAL",1)
~ JOURNAL @7 EXIT
END

IF WEIGHT #2 ~RandomNum(7,5)
~ THEN BEGIN 3
  SAY @9
  IF ~GlobalLT("BHBoneHillQuest","GLOBAL",1)
~ THEN DO ~SetGlobal("BHBoneHillQuest","GLOBAL",1)
~ JOURNAL @10 EXIT
  IF ~GlobalGT("BHBoneHillQuest","GLOBAL",1)
~ THEN REPLY @11 EXIT
  IF ~~ THEN DO ~SetGlobal("BHBoneHillQuest","GLOBAL",1)
~ JOURNAL @10 EXIT
END

IF WEIGHT #3 ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~RandomNum(7,4)
~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~RandomNum(7,6)
~ THEN BEGIN 6
  SAY @14
  IF ~GlobalLT("BHBanditQuest","GLOBAL",1)
~ THEN DO ~SetGlobal("BHBanditQuest","GLOBAL",1)
~ JOURNAL @15 EXIT
  IF ~GlobalGT("BHBanditQuest","GLOBAL",1)
~ THEN EXIT
  IF ~~ THEN DO ~SetGlobal("BHBanditQuest","GLOBAL",1)
~ JOURNAL @15 EXIT
END

IF WEIGHT #7 ~RandomNum(7,7)
~ THEN BEGIN 7
  SAY @16
  IF ~GlobalLT("BHBanditQuest","GLOBAL",1)
~ THEN DO ~SetGlobal("BHBanditQuest","GLOBAL",1)
~ JOURNAL @15 EXIT
  IF ~GlobalGT("BHBanditQuest","GLOBAL",1)
~ THEN EXIT
  IF ~~ THEN DO ~SetGlobal("BHBanditQuest","GLOBAL",1)
~ JOURNAL @15 EXIT
END
