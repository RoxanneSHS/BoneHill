BEGIN ~BHWATCHR~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~ForceSpell([PC],CLERIC_FLAME_STRIKE)
DestroySelf()~ EXIT
END
