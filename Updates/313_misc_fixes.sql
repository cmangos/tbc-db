-- Add missing Moonwell from Classic DB
DELETE FROM gameobject WHERE guid=55541;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(55541, 177278, 1, 9630.89, 2520.89, 1331.58, 3.22902, 0, 0, 0.999045, -0.0436984, 900, 900, 100, 1);

-- Stranglethorn Vale spawntime adjustments
-- Mastery Bosses
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=728;
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=729;
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=730;
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=731;
-- Colonel Kurzen
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=813;

-- Player can learn Heavy Mageweave Bandage from Triage quest giver at level 35 in Patch 2.4.3
UPDATE conditions SET value1=35 WHERE condition_entry=179;

-- Allow players to receive all required items to finish UBRS key quest
DELETE FROM item_loot_template WHERE entry=12339 AND item=12300;
INSERT INTO item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(12339,12300,100,0,1,1,0,'Orb of Draconic Energy');

-- Missing Spell focuses for Teleport This quests
DELETE FROM `gameobject` WHERE `guid` IN (150124,150125,150126);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`) VALUES
(150124, 300118, 530, 1, 4697.5, 3298.68, 178.892, 2.02823, 0, 0, 0.849013, 0.528372, 120, 120, 0, 1),
(150125, 300118, 530, 1, 4734.71, 3193.67, 161.48, 0.386745, 0, 0, 0.19217, 0.981362, 120, 120, 0, 1),
(150126, 300118, 530, 1, 4673.28, 3126.67, 166.725, 5.42979, 0, 0, 0.413867, -0.910337, 120, 120, 0, 1);

-- Pendant of the Violet Eye should proc on any cast
DELETE FROM spell_proc_event WHERE entry IN(29601);
INSERT INTO spell_proc_event(entry,procEx) VALUES(29601,65536);

-- Darkmoon Card: Crusade should proc on any cast
DELETE FROM spell_proc_event WHERE entry IN(39440);
INSERT INTO spell_proc_event(entry,procEx) VALUES(39440,65536);

-- Scarab of Unending Life should proc on any cast
UPDATE spell_proc_event SET procEx=65536 WHERE entry IN(33953);

-- Min Level for Gnomeregan
UPDATE areatrigger_teleport SET required_level=15 WHERE id IN(324,523);
-- Shadowfang Keep
UPDATE areatrigger_teleport SET required_level=15 WHERE id IN(244);

-- Void Conduit - should not regenerate health
UPDATE creature_template SET RegenerateStats=2 WHERE entry IN(20899);

-- Cuergos Gold - should be repeatable
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE entry IN(2882);

-- https://jira.vengeancewow.com/browse/TBC-241
-- The Sacred Flame(Q:1197)
-- Cloven Hoof(I:5869) should only be accessible via Ancient Brazier(GO:20807)  
DELETE FROM `creature_loot_template` WHERE `entry`=4095 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=4097 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=4099 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=7404 AND `item`=5869;

-- https://jira.vengeancewow.com/browse/TBC-228
-- stop auto completion of Quest: 660 - Hints of a New Plague?
UPDATE `quest_template` SET `SpecialFlags`=2 WHERE `entry`=660;

