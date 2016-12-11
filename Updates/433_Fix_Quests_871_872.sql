-- ==========================================
-- Fix Quest Relations for Quests 871 and 872
-- ==========================================
UPDATE quest_template SET NextQuestId=872 WHERE entry IN (871);
UPDATE quest_template SET PrevQuestId=871 WHERE entry IN (872);













