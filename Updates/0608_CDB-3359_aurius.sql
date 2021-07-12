-- Various fixes for Aurius event in Stratholme
-- Fix kneel stand state (handled by script)
-- UPDATE creature_template_addon SET bytes1=0 WHERE entry=10917; -- instance file

-- Add missing condition related to instance state and repeatable flags
-- The Medallion of Faith
UPDATE quest_template SET RequiredCondition=721, SpecialFlags=1 WHERE entry=5122;
-- Aurius' Reckoning
UPDATE quest_template SET RequiredCondition=720 WHERE entry=5125;

DELETE FROM conditions WHERE condition_entry=721; -- 745
INSERT INTO conditions VALUES
-- 720	18	0	0	0	0	0
(721, -3, 720, 0, 0, 0, 0, ''); -- 733
