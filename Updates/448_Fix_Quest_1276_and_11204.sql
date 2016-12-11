-- ============================================
-- Fix Quest Sequence For Quests 1276 and 11204
-- ============================================
UPDATE quest_template SET NextQuestId=11204 WHERE entry IN (1276);
UPDATE quest_template SET PrevQuestId=1276 WHERE entry IN (11204);

