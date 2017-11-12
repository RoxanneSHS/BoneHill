BEGIN ~BHGUARDE~

IF WEIGHT #1 ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~PartyGoldGT(99)~ THEN REPLY @1 GOTO 1
  IF ~PartyGoldGT(199)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~Shout(125)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~Shout(125)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~TakePartyGold(200)
EscapeArea()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Allegiance(Myself,NEUTRAL)~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN DO ~Shout(125)
Enemy()~ EXIT
END
