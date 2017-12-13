-- file name in public is redundant, only due to backporting
UPDATE quest_template SET SpecialFlags=4 WHERE entry IN(9884,9885,9886,9887);  -- membership benefits monthly
UPDATE quest_template SET QuestFlags= QuestFlags|0x00008000 WHERE  entry IN(2438);-- make Emerald Dreamcatcher weekly quest


