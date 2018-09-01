-- nether rays should not regenerate mana and they start at 0
UPDATE creature_template SET RegenerateStats=RegenerateStats&~2 WHERE entry IN(18880,21901,23501);
