BEGIN ~BHPELL~

IF ~GlobalLT("BHQuestAccept","GLOBAL",1) AreaCheck("BG3402")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("BHQuestAccept","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @3 DO ~SetGlobal("BHQuestAccept","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~Global("BHQuestAccept","GLOBAL",1)~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN DO ~SetGlobal("BHQuestAccept","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN EXIT
END

IF ~AreaCheck("BH0100")~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @17
  IF ~!IfValidForPartyDialogue("Imoen2")~ THEN DO ~EscapeArea()~ EXIT
  IF ~IfValidForPartyDialogue("Imoen2")~ THEN DO ~EscapeArea()~ EXTERN ~IMOEN2J~ PELLIMOEN
END

IF ~GlobalLT("BHHandQuestAccept","GLOBAL",1) GlobalLT("BHHandQuest","GLOBAL",2) OR(2) AreaCheck("BH0109") AreaCheck("BH0504") Global("BHToldOfDeath","GLOBAL",0)~ THEN BEGIN 12
  SAY @18
  IF ~GlobalLT("BHToldPelltarQuest","GLOBAL",4)~ THEN REPLY @19 GOTO 13
  IF ~GlobalLT("BHToldPelltarQuest","GLOBAL",4) OR(3) GlobalGT("BHGuardQuest","GLOBAL",0) GlobalGT("BHGnollQuest","GLOBAL",0) GlobalGT("BHBanditQuest","GLOBAL",0)~ THEN REPLY @20 GOTO 14
  IF ~Dead("BHZAHR") PartyHasItem("BHZAHRJ") Global("BHKillZahrdahlQuest","GLOBAL",1)~ THEN REPLY @21 DO ~TakePartyItem("BHZAHRJ")~ GOTO 27
  IF ~Global("BHToldPelltarQuest","GLOBAL",4)~ THEN REPLY @22 GOTO 16
  IF ~GlobalLT("BHGuardQuest","GLOBAL",1) GlobalLT("BHGnollQuest","GLOBAL",1) GlobalLT("BHBanditQuest","GLOBAL",1)~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @24
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @27
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @28
  IF ~~ THEN REPLY @29 DO ~SetGlobal("BHQuestAccept","GLOBAL",4)~ EXIT
  IF ~~ THEN REPLY @30 EXIT
  IF ~Global("BHQuestAccept","GLOBAL",4)~ THEN REPLY @29 DO ~SetGlobal("BHQuestAccept","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @31
  IF ~Global("BHToldPellBandit","GLOBAL",0) OR(2) Global("BHBanditQuest","GLOBAL",3) Global("BHOrcBanditsDone","GLOBAL",1)~ THEN REPLY @32 DO ~IncrementGlobal("BHToldPelltarQuest","GLOBAL",1)~ GOTO 18
  IF ~GlobalGT("BHGuardQuest","GLOBAL",1) Global("BHToldPellRats","GLOBAL",0)~ THEN REPLY @33 DO ~IncrementGlobal("BHToldPelltarQuest","GLOBAL",1)~ GOTO 21
  IF ~Global("BHGnollQuest","GLOBAL",2) Global("BHToldPellGnolls","GLOBAL",0)~ THEN REPLY @34 DO ~IncrementGlobal("BHToldPelltarQuest","GLOBAL",1)~ GOTO 22
  IF ~Global("BHToldPellBone","GLOBAL",0) OR(2) GlobalGT("BHBoneHillQuest","GLOBAL",1) GlobalGT("BHRestenfordEnemies","GLOBAL",0)~ THEN REPLY @35 DO ~IncrementGlobal("BHToldPelltarQuest","GLOBAL",1)~ GOTO 28
  IF ~PartyHasItem("BHZAHRJ")~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @37 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 19
  IF ~~ THEN REPLY @40 GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @41
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @42
  IF ~~ THEN DO ~SetGlobal("BHToldPellBandit","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @45
  IF ~~ THEN DO ~SetGlobal("BHToldPellGnolls","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @46
  IF ~~ THEN DO ~SetGlobal("BHToldPellRats","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @49
  IF ~Dead("BHZAHR")~ THEN REPLY @50 DO ~AddexperienceParty(4000) TakePartyItem("BHZAHRJ")~ GOTO 27
  IF ~!Dead("BHZAHR")~ THEN REPLY @51 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @52
  IF ~~ THEN DO ~SetGlobal("BHKillZahr","GLOBAL",1) SetGlobal("BHKillZahrdahlQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY @54
  IF ~Dead("BHTELV") !Dead("BHWRAITH") PartyHasItem("BHTELVBK")~ THEN REPLY @55 GOTO 29
  IF ~!Dead("BHTELV") Dead("BHWRAITH")~ THEN REPLY @56 GOTO 30
  IF ~Dead("BHTELV") Dead("BHWRAITH") PartyHasItem("BHTELVBK")~ THEN REPLY @57 GOTO 31
  IF ~OR(2) GlobalLT("BHBoneHillQuest","GLOBAL",2) GlobalLT("BHRestenfordEnemies","GLOBAL",1)~ THEN REPLY @58 GOTO 45
END

IF ~~ THEN BEGIN 29
  SAY @59
  IF ~~ THEN DO ~AddexperienceParty(1000) TakePartyItem("BHTELVBK") SetGlobal("BHToldPellBone","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @60
  IF ~~ THEN DO ~AddexperienceParty(1000) SetGlobal("BHToldPellBone","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @61
  IF ~~ THEN DO ~AddexperienceParty(1000) TakePartyItem("BHTELVBK") SetGlobal("BHToldPellBone","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @62
  IF ~~ THEN REPLY @63 EXTERN ~BHGELPAS~ 7
END

IF ~Global("BHHandQuestAccept","GLOBAL",1) OR(2) AreaCheck("BH0109") AreaCheck("BH0504") Global("BHToldOfDeath","GLOBAL",0) ~ THEN BEGIN 33
  SAY @64
  IF ~~ THEN REPLY @65 DO ~SetGlobal("BHHandQuestAccept","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @66
  IF ~Global("BHToldPellBandit","GLOBAL",1)~ THEN REPLY @67 DO ~SetGlobal("BHHandQuestAccept","GLOBAL",4) SetGlobal("BHHandQuest","GLOBAL",1)~ EXIT
  IF ~GlobalLT("BHToldPellBandit","GLOBAL",1)~ THEN REPLY @68 DO ~SetGlobal("BHHandQuestAccept","GLOBAL",4) SetGlobal("BHHandQuest","GLOBAL",1)~ EXIT
END

IF ~GlobalLT("BHQuestAccept","GLOBAL",7) GlobalGT("BHHandQuest","GLOBAL",0) OR(2) AreaCheck("BH0109") AreaCheck("BH0504")
Global("BHToldOfDeath","GLOBAL",0) !GlobalGT("BHQuestAccept","GLOBAL",5)~ THEN BEGIN 35
  SAY @69
  IF ~Dead("BHBANDT3") GlobalGT("BHHandQuest","GLOBAL",2) Global("BHHandSearch","GLOBAL",0) Global("BHShowPellHandNote","GLOBAL",0)~ THEN REPLY @70 DO ~SetGlobal("BHShowPellHandNote","GLOBAL",1) AddexperienceParty(2000)~ GOTO 36
  IF ~GlobalLT("BHHandNoteDecipher","GLOBAL",4) PartyHasItem("BHGHNOTE") Global("BHHandPellSawMap","GLOBAL",0)~ THEN REPLY @71 GOTO 38
  IF ~OR(2) GlobalLT("BHHandQuest","GLOBAL",3) GlobalLT("BHHandGrave","GLOBAL",6)~ THEN REPLY @72 GOTO 41
  IF ~Global("BHToldPellLighthouse","GLOBAL",0) Dead("BHSIRIUS") !PartyHasItem("BHSIRIUS")~ THEN REPLY @73 DO ~SetGlobal("BHToldPellLighthouse","GLOBAL",1)~ GOTO 42
  IF ~Global("BHToldPellLighthouse","GLOBAL",0) Dead("BHSIRIUS") PartyHasItem("BHSIRIUS")~ THEN REPLY @74 DO ~TakePartyItem("BHSIRIUS") SetGlobal("BHToldPellLighthouse","GLOBAL",1)~ GOTO 42
  IF ~Global("BHHandSearch","GLOBAL",2) GlobalLT("BHHandNoteDecipher","GLOBAL",1) Global("BHTellPellSewer","GLOBAL",0)~ THEN REPLY @75 DO ~SetGlobal("BHTellPellSewer","GLOBAL",1)~ GOTO 44
  IF ~GlobalLT("BHToldPellBomarc","GLOBAL",1) Global("BHHandGrave","GLOBAL",6)~ THEN REPLY @76 GOTO 42
  IF ~Global("BHHandRavella","GLOBAL",1) Global("BHTellPellRavella","GLOBAL",0)~ THEN REPLY @77 DO ~SetGlobal("BHTellPellRavella","GLOBAL",1)~ GOTO 41
  IF ~PartyHasItem("BHZAHRJ") !Dead("BHZahr")~ THEN REPLY @78 GOTO 17
  IF ~GlobalLT("BHKillZahrdahlQuest","GLOBAL",1) Dead("BHZahr") Global("BHKillZahr","GLOBAL",1)~ THEN REPLY @79 DO ~SetGlobal("BHKillZahr","GLOBAL",1)~ GOTO 89
  IF ~Dead("BHZAHR") PartyHasItem("BHZAHRJ") Global("BHKillZahrdahlQuest","GLOBAL",1)~ THEN GOTO 89
  IF ~Dead("BHZAHR") PartyHasItem("BHZAHRJ") GlobalLT("BHKillZahrdahlQuest","GLOBAL",1)~ THEN REPLY @80 GOTO 17
  IF ~GlobalLT("BHToldPelltarQuest","GLOBAL",4) OR(6) Global("BHBanditQuest","GLOBAL",3) Global("BHOrcBanditsDone","GLOBAL",1) GlobalGT("BHGuardQuest","GLOBAL",1) Global("BHGnollQuest","GLOBAL",2) GlobalGT("BHBoneHillQuest","GLOBAL",1) GlobalGT("BHRestenfordEnemies","GLOBAL",0)~ THEN REPLY @81 GOTO 17
  IF ~Global("BHToldPellBomarc","GLOBAL",1)~ THEN REPLY @72 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @82
  IF ~IfValidForPartyDialogue("FABIO")~ THEN EXTERN ~BHFABIOJ~ 9
  IF ~!IfValidForPartyDialogue("FABIO")~ THEN REPLY @83 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @84
  IF ~~ THEN DO ~SetGlobal("BHHandSearch","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY @85
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @86
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @87
  IF ~!Dead("BHSirius") Global("BHHandPellSawMap","GLOBAL",0)~ THEN REPLY @88 DO ~SetGlobal("BHHandLightHouseOpen","GLOBAL",1) SetGlobal("BHHandPellSawMap","GLOBAL",1)~ EXIT
  IF ~Dead("BHSirius") GlobalLT("BHToldPellLighthouse","GLOBAL",1)~ THEN REPLY @89 DO ~SetGlobal("BHHandPellSawMap","GLOBAL",1) SetGlobal("BHToldPellLighthouse","GLOBAL",1)~ GOTO 42
  IF ~Global("BHToldPellLighthouse","GLOBAL",1) Dead("BHSirius")~ THEN REPLY @90 DO ~SetGlobal("BHHandPellSawMap","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @91
  IF ~~ THEN EXIT
  IF ~Global("BHHandRavella","GLOBAL",1) Global("BHTellPellRavella","GLOBAL",0)~ THEN REPLY @92 DO ~SetGlobal("BHTellPellRavella","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @93
  IF ~GlobalGT("BHHandQuest","Global",2) Global("BHHandGrave","Global",6) GlobalLT("BHQuestAccept","GLOBAL",7) PartyHasItem("BHGHAND")~ THEN REPLY @94 GOTO 43
  IF ~GlobalLT("BHHandQuest","GLOBAL",3) GlobalLT("BHHandGrave","GLOBAL",6)~ THEN REPLY @95 DO ~SetGlobal("BHStayForMarauders","GLOBAL",1) SetGlobal("BHStayForBomarc","GLOBAL",1)~ EXIT
  IF ~Global("BHStayForMarauders","GLOBAL",1) GlobalLT("BHHandQuest","GLOBAL",3)~ THEN REPLY @96 EXIT
  IF ~Global("BHStayForBomarc","GLOBAL",1) GlobalLT("BHHandGrave","GLOBAL",6)~ THEN REPLY @97 EXIT
  IF ~GlobalGT("BHHandQuest","GLOBAL",2) GlobalLT("BHHandGrave","GLOBAL",6) GlobalLT("BHStayForBomarc","GLOBAL",1)~ THEN REPLY @97 DO ~SetGlobal("BHStayForBomarc","GLOBAL",1)~ EXIT
  IF ~GlobalLT("BHHandQuest","GLOBAL",3) Global("BHHandGrave","GLOBAL",6) GlobalLT("BHStayForMarauders","GLOBAL",1)~ THEN REPLY @96 DO ~SetGlobal("BHStayForMarauders","GLOBAL",1)~ EXIT
  IF ~GlobalGT("BHHandQuest","GLOBAL",2) Global("BHHandGrave","GLOBAL",6) GlobalLT("BHQuestAccept","GLOBAL",7) !PartyHasItem("BHGHAND")~ THEN REPLY @98 DO ~SetGlobal("BHToldPellBomarc","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 43
  SAY @99
  IF ~!InMyArea("Fabio") !InParty("Fabio")~ THEN DO ~TakePartyItem("BHGHAND") TakePartyItem("BHBPEARL") CreateCreature("BHFabio",[380.172],0) SetGlobal("BHQuestAccept","GLOBAL",6)~ EXIT
  IF ~InParty("Fabio")~ THEN DO ~TakePartyItem("BHGHAND") TakePartyItem("BHBPEARL") SetGlobal("BHQuestAccept","GLOBAL",6)~ EXIT
  IF ~!InParty("Fabio") InMyArea("Fabio")~ THEN DO ~TakePartyItem("BHGHAND") TakePartyItem("BHBPEARL") SetGlobal("BHQuestAccept","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN 44
  SAY @100
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45
  SAY @101
  IF ~~ THEN REPLY @102 EXIT
END

IF ~Global("BHToldOfDeath","GLOBAL",5) !Dead("Fabio")~ THEN BEGIN 46
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @105
  IF ~~ THEN REPLY @106 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @107
  IF ~~ THEN REPLY @108 GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @109
  IF ~~ THEN REPLY @110 GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @111
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @112
  IF ~~ THEN REPLY @113 GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @114
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @115
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @116
  IF ~Exists("Fabio")~ THEN EXTERN ~BHFABIO~ 43
  IF ~~ THEN REPLY @117 GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @118
  IF ~~ THEN REPLY @120 UNSOLVED_JOURNAL @119 GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @121
  IF ~~ THEN REPLY @122 GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @123
  IF ~~ THEN REPLY @124 GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @125
  IF ~~ THEN REPLY @126 GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @127
  IF ~Exists("Fabio")~ THEN EXTERN ~BHFABIO~ 44
  IF ~~ THEN REPLY @128 GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @129
  IF ~~ THEN JOURNAL @130 GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @131
  IF ~~ THEN DO ~SetGlobal("BHToldOfDeath","GLOBAL",6)~ UNSOLVED_JOURNAL @132 GOTO 71
END

IF ~Global("BHQualConfessed","GLOBAL",3)~ THEN BEGIN 62
  SAY @133
  IF ~~ THEN DO ~TakePartyItem("BHNOTE1") SetGlobal("BHQualConfessed","GLOBAL",4)~ EXIT
END

IF ~Global("BHQualConfessed","GLOBAL",5)~ THEN BEGIN 63
  SAY @134
  IF ~!PartyHasItem("BHPLOT04")~ THEN REPLY @135 GOTO 64
  IF ~PartyHasItem("BHPLOT04")~ THEN REPLY @135 GOTO 90
END

IF ~~ THEN BEGIN 64
  SAY @136
  IF ~~ THEN REPLY @137 GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @138
  IF ~!InParty("Fabio")~ THEN DO ~SetGlobal("BHAllDone","GLOBAL",2)~ EXTERN ~BFABIO~ 15
  IF ~InParty("Fabio")~ THEN DO ~SetGlobal("BHAllDone","GLOBAL",1)~ EXIT
END

IF ~OR(2) PartyHasItem("BHNOTE1") PartyHasItem("BHPLOT04")~ THEN BEGIN 66
  SAY @139
  IF ~Global("BHQualReport","GLOBAL",0) PartyHasItem("BHNOTE1")~ THEN REPLY @140 GOTO 67
  IF ~Global("BHQualReport","GLOBAL",1) Dead("BHQUAL")~ THEN REPLY @141 GOTO 70
  IF ~Global("BHToldPellAboutMayor","GLOBAL",0) PartyHasItem("BHPLOT04")~ THEN REPLY @142 GOTO 73
  IF ~!PartyHasItem("BHNOTE1") !PartyHasItem("BHPLOT04")~ THEN REPLY @143 GOTO 75
  IF ~Global("BHMayorGivesWaterQuest","GLOBAL",2) !Dead("BHARRNESS")~ THEN REPLY @144 GOTO 84
END

IF ~~ THEN BEGIN 67
  SAY @145
  IF ~Dead("BHQUAL")~ THEN REPLY @146 GOTO 69
  IF ~!Dead("BHQUAL")~ THEN REPLY @147 GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @148
  IF ~~ THEN DO ~SetGlobal("BHQualReport","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 69
  SAY @149
  IF ~~ THEN REPLY @150 DO ~TakePartyItem("BHNOTE1")~ GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY @151
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 71
  SAY @152
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
  SAY @153
  IF ~~ THEN DO ~RevealAreaOnMap("BH2000") GiveItemCreate("BHPLOT01",Player1,0,0,0) GiveItemCreate("BHPLOT02",Player1,0,0,0) GiveItemCreate("BHPLOT03",Player1,0,0,0) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 73
  SAY @154
  IF ~~ THEN REPLY @155 GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY @156
  IF ~~ THEN DO ~SetGlobal("BHToldPellAboutMayor","GLOBAL",1) TakePartyItem("BHPLOT04")~ EXIT
END

IF ~~ THEN BEGIN 75
  SAY @157
  IF ~~ THEN EXIT
END

IF ~AreaCheck("BG2626") Global("BHToldOfDeath","GLOBAL",1)~ THEN BEGIN 76
  SAY @158
  IF ~~ THEN REPLY @159 GOTO 77
END

IF ~~ THEN BEGIN 77
  SAY @160
  IF ~~ THEN REPLY @161 DO ~SetGlobal("BHToldOfDeath","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("BHCUTBAR")~ EXIT
  IF ~~ THEN REPLY @162 GOTO 78
END

IF ~~ THEN BEGIN 78
  SAY @163
  IF ~~ THEN REPLY @164 GOTO 79
  IF ~~ THEN REPLY @165 GOTO 80
END

IF ~~ THEN BEGIN 79
  SAY @166
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 80
  SAY @167
  IF ~~ THEN REPLY @168 DO ~SetGlobal("BHToldOfDeath","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("BHCUTBAR")~ EXIT
  IF ~~ THEN REPLY @169 GOTO 79
END

IF ~AreaCheck("BG2626") Global("BHToldOfDeath","GLOBAL",3)~ THEN BEGIN 81
  SAY @170
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
  SAY @171
  IF ~~ THEN REPLY @10 DO ~SetGlobal("BHToldOfDeath","GLOBAL",4)~ EXIT
  IF ~~ THEN REPLY @11 GOTO 79
END

IF ~Global("BHToldOfDeath","GLOBAL",5) Dead("Fabio")~ THEN BEGIN 83
  SAY @172
  IF ~~ THEN REPLY @173 GOTO 47
END

IF ~~ THEN BEGIN 84
  SAY @174
  IF ~~ THEN REPLY @175 GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY @176
  IF ~~ THEN REPLY @177 GOTO 86
END

IF ~~ THEN BEGIN 86
  SAY @178
  IF ~~ THEN DO ~SetGlobal("BHMayorGivesWaterQuest","GLOBAL",3)~ JOURNAL @179 EXIT
END

IF ~GlobalLT("BHToldPellAboutMayor","GLOBAL",1) GlobalLT("BHQualReport","GLOBAL",1) !PartyHasItem("BHNOTE1") !PartyHasItem("BHPLOT04") GlobalGT("BHToldOfDeath","GLOBAL",5)~ THEN BEGIN 87
  SAY @180
  IF ~~ THEN REPLY @181 GOTO 88
END

IF ~~ THEN BEGIN 88
  SAY @182
  IF ~~ THEN EXIT
END

IF ~GlobalLT("BHHandQuestAccept","GLOBAL",1) GlobalLT("BHHandQuest","GLOBAL",2) OR(3) AreaCheck("BH0109") AreaCheck("BH0504") Global("BHToldOfDeath","GLOBAL",0)~ THEN BEGIN 89
  SAY @183
  IF ~Dead("BHZAHR") PartyHasItem("BHZAHRJ") Global("BHKillZahrdahlQuest","GLOBAL",1)~ THEN REPLY @21 DO ~TakePartyItem("BHZAHRJ") AddexperienceParty(4000)~ GOTO 27
END

IF ~PartyHasItem("BHPLOT04")~ THEN BEGIN 90
  SAY @184
  IF ~Global("BHToldPellAboutMayor","GLOBAL",0) PartyHasItem("BHPLOT04")~ THEN REPLY @142 GOTO 91
END

IF ~~ THEN BEGIN 91
  SAY @154
  IF ~~ THEN REPLY @155 GOTO 92
END

IF ~~ THEN BEGIN 92
  SAY @185
  IF ~~ THEN DO ~SetGlobal("BHToldPellAboutMayor","GLOBAL",1) TakePartyItem("BHPLOT04")~ GOTO 64
END

APPEND ~IMOEN2J~

IF ~~ THEN BEGIN PELLIMOEN
  SAY @186
  IF ~~ THEN REPLY @187 EXIT
END

END