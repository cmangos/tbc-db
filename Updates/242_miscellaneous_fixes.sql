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

-- Replace $N$N with proper line break
UPDATE quest_template SET OfferRewardText = 'With Warlord Sriss''tiz dead, the possibility of a naga invasion is now only a distant memory. We are safe, for the time being...$B$BI must admit, I was wrong to think badly of you, $N. You have shown that you are nothing like the filth that was Archimonde. Accept this as a gift from the night elves.' WHERE entry = 9515;

-- Add proper UnitFlags to Ythyar repair vendor in Karazhan
UPDATE creature_template SET UnitFlags=768 WHERE entry=17518;

-- Fix typos in texts
UPDATE `quest_template` SET `Objectives`='Deliver the Sealed Letter to Ag\'tor Bloodfist in Azshara.' WHERE `entry`='3504';
UPDATE `quest_template` SET `OfferRewardText`='You say that you found it on one of the Scourge at Windrunner Spire and that there\'s an inscription on it? Let me see! Here, take this coin for a job well done. ' WHERE `entry`='9175';



