-- Quests relations.
-- 9453 - Find Acteon! 
UPDATE quest_template SET NextQuestInChain = 9454 WHERE entry = 9453;
-- 9454 -- The Great Moongraze Hunt
UPDATE quest_template SET PrevQuestId = 9453 WHERE entry = 9454;


