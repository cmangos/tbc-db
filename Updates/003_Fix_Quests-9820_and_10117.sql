-- =============================================
-- Fix Quests 9820 and 10117 - Horde Only Quests
-- =============================================
UPDATE quest_template SET RequiredRaces=690 WHERE entry IN (10117,9820);

