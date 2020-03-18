-- 5742 should only be available if all 3 are done
UPDATE quest_template SET PrevQuestId=0 WHERE entry IN(5742);
UPDATE quest_template SET NextQuestId=5742,ExclusiveGroup=-5542,NextQuestInChain=0 WHERE entry IN(5542,5543,5544);

