BEGIN ~BHABRAHA~

IF ~NumberOfTimesTalkedTo(0)
AreaCheck("BH2020")
GlobalLT("BHAbrahamGone","BH2020",2)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("BHFindAbraham","BH2020",3)
~ GOTO 8
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~PartyHasItem("BHPLOT03")
~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
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
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 DO ~ActionOverride("BHOscar",Enemy())
ActionOverride("BHBasmar",Enemy())
ActionOverride("BHGlami",Enemy())
ActionOverride("BHPhilma",Polymorph(FIGHTER_MALE_HUMAN))
ActionOverride("BHPhilma",Enemy())
Shout(ALERT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~GlobalGT("BHBardTellsOfWho","GLOBAL",0)
~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @22
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ ABEIMOEN
  IF ~IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ ABEJAHE
  IF ~~ THEN REPLY @23 GOTO 51
END

IF ~~ THEN BEGIN 10
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @26
  IF ~~ THEN DO ~SetGlobal("BHAbrahamTalks","GLOBAL",1)
SetGlobal("BHStupidTalk","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BHCutAbr")
~ EXIT
END

IF ~Global("BHAbrahamTalks","GLOBAL",2)
GlobalLT("BHStupidTalk","GLOBAL",1)
AreaCheck("BH2020")
~ THEN BEGIN 12
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @29
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @30
  IF ~PartyHasItem("BHPLOT03")
~ THEN REPLY @31 GOTO 15
  IF ~GlobalGT("BHBardTellsOfWho","GLOBAL",1)
~ THEN REPLY @31 GOTO 28
  IF ~!PartyHasItem("BHPLOT03")
~ THEN REPLY @32 GOTO 40
END

IF ~~ THEN BEGIN 15
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @41
  IF ~GlobalGT("BHBardTellsOfWho","GLOBAL",1)
~ THEN REPLY @42 GOTO 20
  IF ~~ THEN REPLY @43 GOTO 43
END

IF ~~ THEN BEGIN 20
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @54
  IF ~~ THEN REPLY @25 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @57
  IF ~~ THEN REPLY @59 JOURNAL @58 GOTO 50
  IF ~GlobalGT("BHBardTellsOfWho","GLOBAL",0)
GlobalLT("AbrahamTellsOnGlami","GLOBAL",1)
GlobalLT("BHAbrahamTellsOfWho","GLOBAL",1)
~ THEN REPLY @60 GOTO 32
END

IF ~~ THEN BEGIN 28
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @67
  IF ~GlobalLT("AbrahamTellsOnGlami","GLOBAL",1)
GlobalLT("BHAbrahamTellsOfWho","GLOBAL",1)
~ THEN REPLY @68 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @69
  IF ~~ THEN REPLY @70 DO ~SetGlobal("AbrahamTellsOnGlami","GLOBAL",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @73
  IF ~~ THEN REPLY @74 DO ~SetGlobal("BHAbrahamWarnsParty","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @75
  IF ~Global("BHClericWarnsOfLothar","GLOBAL",0)
~ THEN REPLY @76 GOTO 36
  IF ~GlobalLT("BHBardTellsofWho","GLOBAL",1)
~ THEN REPLY @77 GOTO 38
  IF ~GlobalGT("BHClericWarnsOfLothar","GLOBAL",0)
GlobalGT("BHBardTellsofWho","GLOBAL",0)
~ THEN REPLY @78 GOTO 53
END

IF ~~ THEN BEGIN 36
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @81
  IF ~~ THEN REPLY @82 DO ~SetGlobal("BHAbrahamTalks","GLOBAL",3)
RandomWalk()
~ GOTO 53
END

IF ~~ THEN BEGIN 38
  SAY @79
  IF ~~ THEN REPLY @83 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @84
  IF ~~ THEN REPLY @82 DO ~SetGlobal("BHAbrahamTalks","GLOBAL",3)
RandomWalk()
~ GOTO 53
END

IF ~~ THEN BEGIN 40
  SAY @85
  IF ~~ THEN REPLY @86 GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @89
  IF ~~ THEN REPLY @90 GOTO 16
END

IF ~~ THEN BEGIN 43
  SAY @91
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @92
  IF ~~ THEN REPLY @93 GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @94
  IF ~~ THEN REPLY @95 DO ~SetGlobal("BHAbrahamTellsOfWho","GLOBAL",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @96
  IF ~~ THEN REPLY @97 GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @98
  IF ~~ THEN REPLY @99 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @100
  IF ~~ THEN REPLY @64 GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @101
  IF ~~ THEN REPLY @102 GOTO 24
END

IF ~~ THEN BEGIN 50
  SAY @103
  IF ~~ THEN REPLY @70 GOTO 33
END

IF ~~ THEN BEGIN 51
  SAY @104
  IF ~~ THEN DO ~SetGlobal("BHAbrahamTalks","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BHCutAbr")
~ EXIT
END

IF ~Global("BHAbrahamTalks","GLOBAL",2)
Global("BHStupidTalk","GLOBAL",1)
AreaCheck("BH2020")
~ THEN BEGIN 52
  SAY @105
  IF ~~ THEN GOTO 44
END

IF ~GlobalLT("BHAbrahamGone","BH2020",2)
AreaCheck("BH2020")
~ THEN BEGIN 53
  SAY @106
  IF ~Global("BHMetFalpir","GLOBAL",1)
~ THEN REPLY @107 GOTO 54
  IF ~~ THEN REPLY @108 EXIT
  IF ~Dead("BHBasmar")
Dead("BHOscar")
Dead("BHPhilma")
GlobalLT("BHAbrahamSendToMartin","Global",1)
~ THEN REPLY @109 GOTO 55
END

IF ~~ THEN BEGIN 54
  SAY @110
  IF ~~ THEN REPLY @111 DO ~SetGlobal("BHMetFalpir","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 55
  SAY @112
  IF ~~ THEN GOTO 58
END

IF ~AreaCheck("BH2103")
~ THEN BEGIN 56
  SAY @113
  IF ~~ THEN REPLY @114 GOTO 57
  IF ~~ THEN REPLY @115 DO ~SetGlobal("BHAbrahamFree","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57
  SAY @116
  IF ~~ THEN DO ~SetGlobal("BHAbrahamFree","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 58
  SAY @117
  IF ~~ THEN REPLY @118 DO ~SetGlobal("BHAbrahamSendToMartin","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @119 DO ~SetGlobal("BHAbrahamSendToMartin","GLOBAL",1)
~ EXIT
END

IF ~Global("BHAbrahamGone","BH2020",2)
~ THEN BEGIN 59
  SAY @120
  IF ~GlobalLT("BHAbrahamGivesRep","BH2020",1)
GlobalLT("BHAbrahamFiredGlami","BH2020",1)
~ THEN REPLY @121 DO ~ReputationInc(2)
SetGlobal("BHAbrahamGivesRep","BH2020",1)
SetGlobal("BHAbrahamFiredGlami","BH2020",1)
ActionOverride("BHGlami",DestroySelf())
SetGlobal("BHToldGlami","BH2020",1)
~ EXIT
  IF ~Global("BHAbrahamGivesRep","BH2020",1)
~ THEN REPLY @121 EXIT
  IF ~GlobalLT("BHAbrahamGivesRep","BH2020",1)
GlobalLT("BHAbrahamFiredGlami","BH2020",1)
~ THEN REPLY @122 DO ~ReputationInc(2)
SetGlobal("BHAbrahamGivesRep","BH2020",1)
SetGlobal("BHAbrahamFiredGlami","BH2020",1)
ActionOverride("BHGlami",DestroySelf())
SetGlobal("BHToldGlami","BH2020",1)
StartStore("BHAbraha",LastTalkedToBy(Myself))
~ EXIT
  IF ~Global("BHAbrahamGivesRep","BH2020",1)
~ THEN REPLY @122 DO ~StartStore("BHAbraha",LastTalkedToBy(Myself))
~ EXIT
END

APPEND ~IMOEN2J~

IF ~~ THEN BEGIN ABEIMOEN 
  SAY @123
  IF ~~ THEN EXTERN ~BHABRAHA~ 51
END

END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN ABEJAHE 
  SAY @124
  IF ~~ THEN EXTERN ~BHABRAHA~ 51
END

END
