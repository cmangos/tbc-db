-- ================================================================
-- Fix Quest Chain - Not Required To Do First Quest To Start Second
-- ================================================================
UPDATE quest_template SET PrevQuestId=0, NextQuestInChain=0 WHERE entry IN (1061,1062);

