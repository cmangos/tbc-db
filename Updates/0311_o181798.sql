-- Fel Iron Chest 181798
UPDATE `gameobject_template` SET `mingold` = 940, `maxgold` = 1335 WHERE `entry` = 181798; -- I think data1 = 9933 is actually correct looking at the loot, but better prevent poluting go Solid Chest 153454

DELETE FROM `gameobject_loot_template` WHERE `entry` = 181798;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(181798, 1710, 5, 0, 2, 4, 0, 'Greater Healing Potion'),
(181798, 2772, 2, 0, 2, 4, 0, 'Iron Ore'),
(181798, 3827, 9, 0, 2, 4, 0, 'Mana Potion'),
(181798, 3858, 8, 0, 2, 3, 0, 'Mithril Ore'),
(181798, 3864, 1, 0, 1, 1, 0, 'Citrine'),
(181798, 3914, 0.1, 0, 1, 1, 0, 'Journeyman\'s Backpack'),
(181798, 3928, 12, 0, 2, 3, 0, 'Superior Healing Potion'),
(181798, 4235, 4, 0, 1, 1, 0, 'Heavy Hide'),
(181798, 4304, 4, 0, 1, 3, 0, 'Thick Leather'),
(181798, 4305, 1, 0, 1, 1, 0, 'Bolt of Silk Cloth'),
(181798, 4338, 1, 0, 1, 1, 0, 'Mageweave Cloth'),
(181798, 6037, 2, 0, 1, 2, 0, 'Truesilver Bar'),
(181798, 6149, 14, 0, 2, 3, 0, 'Greater Mana Potion'),
(181798, 7910, 1, 0, 1, 1, 0, 'Star Ruby'),
(181798, 7911, 2, 0, 1, 2, 0, 'Truesilver Ore'),
(181798, 8766, 39, 0, 1, 3, 0, 'Morning Glory Dew'),
(181798, 8831, 2, 0, 1, 2, 0, 'Purple Lotus'),
(181798, 8839, 2, 0, 1, 1, 0, 'Blindweed'),
(181798, 8932, 10, 0, 1, 2, 0, 'Alterac Swiss'),
(181798, 8948, 19, 0, 1, 2, 0, 'Dried King Bolete'),
(181798, 8950, 24, 0, 1, 2, 0, 'Homemade Cherry Pie'),
(181798, 8952, 8, 0, 1, 2, 0, 'Roasted Quail'),
(181798, 8953, 4, 0, 1, 2, 0, 'Deep Fried Plantains'),
(181798, 13463, 4, 0, 1, 1, 0, 'Dreamfoil'),
(181798, 13464, 2, 0, 1, 1, 0, 'Golden Sansam'),
(181798, 13465, 1, 0, 1, 1, 0, 'Mountain Silversage'),
(181798, 60008, 45, 1, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60) - VANILLA NPC ONLY'),
(181798, 60198, 24, 1, -60198, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 56-60) - (NPC Levels: 57)'),
(181798, 60274, 0.99, 1, -60274, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 55-59) - (NPC Levels: 57)'),
(181798, 60334, 0.01, 1, -60334, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 56-58) - (NPC Levels: 57)'),
(181798, 3395, 0.01, 0, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(181798, 11226, 0.01, 0, 1, 1, 0, 'Formula: Enchant Gloves - Riding Skill'),
(181798, 12682, 0.01, 0, 1, 1, 0, 'Plans: Thorium Armor'),
(181798, 12683, 0.01, 0, 1, 1, 0, 'Plans: Thorium Belt'),
(181798, 12684, 0.01, 0, 1, 1, 0, 'Plans: Thorium Bracers'),
(181798, 12685, 0.01, 0, 1, 1, 0, 'Plans: Radiant Belt'),
(181798, 12689, 0.01, 0, 1, 1, 0, 'Plans: Radiant Breastplate'),
(181798, 12691, 0.01, 0, 1, 1, 0, 'Plans: Wildthorn Mail'),
(181798, 12692, 0.01, 0, 1, 1, 0, 'Plans: Thorium Shield Spike'),
(181798, 12693, 0.01, 0, 1, 1, 0, 'Plans: Thorium Boots'),
(181798, 12694, 0.01, 0, 1, 1, 0, 'Plans: Thorium Helm'),
(181798, 12695, 0.01, 0, 1, 1, 0, 'Plans: Radiant Gloves'),
(181798, 12697, 0.01, 0, 1, 1, 0, 'Plans: Radiant Boots'),
(181798, 12702, 0.01, 0, 1, 1, 0, 'Plans: Radiant Circlet'),
(181798, 12703, 0.01, 0, 1, 1, 0, 'Plans: Storm Gauntlets'),
(181798, 12704, 0.01, 0, 1, 1, 0, 'Plans: Thorium Leggings'),
(181798, 12711, 0.01, 0, 1, 1, 0, 'Plans: Whitesoul Helm'),
(181798, 12713, 0.01, 0, 1, 1, 0, 'Plans: Radiant Leggings'),
(181798, 13486, 0.01, 0, 1, 1, 0, 'Recipe: Transmute Undeath to Water'),
(181798, 13487, 0.01, 0, 1, 1, 0, 'Recipe: Transmute Water to Undeath'),
(181798, 13488, 0.01, 0, 1, 1, 0, 'Recipe: Transmute Life to Earth'),
(181798, 13489, 0.01, 0, 1, 1, 0, 'Recipe: Transmute Earth to Life'),
(181798, 13490, 0.01, 0, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'),
(181798, 13492, 0.01, 0, 1, 1, 0, 'Recipe: Purification Potion'),
(181798, 13493, 0.01, 0, 1, 1, 0, 'Recipe: Greater Arcane Elixir'),
(181798, 13518, 0.01, 0, 1, 1, 0, 'Recipe: Flask of Petrification'),
(181798, 14466, 0.01, 0, 1, 1, 0, 'Pattern: Frostweave Tunic'),
(181798, 14467, 0.01, 0, 1, 1, 0, 'Pattern: Frostweave Robe'),
(181798, 14470, 0.01, 0, 1, 1, 0, 'Pattern: Runecloth Tunic'),
(181798, 14474, 0.01, 0, 1, 1, 0, 'Pattern: Frostweave Gloves'),
(181798, 14478, 0.01, 0, 1, 1, 0, 'Pattern: Brightcloth Robe'),
(181798, 14479, 0.01, 0, 1, 1, 0, 'Pattern: Brightcloth Gloves'),
(181798, 14484, 0.01, 0, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(181798, 14489, 0.01, 0, 1, 1, 0, 'Pattern: Frostweave Pants'),
(181798, 14491, 0.01, 0, 1, 1, 0, 'Pattern: Runecloth Pants'),
(181798, 14492, 0.01, 0, 1, 1, 0, 'Pattern: Felcloth Boots'),
(181798, 14494, 0.01, 0, 1, 1, 0, 'Pattern: Brightcloth Pants'),
(181798, 14496, 0.01, 0, 1, 1, 0, 'Pattern: Felcloth Hood'),
(181798, 14497, 0.01, 0, 1, 1, 0, 'Pattern: Mooncloth Leggings'),
(181798, 14498, 0.01, 0, 1, 1, 0, 'Pattern: Runecloth Headband'),
(181798, 14499, 0.01, 0, 1, 1, 0, 'Pattern: Mooncloth Bag'),
(181798, 14501, 0.01, 0, 1, 1, 0, 'Pattern: Mooncloth Vest'),
(181798, 14504, 0.01, 0, 1, 1, 0, 'Pattern: Runecloth Shoulders'),
(181798, 14506, 0.01, 0, 1, 1, 0, 'Pattern: Felcloth Robe'),
(181798, 14507, 0.01, 0, 1, 1, 0, 'Pattern: Mooncloth Shoulders'),
(181798, 14508, 0.01, 0, 1, 1, 0, 'Pattern: Felcloth Shoulders'),
(181798, 15731, 0.01, 0, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'),
(181798, 15737, 0.01, 0, 1, 1, 0, 'Pattern: Chimeric Boots'),
(181798, 15742, 0.01, 0, 1, 1, 0, 'Pattern: Warbear Harness'),
(181798, 15743, 0.01, 0, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'),
(181798, 15745, 0.01, 0, 1, 1, 0, 'Pattern: Runic Leather Belt'),
(181798, 15746, 0.01, 0, 1, 1, 0, 'Pattern: Chimeric Leggings'),
(181798, 15755, 0.01, 0, 1, 1, 0, 'Pattern: Chimeric Vest'),
(181798, 15757, 0.01, 0, 1, 1, 0, 'Pattern: Wicked Leather Pants'),
(181798, 15765, 0.01, 0, 1, 1, 0, 'Pattern: Runic Leather Pants'),
(181798, 16043, 0.01, 0, 1, 1, 0, 'Schematic: Thorium Rifle'),
(181798, 16051, 0.01, 0, 1, 1, 0, 'Schematic: Thorium Shells'),
(181798, 16055, 0.01, 0, 1, 1, 0, 'Schematic: Arcane Bomb'),
(181798, 16215, 0.01, 0, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'),
(181798, 16218, 0.01, 0, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'),
(181798, 16220, 0.01, 0, 1, 1, 0, 'Formula: Enchant Boots - Spirit'),
(181798, 16245, 0.01, 0, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'),
(181798, 16251, 0.01, 0, 1, 1, 0, 'Formula: Enchant Bracer - Superior Stamina');

UPDATE `gameobject` SET `position_x` = -1961.595, `position_y` = 3836.989, `position_z` = 0.836046, `orientation` = 1.27409 WHERE `id` = 181798 AND `guid` = 56076;
UPDATE `gameobject` SET `position_x` = -1506.018, `position_y` = 4420.169, `position_z` = 43.86404, `orientation` = -2.234021 WHERE `id` = 181798 AND `guid` = 56071;
UPDATE `gameobject` SET `position_x` = -972.6639, `position_y` = 2142.263, `position_z` = 23.21649, `orientation` = 0.6632251 WHERE `id` = 181798 AND `guid` = 56075;
UPDATE `gameobject` SET `position_x` = -901.9427, `position_y` = 5313.834, `position_z` = 18.95526, `orientation` = 2.600535 WHERE `id` = 181798 AND `guid` = 56681;
UPDATE `gameobject` SET `position_x` = -889.7993, `position_y` = 1965.636, `position_z` = 69.16145, `orientation` = 2.268925 WHERE `id` = 181798 AND `guid` = 32136;
UPDATE `gameobject` SET `position_x` = -830.3882, `position_y` = 5182.949, `position_z` = 18.861, `orientation` = -0.1570795 WHERE `id` = 181798 AND `guid` = 56073;
UPDATE `gameobject` SET `position_x` = -507.3185, `position_y` = 5902.835, `position_z` = 22.05126, `orientation` = 1.797689 WHERE `id` = 181798 AND `guid` = 28315;
UPDATE `gameobject` SET `position_x` = -197.0191, `position_y` = 6242.228, `position_z` = 22.01149, `orientation` = -2.617994 WHERE `id` = 181798 AND `guid` = 56069;
UPDATE `gameobject` SET `position_x` = -44.77214, `position_y` = 3034.267, `position_z` = 6.077384, `orientation` = -0.06981307 WHERE `id` = 181798 AND `guid` = 30392;
UPDATE `gameobject` SET `position_x` = 41.69596, `position_y` = 3226.255, `position_z` = 18.98811, `orientation` = 2.426008 WHERE `id` = 181798 AND `guid` = 56067;
UPDATE `gameobject` SET `position_x` = 459.3451, `position_y` = 6290.468, `position_z` = 21.6327, `orientation` = -1.972222 WHERE `id` = 181798 AND `guid` = 32769;
UPDATE `gameobject` SET `position_x` = 1081.769, `position_y` = 8194.199, `position_z` = 22.32333, `orientation` = 1.448623 WHERE `id` = 181798 AND `guid` = 56070;
UPDATE `gameobject` SET `position_x` = 1200.79, `position_y` = 8301.758, `position_z` = 18.50835, `orientation` = -1.850049 WHERE `id` = 181798 AND `guid` = 56074;

SET @GUID := 190549;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 190550 AND 190577;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@GUID := @GUID + 1, 181798, 530, 1, -2192.322, 4181.543, 12.13899, 0.01745329, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -2162.129, 4265.884, 4.56925, -1.204277, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -2084.547, 4172.699, 7.035594, -0.5759585, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -2023.939, 4255.934, 4.455289, 3.01942, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -1829.461, 3939.269, 46.54673, -0.4712389, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -1695.472, 4381.817, 53.38756, 3.071779, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -1333.638, 2702.798, -15.02265, -1.448624, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -1258.325, 2740.19, -16.77358, -1.605702, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -1146.036, 2061.357, 68.7645, 2.094393, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -1123.15, 3201.815, 67.23313, 1.448622, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -1066.727, 1997.338, 67.22467, -0.6108654, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -971.61, 2003.935, 67.56811, -1.22173, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -960.5165, 3369.007, 81.60087, 1.518436, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -934.1349, 1922.807, 69.23003, 2.600541, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -831.6833, 2015.38, 39.01551, -0.5585039, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -821.4933, 5789.432, 22.90289, -2.460914, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -651.029, 3246.607, 7.834966, 0.7853982, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -509.7914, 3123.73, -2.990629, -2.495818, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -439.2947, 6293.986, 18.73009, 2.216568, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -314.3698, 2697.337, 27.64155, -3.089183, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -191.1595, 2808.29, 23.63963, 0.03490625, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -179.8774, 2492.437, 41.87557, 1.48353, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -140.8452, 3116.132, 5.56848, -1.727875, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, -109.077, 6966.758, 19.5727, 1.623156, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, 391.2536, 8138.95, 23.19345, -2.338741, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, 669.2338, 8196.149, 21.8844, -1.605703, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, 678.3973, 6319.726, 21.54089, 3.141593, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181798, 530, 1, 1183.265, 8162.69, 18.69679, -1.308997, 7200, 7200, 100, 1);

SET @GUID := 190549;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 190550 AND 190577;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)');

-- Increase respective spawn limit
UPDATE `pool_template` SET `max_limit` = 9 WHERE `entry` = 39944; -- Hellfire Peninsula (TBC - 58-63) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 8 WHERE `entry` = 39945; -- Zangarmarsh (TBC - 60-64) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 10 WHERE `entry` = 39946; -- Terokkar Forest (TBC - 62-65) - Master Chest Pool

