-- Hellfire PvP Objective Quests and others should be doable at exalted rep
-- https://www.wowhead.com/tbc/quest=10106/hellfire-fortifications
-- https://www.wowhead.com/tbc/quest=10110/hellfire-fortifications
-- 9122	The Dread Citadel - Naxxramas
-- 9225	Epic Armaments of Battle - Revered Amongst the Dawn
-- 9226	Superior Armaments of Battle - Revered Amongst the Dawn
-- 10106	Hellfire Fortifications
-- 10110	Hellfire Fortifications
-- 10653	Marks of Sargeras
-- 10654	More Marks of Sargeras
-- 10655	Single Mark of Sargeras
-- 10656	Sunfury Signets
-- 10824	Sunfury Signets
-- 10826	Marks of Sargeras
UPDATE `quest_template` SET `RequiredMaxRepValue` = 42000 WHERE `RequiredMaxRepValue` = 41999;

