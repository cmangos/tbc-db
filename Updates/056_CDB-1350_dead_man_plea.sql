-- =========================
-- Fix credit for quest 8945 - ClassicDB
-- =========================
UPDATE quest_template SET QuestFlags=8, SpecialFlags=0, ReqCreatureOrGOId1=16031, ReqCreatureOrGOCount1=1, RequestItemsText='' WHERE entry=8945;

UPDATE creature_template SET FactionAlliance=21, FactionHorde=21 WHERE Entry=10440;
UPDATE creature_template SET FactionAlliance=794, FactionHorde=794, UnitFlags=131072 WHERE Entry=16031;

