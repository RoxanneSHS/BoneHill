BEGIN ~BHQUENEX~

IF ~True()
~ THEN BEGIN 0
  SAY @1
  IF ~GlobalGT("BHTalkedToBess","GLOBAL",0)
Global("BHQuenexGivesQuest","GLOBAL",0)
~ THEN REPLY @2 GOTO 1
  IF ~Global("BHTalkedToBess","GLOBAL",0)
Global("BHQuenexGivesQuest","GLOBAL",0)
~ THEN REPLY @3 GOTO 6
  IF ~Global("BHQuenexGivesQuest","GLOBAL",1)
~ THEN REPLY @4 GOTO 12
  // Isaya: add a reply before exit, may avoid a strange case reported here : http://www.shsforums.net/topic/44739-secret-of-bonehill-v275-bug-reports/page__view__findpost__p__485429
  IF ~~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @23 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @24
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 11
  SAY @25
  IF ~~ THEN DO ~SetGlobal("BHWaterMonsters","GLOBAL",1)
SetGlobal("BHQuenexGivesQuest","GLOBAL",1)
~ UNSOLVED_JOURNAL @26 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @27
  IF ~GlobalLT("BHQuenBasmarBoat","GLOBAL",1)
~ THEN REPLY @28 GOTO 13
  IF ~GlobalLT("BHQuenToldOfHarper","GLOBAL",1)
~ THEN REPLY @29 GOTO 16
  IF ~Global("BHWaterMonsters","GLOBAL",1)
Global("BHQuenexGivesQuest","GLOBAL",1)
Dead("BHLIZKNG")
~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @36
  IF ~~ THEN REPLY @38 DO ~SetGlobal("BHQuenBasmarBoat","GLOBAL",1)
~ JOURNAL @37 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @43
  IF ~~ THEN DO ~SetGlobal("BHQuenToldOfHarper","GLOBAL",1)
~ JOURNAL @44 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @47
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @48
  IF ~~ THEN DO ~SetGlobal("BHWaterMonsters","GLOBAL",1)
SetGlobal("BHQuenexGivesQuest","GLOBAL",2)
EraseJournalEntry(@26)
AddexperienceParty(1000)
~ SOLVED_JOURNAL @49 EXIT
END
