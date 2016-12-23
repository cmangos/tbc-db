-- Quests relations.
-- 9280 - rephasing crystals  - Draenei ver 
UPDATE quest_template SET NextQuestId = 9409, NextQuestInChain = 9409, ExclusiveGroup = 9280 WHERE entry = 9280;
-- 9369 - rephasing crystals  - others ver
UPDATE quest_template SET NextQuestId = 9409, NextQuestInChain = 9409, ExclusiveGroup = 9280 WHERE entry = 9369;
-- 9409 - Urgent delivery
-- will become available only after one of ExclusiveGroup = 9280 completed.
UPDATE quest_template SET NextQuestInChain = 9371 WHERE entry = 9409;
-- 9371 - Botanist Taerix
-- will become available only after 9409 completed.
UPDATE quest_template SET PrevQuestId = 9409 WHERE entry = 9371;
-- 10304 - Vindicator Aldar
-- will become available only after 9294 completed.
UPDATE quest_template SET PrevQuestId = 9294 WHERE entry = 10304;


