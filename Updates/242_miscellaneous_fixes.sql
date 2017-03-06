-- Molten Core does not require attunement to enter through portal, only through Lothos Riftwalker
UPDATE areatrigger_teleport SET required_quest_done=0 WHERE id IN(3528,3529);

-- The Eye - dont require attunement
UPDATE areatrigger_teleport SET required_item=0 AND required_quest_done=0 WHERE id=4470;

-- Netherwing qline fixes
UPDATE gameobject SET spawntimesecs=50 WHERE id = 185156; -- adjust spawntime of chains
UPDATE gameobject_template SET data5=1 WHERE entry IN(185156); -- on unlocking chains they should disappear

-- https://jira.vengeancewow.com/browse/TBC-2173
-- Quest: Investigate the Amani Catacombs (9193)
-- Mummified Troll Remains (181148) should despawn after use
UPDATE `gameobject_template` SET `data5` = 1 WHERE `entry` = 181148;

-- https://jira.vengeancewow.com/browse/TBC-1953
-- Correct Marsh Lurker position in Funggor Cavern (Zangarmarsh)
UPDATE creature SET position_z=41.11, orientation=5.799 WHERE guid=64845;

-- Shadow Pillager
UPDATE `creature_template` SET `modelid2`=16905, `modelid3`=16906, `modelid4`=16907 WHERE `entry`=16540;

-- Fix wrong map for Rotting Agam'ar
-- https://github.com/TrinityCore/TrinityCore/commit/577324cc1c3fdec57ea3790feb922abe0c5ab129
UPDATE `creature` SET `map`=47 WHERE `guid`=84369 AND `id`=4512;

-- Letter to Stormpike
-- https://github.com/TrinityCore/TrinityCore/issues/19141
UPDATE `quest_template` SET `PrevQuestID`=511 WHERE `entry`=514;

-- Correct typo
-- Thanks to Sneaky for finding and fixing
UPDATE `db_script_string` SET `content_default`='Well hand it over and let\'s see what you got!' WHERE `entry`='2000005050';
