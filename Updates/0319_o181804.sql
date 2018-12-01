-- Felsteel Chest 181804
UPDATE `gameobject_template` SET `data1` = 22984, `mingold` = 1305, `maxgold` = 1759 WHERE `entry` = 181804;
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (22984, 181804);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22984, 18300, 43, 0, 1, 4, 0, 'Hyjal Nectar'),
(22984, 27854, 16, 0, 1, 4, 0, 'Smoked Talbuk Venison'),
(22984, 27855, 23, 0, 1, 4, 0, 'Mag\'har Grainbread'),
(22984, 27856, 21.5, 0, 1, 4, 0, 'Skethyl Berries'),
(22984, 27857, 19.5, 0, 1, 4, 0, 'Garadar Sharp'),
(22984, 27859, 15, 0, 1, 4, 0, 'Zangar Caps'),
(22984, 30458, 14, 0, 1, 4, 0, 'Stromgarde Muenster'),
(22984, 25649, 12, 0, 2, 5, 0, 'Knothide Leather Scraps'),
(22984, 21887, 5, 0, 1, 3, 0, 'Knothide Leather'),
(22984, 23793, 2, 0, 1, 2, 0, 'Heavy Knothide Leather'),
(22984, 14047, 1, 0, 2, 3, 0, 'Runecloth'),
(22984, 21877, 4, 0, 1, 4, 0, 'Netherweave Cloth'),
(22984, 21840, 7, 0, 1, 1, 0, 'Bolt of Netherweave'),
(22984, 23424, 4, 0, 2, 3, 0, 'Fel Iron Ore'),
(22984, 23425, 4, 0, 2, 3, 0, 'Adamantite Ore'),
(22984, 23426, 2, 0, 2, 3, 0, 'Khorium Ore'),
(22984, 23427, 4, 0, 2, 3, 0, 'Eternium Ore'),
(22984, 23445, 4, 0, 1, 2, 0, 'Fel Iron Bar'),
(22984, 23446, 4, 0, 1, 2, 0, 'Adamantite Bar'),
(22984, 23447, 4, 0, 1, 2, 0, 'Eternium Bar'),
(22984, 23449, 2, 0, 1, 1, 0, 'Khorium Bar'),
(22984, 13468, 1, 0, 1, 1, 0, 'Black Lotus'),
(22984, 22785, 4, 0, 2, 3, 0, 'Felweed'),
(22984, 22786, 4, 0, 2, 3, 0, 'Dreaming Glory'),
(22984, 22787, 4, 0, 2, 3, 0, 'Ragveil'),
(22984, 22789, 5, 0, 2, 3, 0, 'Terocone'),
(22984, 22791, 4, 0, 2, 3, 0, 'Netherbloom'),
(22984, 22792, 2, 0, 2, 3, 0, 'Nightmare Vine'),
(22984, 22829, 35, 0, 2, 3, 0, 'Super Healing Potion'),
(22984, 22832, 15, 0, 2, 3, 0, 'Super Mana Potion'),
(22984, 61000, 4, 0, -61000, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 66-69) - (NPC Levels: 58-65) - TBC NPC ONLY'),
(22984, 42005, 2, 0, -42005, 1, 0, 'Solid Adamantite Chest and Bound Adamantite Chests - Green and Blue Items'),
(22984, 50604, 0.5, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22984, 4500, 0.1, 0, 1, 1, 0, 'Traveler''s Backpack');

UPDATE `gameobject` SET `position_x` = -3847.013, `position_y` = 573.666, `position_z` = 72.06717, `orientation` = -1.134463 WHERE `id` = 181804 AND `guid` = 56685;
UPDATE `gameobject` SET `position_x` = -3758.737, `position_y` = 256.5271, `position_z` = 104.1308, `orientation` = 1.012289 WHERE `id` = 181804 AND `guid` = 56125;
UPDATE `gameobject` SET `position_x` = -3673.643, `position_y` = 245.9421, `position_z` = 90.98901, `orientation` = -2.879793 WHERE `id` = 181804 AND `guid` = 35344;
UPDATE `gameobject` SET `position_x` = -3375.247, `position_y` = 267.7537, `position_z` = 104.0136, `orientation` = 2.513274 WHERE `id` = 181804 AND `guid` = 56686;
UPDATE `gameobject` SET `position_x` = -3204.254, `position_y` = 431.4464, `position_z` = 103.9306, `orientation` = -3.071767 WHERE `id` = 181804 AND `guid` = 56707;
UPDATE `gameobject` SET `position_x` = -1551.879, `position_y` = 9718.118, `position_z` = 202.4517, `orientation` = 0.4014257 WHERE `id` = 181804 AND `guid` = 56127;
UPDATE `gameobject` SET `position_x` = -1464.11, `position_y` = 9858.166, `position_z` = 200.5944, `orientation` = -1.623156 WHERE `id` = 181804 AND `guid` = 56126;
UPDATE `gameobject` SET `position_x` = -1379.539, `position_y` = 9576.888, `position_z` = 205.5521, `orientation` = 2.548181 WHERE `id` = 181804 AND `guid` = 56684;
UPDATE `gameobject` SET `position_x` = -1376.826, `position_y` = 9719.531, `position_z` = 205.3067, `orientation` = -2.75762 WHERE `id` = 181804 AND `guid` = 56128;

SET @GUID := 190636;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 190637 AND 190643;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@GUID := @GUID + 1, 181804, 530, 1, -3375.247, 267.7537, 104.0136, 2.513274, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181804, 530, 1, -2740.918, 8282.553, -77.63496, -0.8203048, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181804, 530, 1, -2721.655, 1268.467, 33.27572, -2.548181, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181804, 530, 1, -2708.026, 1385.525, 38.58022, 0.4712389, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181804, 530, 1, -2695.458, 8380.114, -88.66773, 3.124123, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181804, 530, 1, 2453.78, 2157.707, 100.8189, 3.054326, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181804, 530, 1, 3937.783, 2145.043, 236.3882, 1.204277, 7200, 7200, 100, 1);

SET @GUID := 190636;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 190637 AND 190643;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID := @GUID + 1, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)'),
(@GUID := @GUID + 1, 39947, 0, 'Nagrand - Felsteel Chest (181804)'),
(@GUID := @GUID + 1, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)'),
(@GUID := @GUID + 1, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)'),
(@GUID := @GUID + 1, 39947, 0, 'Nagrand - Felsteel Chest (181804)'),
(@GUID := @GUID + 1, 39949, 0, 'Netherstorm - Felsteel Chest (181804)'),
(@GUID := @GUID + 1, 39949, 0, 'Netherstorm - Felsteel Chest (181804)');

-- Increase respective spawn limit
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 39949; -- Netherstorm (TBC - 67-70) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 7 WHERE `entry` = 39950; -- Shadowmoon Valley (TBC - 67-70) - Master Chest Pool

