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


