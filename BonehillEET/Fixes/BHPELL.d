
BEGIN ~BHPELL~

IF ~GlobalLT("BHQuestAccept","GLOBAL",1)
AreaCheck("BG3402")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ah, adventurers.  I am looking to hire someone who can help me out.  May I have a moment of your time, please?~ #89268 */
  IF ~~ THEN REPLY @2 /* ~Sure, why not?~ #56395 */ DO ~SetGlobal("BHQuestAccept","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Maybe.  Lately I feel that everyone wants me to do their dirty work.~ #89269 */ DO ~SetGlobal("BHQuestAccept","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 6.2 0.0
  SAY @4 /* ~Thank you.  I am the resident wizard of Restenford.  It is a small town on the Isle of Lendore.~ #89270 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 /* ~Normally things are very quiet in our little fishing town.  However, lately there seems to be problems that I have not been able to identify.~ #89271 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6 /* ~Some caravans have not arrived.  Also, the few travelers that have come to town have talked about hobgoblins, gnolls, and other assorted creatures harassing their travels.~ #89272 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7 /* ~While I don't claim to think the isle is free of these beings, I am concerned about the growing problems they may be causing.~ #89273 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @8 /* ~We do have some old ruins and caves in the area that they may be hiding in.  Unfortunately, I don't have the time to look into this matter.  There seems to be some greater issues with the Baron's family that I must attend to.~ #89274 */
  IF ~~ THEN GOTO 6
END

IF ~Global("BHQuestAccept","GLOBAL",1)
~ THEN BEGIN 6 // from: 5.0
  SAY @9 /* ~So, <SIRMAAM>?  Will you help us?~ #89275 */
  IF ~~ THEN REPLY @10 /* ~Yes.~ #70082 */ GOTO 8
  IF ~~ THEN REPLY @11 /* ~No.~ #70083 */ GOTO 9
  IF ~~ THEN REPLY @12 /* ~Maybe, could you tell me again what you want?~ #89276 */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY @13 /* ~I am sorry that this situation falls into the same category.  Perhaps after you have had time to help others, you can come back to me?~ #89277 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY @14 /* ~Wonderful.  I won't bother updating your map.  Since we are located off the mainland, you would need a ship to get there.  So I will transfer us there.~ #89278 */
  IF ~~ THEN DO ~SetGlobal("BHQuestAccept","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @15 /* ~Well, I will be here looking for other adventurers.  If you reconsider, please come back.~ #89279 */
  IF ~~ THEN EXIT
END

IF ~AreaCheck("BH0100")
~ THEN BEGIN 10 // from:
  SAY @16 /* ~Here we are.  Welcome to Restenford.  Explore around the town.  You will probably find that some people already know you are here, news travels fast in this little town.  Please do not get the guards after you.  The baron has a standing rule against killing guards, immediate death.  I would not be able to overrule that decision.  Remember that you are a guest here.~ #89280 */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @17 /* ~You will find me either in my home or at the tower I have in the castle.  Please let me know when you find anything unusual.  When you are ready, I will send you back to the temple.~ #89281 */
  IF ~!IfValidForPartyDialogue("Imoen2")
~ THEN DO ~EscapeArea()
~ EXIT
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN DO ~EscapeArea()
~ EXTERN ~IMOEN2J~ 120
END

IF ~GlobalLT("BHHandQuestAccept","GLOBAL",1)
GlobalLT("BHHandQuest","GLOBAL",2)
OR(2)
AreaCheck("BH0109")
AreaCheck("BH0504")
Global("BHToldOfDeath","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY @18 /* ~Well <CHARNAME>, were you able to find anything suspicious here?~ #89282 */
  IF ~GlobalLT("BHToldPelltarQuest","GLOBAL",4)
~ THEN REPLY @19 /* ~Nothing.  Your town is fine.  I don't understand what you were complaining about.~ #89283 */ GOTO 13
  IF ~GlobalLT("BHToldPelltarQuest","GLOBAL",4)
OR(3)
GlobalGT("BHGuardQuest","GLOBAL",0)
GlobalGT("BHGnollQuest","GLOBAL",0)
GlobalGT("BHBanditQuest","GLOBAL",0)
~ THEN REPLY @20 /* ~We have found some weird problems, as well as the normal run of the mill bandits and others attacking your merchants.~ #89284 */ GOTO 14
  IF ~Dead("BHZAHR")
PartyHasItem("BHZAHRJ")
Global("BHKillZahrdahlQuest","GLOBAL",1)
~ THEN REPLY @21 /* ~Zahrdahl is dead.~ #89285 */ DO ~TakePartyItem("BHZAHRJ")
~ GOTO 27
  IF ~Global("BHToldPelltarQuest","GLOBAL",4)
~ THEN REPLY @22 /* ~I think our work here is finished.  Could you send us back please?~ #89286 */ GOTO 16
  IF ~GlobalLT("BHGuardQuest","GLOBAL",1)
GlobalLT("BHGnollQuest","GLOBAL",1)
GlobalLT("BHBanditQuest","GLOBAL",1)
~ THEN REPLY @23 /* ~No Pelltar, nothing yet. We will keep looking.~ #89287 */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @24 /* ~Hummm, strange.  My contacts are usually correct.  Oh well, I guess I will look into this myself.~ #89288 */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @25 /* ~Well then, it sounds like you have been very busy.  Please tell me all that has happened since we last met.~ #89289 */
  IF ~~ THEN REPLY @26 /* ~We talked to the townspeople and heard all sorts of gossip and stories about strange occurences around here.  So we decided to start investigating these stories.~ #89290 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @27 /* ~Good decision, it is amazing what the common folk know about the area.  Sometimes I think they know more than the rest of us so called "educated" people.~ #89291 */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 13.0 12.3
  SAY @28 /* ~Very well.  You have done a great deal of work here of which I am eternally grateful for.  If you are ready, I will send you back to the temple.~ #89292 */
  IF ~~ THEN REPLY @29 /* ~Yes, please do.~ #89143 */ DO ~SetGlobal("BHQuestAccept","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY @30 /* ~Thanks, but not right now.  I think we will explore some more.~ #89293 */ EXIT
  IF ~Global("BHQuestAccept","GLOBAL",4)
~ THEN REPLY @29 /* ~Yes, please do.~ #89143 */ DO ~SetGlobal("BHQuestAccept","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 35.12 35.11 35.8 15.0
  SAY @31 /* ~So, what did you find?~ #89294 */
  IF ~Global("BHToldPellBandit","GLOBAL",0)
OR(2)
Global("BHBanditQuest","GLOBAL",3)
Global("BHOrcBanditsDone","GLOBAL",1)
~ THEN REPLY @32 /* ~We found out that bandits were attacking the merchant caravans coming in from the east.  So we went out to Bald Hill and were attacked by them.  Turns out it was a band of orcs with a half-orc cleric leading them.~ #89295 */ DO ~IncrementGlobal("BHToldPelltarQuest","GLOBAL",1)
~ GOTO 18
  IF ~GlobalGT("BHGuardQuest","GLOBAL",1)
Global("BHToldPellRats","GLOBAL",0)
~ THEN REPLY @33 /* ~We found out that there was a serious rat problem down near the old guard house.  So we went to investigate and discovered an old cave system underneath.~ #89296 */ DO ~IncrementGlobal("BHToldPelltarQuest","GLOBAL",1)
~ GOTO 21
  IF ~Global("BHGnollQuest","GLOBAL",2)
Global("BHToldPellGnolls","GLOBAL",0)
~ THEN REPLY @34 /* ~We heard about the gnolls attacking the town.  So we went out to Tri-Top and found their whole tribe.  After a long battle with them, we found that their leader was an Ogre Mage.  It was bloody, but the gnolls won't be bothering you anytime soon.~ #89297 */ DO ~IncrementGlobal("BHToldPelltarQuest","GLOBAL",1)
~ GOTO 22
  IF ~Global("BHToldPellBone","GLOBAL",0)
OR(2)
GlobalGT("BHBoneHillQuest","GLOBAL",1)
GlobalGT("BHRestenfordEnemies","GLOBAL",0)
~ THEN REPLY @35 /* ~We went out to Bone Hill and looked through the ruins there.~ #89298 */ DO ~IncrementGlobal("BHToldPelltarQuest","GLOBAL",1)
~ GOTO 28
  IF ~PartyHasItem("BHZAHRJ")
~ THEN REPLY @36 /* ~You may want this.  It is the journal of Zahrdahl, the bait-dealer.~ #89299 */ GOTO 24
  IF ~~ THEN REPLY @37 /* ~We need to investigate these local rumors some more.~ #89300 */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @38 /* ~Hmm, well organized and well lead.  I hope that leader wasn't under someone else's control.~ #89301 */
  IF ~~ THEN REPLY @39 /* ~We didn't find anything indicating that.  He made it sound like he was a "liberator" of goods or something.~ #89302 */ GOTO 19
  IF ~~ THEN REPLY @40 /* ~It is possible, but we didn't find anything else.~ #89303 */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @41 /* ~Hopefully it was just that and nothing more sinister.~ #89304 */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 18.1
  SAY @42 /* ~Either way, the town is safer because of your heroics.  Thank you.~ #89305 */
  IF ~~ THEN DO ~SetGlobal("BHToldPellBandit","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY @43 /* ~Caves?  Caves...hmm, yes yes.  About a hundred years ago or even more, they had build some tunnels under the original barracks throughout the town.  They were used for storing weapons and armor.  Once we started using magical storage, those tunnels were supposed to be filled in.  The ones near the river would flood and so they were too dangerous to keep maintained.  I wonder how many of them still exist?  Anyway, going back to your adventures.  You were saying?~ #89306 */
  IF ~~ THEN REPLY @44 /* ~Someone else had found that cave and was using it as a hide out.  We found the body of a thief.  There was also some skeletons and other undead that we must have disturbed.  We also found a huge rat nest.  We killed every one that we came across but it is possible that more are out there.~ #89307 */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY @45 /* ~An Ogre Mage leading the gnolls?  That is really strange.  I have never heard of gnolls allowing another creature to lead them.  They will work with orcs and others but never actually have one as a leader.  Very strange...  I assume you investigated other rumors and gossip?~ #89308 */
  IF ~~ THEN DO ~SetGlobal("BHToldPellGnolls","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY @46 /* ~Yes, well that is something the guards can handle I think.  It may be good to see Gelpas leading the "rat patrol", eh?  Anyway, thank you for this weird discovery.  It would be best for the guards to search for more caves and finish the job of filling them in.  We wouldn't want anyone sinister using them.~ #89309 */
  IF ~~ THEN DO ~SetGlobal("BHToldPellRats","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.4
  SAY @47 /* ~Uh, okay, I'll bite.  Why do I want this?~ #89310 */
  IF ~~ THEN REPLY @48 /* ~Because he was really a spy for the duke.~ #89311 */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @49 /* ~What!  So the stories were true about a spy in town.  Brilliant detective work.  The baron needs to know about this immediately.  I assume you have taken care of this "bait-dealer"?~ #89312 */
  IF ~Dead("BHZAHR")
~ THEN REPLY @50 /* ~Oh yes.  He was a mage of some sort.  He had a really nice dagger but he won't need it anymore.~ #89313 */ DO ~AddexperienceParty(4000)
TakePartyItem("BHZAHRJ")
~ GOTO 27
  IF ~!Dead("BHZAHR")
~ THEN REPLY @51 /* ~No, we came to you first.~ #89314 */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @52 /* ~Good thinking.  I suspect he may be too powerful for the guards.  Please eliminate him immediately.  You will want to show him his journal.  That may help you to make him talk.  Return to me with it and I will take his book to Baron Grellus.~ #89315 */
  IF ~~ THEN DO ~SetGlobal("BHKillZahr","GLOBAL",1)
SetGlobal("BHKillZahrdahlQuest","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 89.0 25.0 12.2
  SAY @53 /* ~That is a relief.  We have enough problems with the elven overlords without them sending spies.  Never a dull day around here.  Thank you for your work here.~ #89316 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.3
  SAY @54 /* ~And?~ #72307 */
  IF ~Dead("BHTELV") !Dead("BHWRAITH") PartyHasItem("BHTELVBK")~ THEN REPLY @55 /* ~A wizard named Telvar was leading a band of hobgoblins.  We eliminated all of them.  We have his journal.  Here you go.~ #89317 */ GOTO 29
  IF ~!Dead("BHTELV") Dead("BHWRAITH")~ THEN REPLY @56 /* ~A wraith was controlling all sorts of undead around the ruins on Bone Hill.  We destroyed him and the undead.~ #89318 */ GOTO 30
  IF ~Dead("BHTELV") Dead("BHWRAITH") PartyHasItem("BHTELVBK")~ THEN REPLY @57 /* ~We found a wizard and a wraith.  The wizard was leading a band of hobgoblins and the wraith was controlling some undead.  They were working together to build an army.  Restenford was going to be their first attack.  We destroyed them and their followers.  The wizard had a journal explaining their plans.  Here you go.  He won't be needing it.~ #89319 */ GOTO 31
  IF ~OR(2) GlobalLT("BHBoneHillQuest","GLOBAL",2) GlobalLT("BHRestenfordEnemies","GLOBAL",1)~ THEN REPLY @58 /* ~We couldn't find anything wrong.  There was nothing there.~ #89320 */ GOTO 45
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @59 /* ~Hobgoblins and a wizard?  Well they would be easy to manipulate.  Thank you for taking care of this problem.  I'll be sure to let the baron know of this.~ #89321 */
  IF ~~ THEN DO ~AddexperienceParty(1000)
TakePartyItem("BHTELVBK")
SetGlobal("BHToldPellBone","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY @60 /* ~A wraith and other undead?  I would expect some undead there but this sounds serious.  Thank you for investigating this for us.~ #89322 */
  IF ~~ THEN DO ~AddexperienceParty(1000)
SetGlobal("BHToldPellBone","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY @61 /* ~Good Heavens!  We were going to be attacked?  This is terrible.  I am so glad I found you in time to help us.  I really need to let the baron know about this.~ #89323 */
  IF ~~ THEN DO ~AddexperienceParty(1000)
TakePartyItem("BHTELVBK")
SetGlobal("BHToldPellBone","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY @62 /* ~<CHARNAME>, please tell me this is not true.~ #89324 */
  IF ~~ THEN REPLY @63 /* ~It isn't true.  I have no idea what Gelpas is talking about.~ #89325 */ EXTERN ~BHGELPAS~ 7
END

IF ~Global("BHHandQuestAccept","GLOBAL",1)
OR(2)
AreaCheck("BH0109")
AreaCheck("BH0504")
Global("BHToldOfDeath","GLOBAL",0)
~ THEN BEGIN 33 // from:
  SAY @64 /* ~Well <CHARNAME>, looks like we need your help again.  Other than talking to Welcar, I am not sure what other recommendations I can give you.~ #89326 */
  IF ~~ THEN REPLY @65 /* ~Very well, I will go talk to him.~ #88877 */ DO ~SetGlobal("BHHandQuestAccept","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @66 /* ~Yes he was, he just left.  Thank you for this information.

Bandits?  <CHARNAME>, I thought you said you took care of the bandits?~ #89327 */
  IF ~Global("BHToldPellBandit","GLOBAL",1)
~ THEN REPLY @67 /* ~We did.  This must be another group.  I will go out there and found out what is going on.~ #89328 */ DO ~SetGlobal("BHHandQuestAccept","GLOBAL",4)
SetGlobal("BHHandQuest","GLOBAL",1)
~ EXIT
  IF ~GlobalLT("BHToldPellBandit","GLOBAL",1)
~ THEN REPLY @68 /* ~We hadn't gotten to that problem yet.  This may be another group, or it could be the same one.  I will go out there and found out what is going on.~ #89329 */ DO ~SetGlobal("BHHandQuestAccept","GLOBAL",4)
SetGlobal("BHHandQuest","GLOBAL",1)
~ EXIT
END

IF ~GlobalLT("BHQuestAccept","GLOBAL",7)
GlobalGT("BHHandQuest","GLOBAL",0)
OR(2)
AreaCheck("BH0109")
AreaCheck("BH0504")
Global("BHToldOfDeath","GLOBAL",0)
!GlobalGT("BHQuestAccept","GLOBAL",5)
~ THEN BEGIN 35 // from:
  SAY @69 /* ~Did you find anything?~ #89330 */
  IF ~Dead("BHBANDT3")
GlobalGT("BHHandQuest","GLOBAL",2)
Global("BHHandSearch","GLOBAL",0)
Global("BHShowPellHandNote","GLOBAL",0)
~ THEN REPLY @70 /* ~We killed the bandits.  On one of them we found a note.  It talks about a "Hand of Glory", whatever that is.  I think that is what they were looking for.~ #89331 */ DO ~SetGlobal("BHShowPellHandNote","GLOBAL",1)
AddexperienceParty(2000)
~ GOTO 36
  IF ~GlobalLT("BHHandNoteDecipher","GLOBAL",4)
PartyHasItem("BHGHNOTE")
Global("BHHandPellSawMap","GLOBAL",0)
~ THEN REPLY @71 /* ~We explored the old sewers and found the body of a wizard or someone dressed like one.  We also found this note.  We aren't really sure what it is, but think it might be a map. Does that make any sense to you?~ #89332 */ GOTO 38
  IF ~OR(2)
GlobalLT("BHHandQuest","GLOBAL",3)
GlobalLT("BHHandGrave","GLOBAL",6)
~ THEN REPLY @72 /* ~Not yet.~ #24097 */ GOTO 41
  IF ~Global("BHToldPellLighthouse","GLOBAL",0)
Dead("BHSIRIUS")
!PartyHasItem("BHSIRIUS")
~ THEN REPLY @73 /* ~Yes, we found the real thief.  His name was Sirius and he was hired by the elven overlords to destroy the baron's control here.~ #89333 */ DO ~SetGlobal("BHToldPellLighthouse","GLOBAL",1)
~ GOTO 42
  IF ~Global("BHToldPellLighthouse","GLOBAL",0)
Dead("BHSIRIUS")
PartyHasItem("BHSIRIUS")
~ THEN REPLY @74 /* ~Yes, we found the real thief.  His name was Sirius and he was hired by the elven overlords to destroy the baron's control here.  Here is his journal.~ #89334 */ DO ~TakePartyItem("BHSIRIUS")
SetGlobal("BHToldPellLighthouse","GLOBAL",1)
~ GOTO 42
  IF ~Global("BHHandSearch","GLOBAL",2)
GlobalLT("BHHandNoteDecipher","GLOBAL",1)
Global("BHTellPellSewer","GLOBAL",0)
~ THEN REPLY @75 /* ~Your town history books tell of a sewer system.  Do you know anything about it?~ #89335 */ DO ~SetGlobal("BHTellPellSewer","GLOBAL",1)
~ GOTO 44
  IF ~GlobalLT("BHToldPellBomarc","GLOBAL",1)
Global("BHHandGrave","GLOBAL",6)
~ THEN REPLY @76 /* ~We found poor Bomarc stuffed into a fresh grave along with the thief Reynard who was hanged just recently.~ #89336 */ GOTO 42
  IF ~Global("BHHandRavella","GLOBAL",1)
Global("BHTellPellRavella","GLOBAL",0)
~ THEN REPLY @77 /* ~We spoke with the guards at the western gate near the "Hanging Tree". They told us about the thief Reynard who was hanged last week, but they didn't know very much about it. We're waiting for Ravella to return to duty so we might speak to her about it. Maybe she saw something.~ #89337 */ DO ~SetGlobal("BHTellPellRavella","GLOBAL",1)
~ GOTO 41
  IF ~PartyHasItem("BHZAHRJ")
!Dead("BHZahr")
~ THEN REPLY @78 /* ~We heard some rumors that led us to search Zahrdahl's home more thoroughly than the first time we looked.~ #89338 */ GOTO 17
  IF ~GlobalLT("BHKillZahrdahlQuest","GLOBAL",1)
Dead("BHZahr")
Global("BHKillZahr","GLOBAL",1)
~ THEN REPLY @79 /* ~This is what happened when we confronted Zahrdahl about the journal.~ #89339 */ DO ~SetGlobal("BHKillZahr","GLOBAL",1)
~ GOTO 89
  IF ~Dead("BHZAHR")
PartyHasItem("BHZAHRJ")
Global("BHKillZahrdahlQuest","GLOBAL",1)
~ THEN GOTO 89
  IF ~Dead("BHZAHR")
PartyHasItem("BHZAHRJ")
GlobalLT("BHKillZahrdahlQuest","GLOBAL",1)
~ THEN REPLY @80 /* ~Pelltar! We must speak with you!.~ #89340 */ GOTO 17
  IF ~GlobalLT("BHToldPelltarQuest","GLOBAL",4)
OR(6)
Global("BHBanditQuest","GLOBAL",3)
Global("BHOrcBanditsDone","GLOBAL",1)
GlobalGT("BHGuardQuest","GLOBAL",1)
Global("BHGnollQuest","GLOBAL",2)
GlobalGT("BHBoneHillQuest","GLOBAL",1)
GlobalGT("BHRestenfordEnemies","GLOBAL",0)
~ THEN REPLY @81 /* ~We haven't discovered anything regarding the thefts and murders, but we did come across information about some of the original problems that have been plaguing the area.~ #89341 */ GOTO 17
  IF ~Global("BHToldPellBomarc","GLOBAL",1)
~ THEN REPLY @72 /* ~Not yet.~ #24097 */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @82 /* ~Hand of Glory?  No, I can't say I have ever heard of such a thing.~ #89342 */
  IF ~IfValidForPartyDialogue("FABIO")
~ THEN EXTERN ~BHFABIOJ~ 9
  IF ~!IfValidForPartyDialogue("FABIO")
~ THEN REPLY @83 /* ~Can we look through your books here?  Maybe one of them can tell us about it?~ #89343 */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @84 /* ~Books?  Yes!  Good idea, it may take you awhile.  Don't bother my apprentices though.  They have their own work to do.~ #89344 */
  IF ~~ THEN DO ~SetGlobal("BHHandSearch","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY @85 /* ~It is very hard to read, but hmmm....  It looks like a really badly drawn map of this town.  Assuming this line is the river, these must be the houses and stores around here.  Why would there be checkmarks?~ #89345 */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @86 /* ~Oh!  I have it, by loving Mystra!  The checkmarks are next to the buildings that someone stole from.  See here, these two are the two warehouses that Gelpas was talking about.  While you were gone, I talked to him about the other thefts.  They match this perfectly.  Go talk to Welcar or to Zelmar, I hear he was also robbed.  These others would be the homes.~ #89346 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @87 /* ~Strange.  Why would the lighthouse be on here?  Bomarc is almost a hermit.  He wouldn't have anything to steal.  Well, it doesn't have a checkmark, so maybe this is just a landmark or something.~ #89347 */
  IF ~!Dead("BHSirius")
Global("BHHandPellSawMap","GLOBAL",0)
~ THEN REPLY @88 /* ~Either way, maybe we should check out the lighthouse, too.~ #89348 */ DO ~SetGlobal("BHHandLightHouseOpen","GLOBAL",1)
SetGlobal("BHHandPellSawMap","GLOBAL",1)
~ EXIT
  IF ~Dead("BHSirius")
GlobalLT("BHToldPellLighthouse","GLOBAL",1)
~ THEN REPLY @89 /* ~We have already been to the lighthouse. We found the real thief.  His name was Sirius and he was hired by the elven overlords to destroy the baron's control here.~ #89349 */ DO ~SetGlobal("BHHandPellSawMap","GLOBAL",1)
SetGlobal("BHToldPellLighthouse","GLOBAL",1)
~ GOTO 42
  IF ~Global("BHToldPellLighthouse","GLOBAL",1)
Dead("BHSirius")
~ THEN REPLY @90 /* ~We were thinking it was because the thief was using it as his base of operations?~ #89350 */ DO ~SetGlobal("BHHandPellSawMap","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.7 35.2
  SAY @91 /* ~Please keep looking.  Gelpas won't allow you to leave until you resolve these problems.~ #89351 */
  IF ~~ THEN EXIT
  IF ~Global("BHHandRavella","GLOBAL",1)
Global("BHTellPellRavella","GLOBAL",0)
~ THEN REPLY @92 /* ~We'll let you know what we find after we go back and talk with Ravella.~ #89352 */ DO ~SetGlobal("BHTellPellRavella","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.1 35.6 35.4 35.3
  SAY @93 /* ~So the overlords are at it again?  This is the most extreme tactic they have used on us.  I will notify Gelpas and the baron immediately.  You have done a great service for this town.~ #89353 */
  IF ~GlobalGT("BHHandQuest","Global",2)
Global("BHHandGrave","Global",6)
GlobalLT("BHQuestAccept","GLOBAL",7)
PartyHasItem("BHGHAND")
~ THEN REPLY @94 /* ~Good.  I hope I am done here, I need to finish my own quest back on the mainland.~ #89354 */ GOTO 43
  IF ~GlobalLT("BHHandQuest","GLOBAL",3)
GlobalLT("BHHandGrave","GLOBAL",6)
~ THEN REPLY @95 /* ~Thank you.  We still need to hunt down the new marauders North of Restenford, and we really would like to find out what happened to Bomarc as well.~ #89355 */ DO ~SetGlobal("BHStayForMarauders","GLOBAL",1)
SetGlobal("BHStayForBomarc","GLOBAL",1)
~ EXIT
  IF ~Global("BHStayForMarauders","GLOBAL",1)
GlobalLT("BHHandQuest","GLOBAL",3)
~ THEN REPLY @96 /* ~Thank you.  We still need to hunt down the new marauders North of Restenford.~ #89356 */ EXIT
  IF ~Global("BHStayForBomarc","GLOBAL",1)
GlobalLT("BHHandGrave","GLOBAL",6)
~ THEN REPLY @97 /* ~Thank you.  We really would like to find out what happened to Bomarc before we leave.~ #89357 */ EXIT
  IF ~GlobalGT("BHHandQuest","GLOBAL",2)
GlobalLT("BHHandGrave","GLOBAL",6)
GlobalLT("BHStayForBomarc","GLOBAL",1)
~ THEN REPLY @97 /* ~Thank you.  We really would like to find out what happened to Bomarc before we leave.~ #89357 */ DO ~SetGlobal("BHStayForBomarc","GLOBAL",1)
~ EXIT
  IF ~GlobalLT("BHHandQuest","GLOBAL",3)
Global("BHHandGrave","GLOBAL",6)
GlobalLT("BHStayForMarauders","GLOBAL",1)
~ THEN REPLY @96 /* ~Thank you.  We still need to hunt down the new marauders North of Restenford.~ #89356 */ DO ~SetGlobal("BHStayForMarauders","GLOBAL",1)
~ EXIT
  IF ~GlobalGT("BHHandQuest","GLOBAL",2)
Global("BHHandGrave","GLOBAL",6)
GlobalLT("BHQuestAccept","GLOBAL",7)
!PartyHasItem("BHGHAND")
~ THEN REPLY @98 /* ~We'll head over to the lighthouse and see if we can track down Bomarc's murderer.~ #89358 */ DO ~SetGlobal("BHToldPellBomarc","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @99 /* ~Indeed, we can never thank you enough.  I will cast the spells to send you back.  I will take the Glorious Hand, my students will find it worth studying.  Since it only effects humanoids, I can't image it being of much use to a powerful adventurer like yourself.~ #89359 */
  IF ~!InMyArea("Fabio")
!InParty("Fabio")
~ THEN DO ~TakePartyItem("BHGHAND")
TakePartyItem("BHBPEARL")
CreateCreature("BHFabio",[380.172],0)
SetGlobal("BHQuestAccept","GLOBAL",6)
~ EXIT
  IF ~InParty("Fabio")
~ THEN DO ~TakePartyItem("BHGHAND")
TakePartyItem("BHBPEARL")
SetGlobal("BHQuestAccept","GLOBAL",6)
~ EXIT
  IF ~!InParty("Fabio")
InMyArea("Fabio")
~ THEN DO ~TakePartyItem("BHGHAND")
TakePartyItem("BHBPEARL")
SetGlobal("BHQuestAccept","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 35.5
  SAY @100 /* ~Sewers?  Oh, the drain system for when the river overflows.  Yes, that is on the west side of town.  Something happened down there, but I can't remember.  Hmm.  Go talk to Welcar, he would remember what it was.~ #89360 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.3
  SAY @101 /* ~Nothing at all?  Strange considering all the rumors around here.~ #89361 */
  IF ~~ THEN REPLY @102 /* ~That is why they are rumors and not facts.~ #89362 */ EXIT
END

IF ~Global("BHToldOfDeath","GLOBAL",5)
!Dead("Fabio")
~ THEN BEGIN 46 // from:
  SAY @103 /* ~Ah good, Fabio did found you.  As he may have explained to you, this is a serious matter that I think only adventurers like yourself can handle.~ #89363 */
  IF ~~ THEN REPLY @104 /* ~I have some details, could you go over everything again?~ #89364 */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 83.0 46.0
  SAY @105 /* ~Of course.  Yalta was able to cast Speak to the Dead and we talked to Grellus about what he remembers.  Unfortunately not much.  The attacker struck from behind and killed him with one blow.  He never saw who it was.~ #89365 */
  IF ~~ THEN REPLY @106 /* ~What about raising his body?~ #89366 */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @107 /* ~Qualton is the only priest here that is able to perform that ritual.  He says that something is blocking the baron's spirit so it can't return.  At this point, the baron's body is probably too far gone to do anything but make a zombie out of him.  The attacker struck when no one was around so the body laid here for hours before Fairwind discovered him this morning.~ #89367 */
  IF ~~ THEN REPLY @108 /* ~Any clues at all?~ #89368 */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @109 /* ~Actually yes.  We found three items in the bedroom that don't belong there.  A golden lute string was found under the bed.  A small red ruby was found next to the body and a red leather button was found in the baron's hand.~ #89369 */
  IF ~~ THEN REPLY @110 /* ~A button?  But you said he never saw the attacker?~ #89370 */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @111 /* ~That is the strange part of his story.  He must have grasped at the attacker while dying but his spirit doesn't remember anything about it.  It is possible the attacker doesn't know he is missing it.~ #89371 */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @112 /* ~To add to this, we have found that three strangers entered Restenford yesterday from the South gate.  That is the gate on the road to Garrotten.~ #89372 */
  IF ~~ THEN REPLY @113 /* ~Tell me about each one.~ #89373 */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @114 /* ~The first was an old man with long white hair.  He wore a blue robe with the symbol of Osprem on it.  He ate at Falco's tavern and Falco said that he wore a holy symbol of a whale that had red ruby eyes.  The size of the rubies matches the ruby we found here.~ #89374 */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY @115 /* ~I know this man, he is the high priest named Harper and he runs a temple in Garrotten.  I don't understand what he would be doing here without some of his assistants.  Supposedly, he was in town by himself.~ #89375 */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @116 /* ~The second is a man that stopped in at the same tavern a few hours later.  He had a lute and played some songs for the patrons.  According to some who saw him, the lute had gold strings.~ #89376 */
  IF ~Exists("Fabio")
~ THEN EXTERN ~BHFABIO~ 43
  IF ~~ THEN REPLY @117 /* ~So this one must be a bard.~ #89377 */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.1
  SAY @118 /* ~The last visitor was a large round man who came to see Zelmar at the West Wind.  He was looking to purchase some wine caskets.  He said he was Abraham whom I know is the innkeeper in Garrotten.  He wore a red vest with red leather buttons on it.~ #89378 */
  IF ~~ THEN REPLY @120 /* ~Are you saying that all three of them may have killed the baron?~ #89379 */ UNSOLVED_JOURNAL @119 /* ~Find the killer of Baron Grellus.~ #89380 */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @121 /* ~I don't know what to think.  I can't believe that all three were involved.  None of them have a reason to kill him that I know of.  One of them must have done this and planted the evidence of the other two.  I doubt the killer intended to leave something of their own behind.~ #89381 */
  IF ~~ THEN REPLY @122 /* ~So all I need to do is bust some heads until one of them talks?~ #89382 */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @123 /* ~No!  Absolutely not!  Unfortunately, Garrotten is under the protection of the duke just like we are.  Anything you do that points back to Restenford could bring the duke's army down on us.~ #89383 */
  IF ~~ THEN REPLY @124 /* ~Well then what do you suggest?~ #89384 */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY @125 /* ~You are going to have to go there and investigate this matter without letting anyone know you are from here.  If Lady Arrness finds out about you, she will either throw you out of town or worse, have you killed.  She is the town mayor.  I know she envies Restenford and would like nothing better than to see the baron's family removed.  However, I couldn't imagine her being involved in this.  The duke would have her head if he knew she caused such unrest in his lands.  He has enough problems with the border wars.~ #89385 */
  IF ~~ THEN REPLY @126 /* ~So I need to scout around town until I find something?  That doesn't help much.~ #89386 */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY @127 /* ~You have heard of the rumors of Garrotten?~ #89387 */
  IF ~Exists("Fabio")
~ THEN EXTERN ~BHFABIO~ 44
  IF ~~ THEN REPLY @128 /* ~If you want someone dead, go to Garrotten.  Yes, there is supposed to be an assassin's guild there.~ #89388 */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.1
  SAY @129 /* ~There is no proof that such a guild exists.  We have to assume that some people in Garrotten are actually good decent folk.~ #89389 */
  IF ~~ THEN JOURNAL @130 /* ~So the thought is that someone in the town of Garrotten was involved in the murder of Baron Grellus.  I have three suspects; Harper, a high priest, Abraham, a innkeeper, and Balmorrow, a bard and theater owner.  Why would any of these people want the Baron killed?  Is one of them really an assassin hired to kill him?  If so, which one?  And who hired the killer?~ #89390 */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY @131 /* ~Having said that, if you do find proof of an assassin's guild, destroy it.  Bring me back proof so we can justify your actions to the duke.  Also to Lady Fairwind since she is now the ruler of Restenford.  Destruction of such an evil guild would make these troubled times much safer for all good folk.  The duke would want any such guild destroyed.  If Lady Arrness is harboring such a guild, she gets what judgement you give her.~ #89391 */
  IF ~~ THEN DO ~SetGlobal("BHToldOfDeath","GLOBAL",6)
~ UNSOLVED_JOURNAL @132 /* ~Assassin's Guild

Find the truth to the rumor about an assassin's guild in Garrotten.~ #89392 */ GOTO 71
END

IF ~Global("BHQualConfessed","GLOBAL",3)
~ THEN BEGIN 62 // from:
  SAY @133 /* ~Abbot Qualton, your actions were inexcusable.  The baroness will have to decide your fate.  Guards, take him away.~ #89393 */
  IF ~~ THEN DO ~TakePartyItem("BHNOTE1")
SetGlobal("BHQualConfessed","GLOBAL",4)
~ EXIT
END

IF ~Global("BHQualConfessed","GLOBAL",5)
~ THEN BEGIN 63 // from:
  SAY @134 /* ~<CHARNAME> I don't know how to thank you.  I know that Qualton had led a fight with a intellect devourer several months ago.  I wonder if the battle resulted in his behavior now.~ #89394 */
  IF ~!PartyHasItem("BHPLOT04")
~ THEN REPLY @135 /* ~Perhaps.  I have met other people with mental problems.  None seemed to be this devious though.~ #89395 */ GOTO 64
  IF ~PartyHasItem("BHPLOT04")
~ THEN REPLY @135 /* ~Perhaps.  I have met other people with mental problems.  None seemed to be this devious though.~ #89395 */ GOTO 90
END

IF ~~ THEN BEGIN 64 // from: 92.0 70.0 63.0
  SAY @136 /* ~In any case, I guess you are ready to be sent back?  I know you have your own problems to resolve right now, don't you Child of Bhaal?~ #89396 */
  IF ~~ THEN REPLY @137 /* ~You know also?  Does everyone but me know my life?  Sigh.  Yes, I have to stop Sarevok.~ #89397 */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @138 /* ~Yes.  I will send you just outside Baldur's Gate.  Just to let you know, you are probably considered a fugitive by now.  Stay away from the Flaming Fist guards and good luck.~ #89398 */
  IF ~!InParty("Fabio")
~ THEN DO ~SetGlobal("BHAllDone","GLOBAL",2)
~ EXTERN ~BFABIO~ 15
  IF ~InParty("Fabio")
~ THEN DO ~SetGlobal("BHAllDone","GLOBAL",1)
~ EXIT
END

IF ~OR(2)
PartyHasItem("BHNOTE1")
PartyHasItem("BHPLOT04")
~ THEN BEGIN 66 // from:
  SAY @139 /* ~Greetings <CHARNAME>, what information were you able to gather?~ #89399 */
  IF ~Global("BHQualReport","GLOBAL",0)
PartyHasItem("BHNOTE1")
~ THEN REPLY @140 /* ~We found this letter from Abbot Qualton to Tellish.  The abbot hired him to kill the baron.~ #89400 */ GOTO 67
  IF ~Global("BHQualReport","GLOBAL",1)
Dead("BHQUAL")
~ THEN REPLY @141 /* ~Qualton attacked us once we showed him the letter.  He started to ramble like he was two people in one.  One voice said to kill us and the other said not to.  He did say that he planned to marry Andrella and then he was going to kill the duke.~ #89401 */ GOTO 70
  IF ~Global("BHToldPellAboutMayor","GLOBAL",0)
PartyHasItem("BHPLOT04")
~ THEN REPLY @142 /* ~The assassin's guild is no more.  I found these documents in Mayor Arrness's room.  They contain all her information about the guild; which jobs, who paid, and who was killed.  There is information here about each spy she has throughout the isles.~ #89402 */ GOTO 73
  IF ~!PartyHasItem("BHNOTE1")
!PartyHasItem("BHPLOT04")
~ THEN REPLY @143 /* ~Nothing yet.~ #58582 */ GOTO 75
  IF ~Global("BHMayorGivesWaterQuest","GLOBAL",2)
!Dead("BHARRNESS")
~ THEN REPLY @144 /* ~The mayor caught on to us.  She arrested our three suspects and said that Abraham, the innkeeper, had admitted to the crime.  He, Balmorrow, and Harper were all part of an assassin's guild.~ #89403 */ GOTO 84
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY @145 /* ~What?  Impossible!  He is the leader of the local church.  He is a holy man.  There must be some mistake.~ #89404 */
  IF ~Dead("BHQUAL")
~ THEN REPLY @146 /* ~Read it.  You know his handwriting better than I would.  By the way, it doesn't matter.  I already confronted him on it and he attack.  Qualton is dead.~ #89405 */ GOTO 69
  IF ~!Dead("BHQUAL")
~ THEN REPLY @147 /* ~Read it.  You know his handwriting better than I would.~ #89406 */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY @148 /* ~Hmm, it is his writing.  Okay, go confront him on this.  We will see if he admits to it.~ #89407 */
  IF ~~ THEN DO ~SetGlobal("BHQualReport","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 69 // from: 67.0
  SAY @149 /* ~Hmm, it is his writing.  I guess at this point it doesn't matter.  So Qualton wanted the baron dead?  Did he say why?~ #89408 */
  IF ~~ THEN REPLY @150 /* ~He started to ramble like he was two people in one.  One voice said to kill us and the other said not to.  He did say that he planned to marry Andrella and then he was going to kill the duke.~ #89409 */ DO ~TakePartyItem("BHNOTE1")
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0 66.1
  SAY @151 /* ~Two people?  A while back he led a team against an intellect devourer that somehow got shipped here.  I wonder if it destroyed part of his mind.  He had always acted funny since the incident.  I never would have expected this.~ #89410 */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 71 // from: 61.0
  SAY @152 /* ~So, you could see about the truth to this guild.  Try to hire someone and work your way up their chain of command.  You could also find out if any of the three suspects is truly innocent and see what they have to say about them being framed.  They live there, one of them must be able to help you.  Other than that, I have no ideas to help you with.  You will have to use your best judgement on what to do and say.~ #89411 */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @153 /* ~The road to Garrotten is out the south gate.  It should take you about a day to get there.  I would transport you but I have never been there myself.  Teleporting someone to an unknown location is disastrous.  I have known wizards to teleport right into rocks or trees.  Make sure you have the supplies you need, I don't know how well stocked they are in Garrotten for potions or magic items.  When you return, come straight here so we can inform the baroness of the situation.  In the meantime, I will go check on the family and see how they are coping.~ #89412 */
  IF ~~ THEN DO ~RevealAreaOnMap("BH2000")
GiveItemCreate("BHPLOT01",Player1,0,0,0)
GiveItemCreate("BHPLOT02",Player1,0,0,0)
GiveItemCreate("BHPLOT03",Player1,0,0,0)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 66.2
  SAY @154 /* ~So the guild did exist and the mayor was the leader?  It makes sense that the guild couldn't operate without her knowledge.  I assume you removed everyone in the guild you could find?~ #89413 */
  IF ~~ THEN REPLY @155 /* ~Oh yes, it was a tough battle against most of her guards but we succeeded.~ #89414 */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY @156 /* ~Good job.  Now I just need information about why someone wanted the baron dead.~ #89415 */
  IF ~~ THEN DO ~SetGlobal("BHToldPellAboutMayor","GLOBAL",1)
TakePartyItem("BHPLOT04")
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 66.3
  SAY @157 /* ~Return to me once you have proof about a guild and why the baron was murdered.~ #89416 */
  IF ~~ THEN EXIT
END

IF ~AreaCheck("BG2626")
Global("BHToldOfDeath","GLOBAL",1)
~ THEN BEGIN 76 // from:
  SAY @158 /* ~<CHARNAME>!  Thank Mystra I found you.~ #89417 */
  IF ~~ THEN REPLY @159 /* ~Pelltar?  What are you doing here?~ #89418 */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY @160 /* ~I need your assistance once again.  The baron has been murdered!  It was sometime last night.  Yalta, and Qualton haven't been able to bring him back.  We need your help.~ #89419 */
  IF ~~ THEN REPLY @161 /* ~What!?  Tell me what you know.~ #89128 */ DO ~SetGlobal("BHToldOfDeath","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BHCUTBAR")
~ EXIT
  IF ~~ THEN REPLY @162 /* ~And I am supposed to care because...?~ #89129 */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY @163 /* ~Oh, so saving Restenford once was enough for you?  You don't care anymore now?  Sir BillyBob said this might happen with you.~ #89131 */
  IF ~~ THEN REPLY @164 /* ~Your town was a headache I don't want to relive.  Go away and find some other fool.~ #89132 */ GOTO 79
  IF ~~ THEN REPLY @165 /* ~Look, I'm sorry but I just escaped from jail.  The guards think I wrongly murdered someone who happens to be causing the disruptions in the Sword Coast.  I'm a bit tense right now and I need to go finish this job.~ #89133 */ GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 82.1 80.1 78.0
  SAY @166 /* ~So be it.~ #89134 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 78.1
  SAY @167 /* ~No one on the Lendore islands is going to know about this so you should be safe there.  I'll talk to Lady Fairwind and see if there is something we can do to help.  In the meantime, we need you now.~ #89420 */
  IF ~~ THEN REPLY @168 /* ~Fine, I'll help.  Tell me what you know.~ #89136 */ DO ~SetGlobal("BHToldOfDeath","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BHCUTBAR")
~ EXIT
  IF ~~ THEN REPLY @169 /* ~No, I really have to sort this out now.  I can't help you.~ #89421 */ GOTO 79
END

IF ~AreaCheck("BG2626")
Global("BHToldOfDeath","GLOBAL",3)
~ THEN BEGIN 81 // from:
  SAY @170 /* ~All we know is that he never saw the killer.  No one knows if the rest of the family will be attacked next or if it was just a single assassination attempt.~ #89137 */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY @171 /* ~I can send us all back to Restenford.  Will you help?~ #89422 */
  IF ~~ THEN REPLY @10 /* ~Yes.~ #70082 */ DO ~SetGlobal("BHToldOfDeath","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY @11 /* ~No.~ #70083 */ GOTO 79
END

IF ~Global("BHToldOfDeath","GLOBAL",5)
Dead("Fabio")
~ THEN BEGIN 83 // from:
  SAY @172 /* ~Good, we have arrived.  This is a serious matter that I think only adventurers like yourself can handle.~ #89423 */
  IF ~~ THEN REPLY @173 /* ~Could you go over everything again?~ #89424 */ GOTO 47
END

IF ~~ THEN BEGIN 84 // from: 66.4
  SAY @174 /* ~This Abraham fellow admitted he killed the baron?  When did she tell you this.~ #89425 */
  IF ~~ THEN REPLY @175 /* ~Right before we left to come here.  Why?~ #89426 */ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY @176 /* ~Because someone killed Lady Fairwind last night!~ #89427 */
  IF ~~ THEN REPLY @177 /* ~What?  But that should be impossible.  All three suspects are in jail right now.~ #89428 */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @178 /* ~Well obviously there are more people in this guild.  You didn't get all of them.  Go back to Garrotten and find out who else is involved.~ #89429 */
  IF ~~ THEN DO ~SetGlobal("BHMayorGivesWaterQuest","GLOBAL",3)
~ JOURNAL @179 /* ~Screwed up.

The mayor Arrmess arrested my three suspects but there must be more assassins in town.  Someone killed Lady Fairwind.  I should have asked around Garrotten some more than I did.~ #89430 */ EXIT
END

IF ~GlobalLT("BHToldPellAboutMayor","GLOBAL",1)
GlobalLT("BHQualReport","GLOBAL",1)
!PartyHasItem("BHNOTE1")
!PartyHasItem("BHPLOT04")
GlobalGT("BHToldOfDeath","GLOBAL",5)
~ THEN BEGIN 87 // from:
  SAY @180 /* ~Yes?  Did you need something else?~ #89431 */
  IF ~~ THEN REPLY @181 /* ~Could you tell me again what to do?~ #89432 */ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY @182 /* ~Certainly, find out who killed the baron.  If the assassin is part of a guild, find proof of that guild and destroy the guild.  I also want to know who hired the assassin.~ #89433 */
  IF ~~ THEN EXIT
END

IF ~GlobalLT("BHHandQuestAccept","GLOBAL",1)
GlobalLT("BHHandQuest","GLOBAL",2)
OR(3)
AreaCheck("BH0109")
AreaCheck("BH0504")
Global("BHToldOfDeath","GLOBAL",0)
~ THEN BEGIN 89 // from: 35.10 35.9
  SAY @183 /* ~Please tell me everything <CHARNAME>, were you able to do the deed?~ #89434 */
  IF ~Dead("BHZAHR")
PartyHasItem("BHZAHRJ")
Global("BHKillZahrdahlQuest","GLOBAL",1)
~ THEN REPLY @21 /* ~Zahrdahl is dead.~ #89285 */ DO ~TakePartyItem("BHZAHRJ")
AddexperienceParty(4000)
~ GOTO 27
END

IF ~PartyHasItem("BHPLOT04")
~ THEN BEGIN 90 // from: 63.1
  SAY @184 /* ~Now if only there was a resolution to the assassin's guild in Garrotten.~ #89435 */
  IF ~Global("BHToldPellAboutMayor","GLOBAL",0)
PartyHasItem("BHPLOT04")
~ THEN REPLY @142 /* ~The assassin's guild is no more.  I found these documents in Mayor Arrness's room.  They contain all her information about the guild; which jobs, who paid, and who was killed.  There is information here about each spy she has throughout the isles.~ #89402 */ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY @154 /* ~So the guild did exist and the mayor was the leader?  It makes sense that the guild couldn't operate without her knowledge.  I assume you removed everyone in the guild you could find?~ #89413 */
  IF ~~ THEN REPLY @155 /* ~Oh yes, it was a tough battle against most of her guards but we succeeded.~ #89414 */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY @185 /* ~Good job.~ #89436 */
  IF ~~ THEN DO ~SetGlobal("BHToldPellAboutMayor","GLOBAL",1)
TakePartyItem("BHPLOT04")
~ GOTO 64
END
