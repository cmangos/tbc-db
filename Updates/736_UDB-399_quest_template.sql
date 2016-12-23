-- Quests relations.
-- 9560 - Beasts of the Apocalypse!
UPDATE quest_template SET PrevQuestId = 9538, NextQuestInChain = 9565, ExclusiveGroup = -9560 WHERE entry = 9560;

-- 9562 - Murlocs... Why Here? Why Now?
UPDATE quest_template SET PrevQuestId = 9538, NextQuestInChain = 9565, ExclusiveGroup = -9560 WHERE entry = 9562;

-- 9565 - Search Stillpine Hold
-- will become available only after one of ExclusiveGroup = -9560 completed. (we can only make available after completed both)
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 9565;

-- 9564 - Gurf's Dignity
UPDATE quest_template SET PrevQuestId = 9538 WHERE entry = 9564;


