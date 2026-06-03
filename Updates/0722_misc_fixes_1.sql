-- These npcs dont skin into scraps
DELETE FROM `skinning_loot_template` WHERE `entry` = 70065 AND `item` = 25649; -- No Knothide Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 21887 AND `entry` = 70065; -- 0 -> 100 single item
-- Shadowbat	16173	70065 - https://www.wowhead.com/tbc/npc=16173/shadowbat#skinning
-- Greater Shadowbat	16174	70065 - https://www.wowhead.com/tbc/npc=16174/greater-shadowbat#skinning
-- Vampiric Shadowbat	16175	70065 - https://www.wowhead.com/tbc/npc=16175/vampiric-shadowbat#skinning
-- Shadikith the Glider	16180	70065 - https://www.wowhead.com/tbc/npc=16180/shadikith-the-glider#skinning
-- The Big Bad Wolf	17521	70065 - https://www.wowhead.com/tbc/npc=17521/the-big-bad-wolf#skinning
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 17536; -- Nazan	17536	70065
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 18432; -- Nazan (1)	18432	70065
-- Underbat	17724	70065 - https://www.wowhead.com/tbc/npc=17724/underbat#skinning
-- Underbat (1)	20185	70065
UPDATE `creature_template` SET `SkinningLootId` = 17731 WHERE `entry` = 17731; -- Fen Ray	17731	70065 - https://www.wowhead.com/tbc/npc=17731/fen-ray#skinning 4 even
UPDATE `creature_template` SET `SkinningLootId` = 20173 WHERE `entry` = 20173; -- Fen Ray (1)	20173	70065
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17731, 21887, 0, 1, 1, 4, 0, 'Knothide Leather'),
(20173, 21887, 0, 1, 1, 4, 0, 'Knothide Leather');
-- Rift Lord	17839	70065 - https://www.wowhead.com/tbc/npc=17839/rift-lord#skinning
-- Rift Lord (1)	20744	70065
UPDATE `creature_template` SET `SkinningLootId` = 17840 WHERE `entry` = 17840; -- Durnholde Tracking Hound	17840	70065
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17840, 21887, 0, 1, 1, 3, 0, 'Knothide Leather'),
(17840, 25649, 55, 1, 1, 1, 0, 'Knothide Leather Scraps');
UPDATE `creature_template` SET `SkinningLootId` = 20528 WHERE `entry` = 20528; -- Durnholde Tracking Hound (1)	20528	70065
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(20528, 21887, 0, 1, 1, 3, 0, 'Knothide Leather'),
(20528, 25649, 55, 1, 1, 1, 0, 'Knothide Leather Scraps');
UPDATE `creature_template` SET `SkinningLootId` = 17952 WHERE `entry` = 17952; -- Darkwater Crocolisk	17952	70065 - https://www.wowhead.com/tbc/npc=17952/darkwater-crocolisk#skinning
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17952, 21887, 80, 1, 1, 1, 0, 'Knothide Leather'),
(17952, 25649, 20, 1, 2, 3, 0, 'Knothide Leather Scraps');
UPDATE `creature_template` SET `SkinningLootId` = 22163 WHERE `entry` = 22163; -- Darkwater Crocolisk (1)	22163	70065
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22163, 21887, 80, 1, 1, 1, 0, 'Knothide Leather'),
(22163, 25649, 20, 1, 2, 3, 0, 'Knothide Leather Scraps');
-- Bach'lor	18258	70065 - https://www.wowhead.com/tbc/npc=18258/bachlor#skinning
-- Banthar	18259	70065 - https://www.wowhead.com/tbc/npc=18259/banthar#skinning
UPDATE `creature_template` SET `SkinningLootId` = 18982 WHERE `entry` = 18982; -- Sable Jaguar	18982	70065 - https://www.wowhead.com/tbc/npc=18982/sable-jaguar#skinning
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(18982, 21887, 80, 1, 1, 1, 0, 'Knothide Leather'),
(18982, 25649, 20, 1, 2, 3, 0, 'Knothide Leather Scraps');
UPDATE `creature_template` SET `SkinningLootId` = 22173 WHERE `entry` = 22173; -- Sable Jaguar (1)	22173	70065
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22173, 21887, 80, 1, 1, 1, 0, 'Knothide Leather'),
(22173, 25649, 20, 1, 2, 3, 0, 'Knothide Leather Scraps');
-- Phoenix-Hawk Hatchling	20038	70065 - https://www.wowhead.com/tbc/npc=20038/phoenix-hawk-hatchling#skinning
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 20075; -- Darkwater Crocolisk	20075	70065 - dummy version
-- Bladespire Ravager	20729	70065 - https://www.wowhead.com/tbc/npc=20729/bladespire-ravager#skinning
-- Rift Keeper	21104	70065 - https://www.wowhead.com/tbc/npc=21104/rift-keeper#skinning
-- Rift Keeper (1)	22170	70065
-- Rift Lord	21140	70065 - https://www.wowhead.com/tbc/npc=21140/rift-lord#skinning
-- Rift Lord (1)	22172	70065
-- Rift Keeper	21148	70065 - https://www.wowhead.com/tbc/npc=21148/rift-keeper#skinning
-- Rift Keeper (1)	22171	70065
-- Vhel'kur	21801	70065 - https://www.wowhead.com/tbc/npc=21801/vhelkur#skinning
UPDATE `creature_template` SET `SkinningLootId` = 22946 WHERE `entry` = 22946; -- Shadowmoon War Hound	22946	70065 - https://www.wowhead.com/tbc/npc=22946/shadowmoon-war-hound#skinning 2-4
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22946, 21887, 100, 1, 2, 4, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 23232 WHERE `entry` = 23232; -- Mutant War Hound	23232	70065 https://www.wowhead.com/tbc/npc=23232/mutant-war-hound#skinning 2-4
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23232, 21887, 100, 1, 2, 4, 0, 'Knothide Leather');

-- 70066
UPDATE `creature_template` SET `SkinningLootId` = 17879 WHERE `entry` = 17879; -- Chrono Lord Deja	17879	70066 - https://www.wowhead.com/tbc/npc=17879/chrono-lord-deja#skinning 2-4
UPDATE `creature_template` SET `SkinningLootId` = 20738 WHERE `entry` = 20738; -- Chrono Lord Deja (1)	20738	70066
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17879, 21887, 100, 1, 2, 4, 0, 'Knothide Leather'),
(20738, 21887, 100, 1, 2, 4, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 17880 WHERE `entry` = 17880; -- Temporus	17880	70066 - https://www.wowhead.com/tbc/npc=17880/temporus#skinning 2-4
UPDATE `creature_template` SET `SkinningLootId` = 20745 WHERE `entry` = 20745; -- Temporus (1)	20745	70066
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17880, 21887, 100, 1, 2, 4, 0, 'Knothide Leather'),
(20745, 21887, 100, 1, 2, 4, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 17881 WHERE `entry` = 17881; -- Aeonus	17881	70066 - https://www.wowhead.com/tbc/npc=17881/aeonus#skinning 2-4
UPDATE `creature_template` SET `SkinningLootId` = 20737 WHERE `entry` = 20737; -- Aeonus (1)	20737	70066
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17881, 21887, 100, 1, 2, 4, 0, 'Knothide Leather'),
(20737, 21887, 100, 1, 2, 4, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 20039 WHERE `entry` = 20039; -- Phoenix-Hawk	20039	70066 - https://www.wowhead.com/tbc/npc=20039/phoenix-hawk#skinning
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(20039, 21887, 100, 1, 2, 4, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 22884 WHERE `entry` = 22884; -- Leviathan	22884	70066 - https://www.wowhead.com/tbc/npc=22884/leviathan#skinning
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22884, 21887, 100, 1, 2, 4, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 22885 WHERE `entry` = 22885; -- Dragon Turtle	22885	70066 - https://www.wowhead.com/tbc/npc=22885/dragon-turtle#skinning
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22885, 21887, 100, 1, 2, 4, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 23584 WHERE `entry` = 23584; -- Amani Bear	23584	70067 - https://www.wowhead.com/tbc/npc=23584/amani-bear#skinning 2-3
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23584, 21887, 100, 1, 2, 3, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 24043 WHERE `entry` = 24043; -- Amani Lynx	24043	70067 - https://www.wowhead.com/tbc/npc=24043/amani-lynx#skinning 1-3
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24043, 21887, 100, 1, 1, 3, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 24064 WHERE `entry` = 24064; -- Amani Lynx Cub	24064	70067 - https://www.wowhead.com/tbc/npc=24064/amani-lynx-cub#skinning 1-3
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24064, 21887, 100, 1, 1, 3, 0, 'Knothide Leather');
UPDATE `creature_template` SET `SkinningLootId` = 24530 WHERE `entry` = 24530; -- Amani Elder Lynx	24530	70067 - https://www.wowhead.com/tbc/npc=24530/amani-elder-lynx#skinning 1-3
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24530, 21887, 100, 1, 1, 3, 0, 'Knothide Leather');

-- Shadowbeast	16176	70162 - https://www.wowhead.com/tbc/npc=16176/shadowbeast#skinning 45/40/15
-- Dreadbeast	16177	70162 - https://www.wowhead.com/tbc/npc=16177/dreadbeast#skinning 45/40/15
-- Phase Hound	16178	70162 - https://www.wowhead.com/tbc/npc=16178/phase-hound#skinning 45/40/15
-- Fel Guardhound	18642	70162 - https://www.wowhead.com/tbc/npc=18642/fel-guardhound#skinning 45/40/15
-- Fel Guardhound (1)	20651	70162
-- Soul Devourer	20866	70162 - https://www.wowhead.com/tbc/npc=20866/soul-devourer#skinning 45/40/15
-- Soul Devourer (1)	21614	70162
-- Phase-Hunter	20906	70162 - https://www.wowhead.com/tbc/npc=20906/phase-hunter#skinning 45/40/15
-- Phase-Hunter (1)	21606	70162
-- Uvuros	21102	70162 - https://www.wowhead.com/tbc/npc=21102/uvuros#skinning 45/40/15
-- Throne Hound	22303	70162 - https://www.wowhead.com/tbc/npc=22303/throne-hound#skinning prenerf
-- Deathshadow Hound	22394	70162 - https://www.wowhead.com/tbc/npc=22394/deathshadow-hound#skinning 45/40/15
-- Braxxus	23353	70162 - https://www.wowhead.com/tbc/npc=23353/braxxus#skinning 45/40/15
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 45 WHERE `entry` = 70162 AND `item` = 21887;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40, `mincountOrRef` = 3 WHERE `entry` = 70162 AND `item` = 25649;
UPDATE `creature_template` SET `SkinningLootId` = 17401 WHERE `entry` = 17401; -- https://www.wowhead.com/tbc/npc=17401/felhound-manastalker#skinning
UPDATE `creature_template` SET `SkinningLootId` = 18605 WHERE `entry` = 18605; -- Felhound Manastalker (1)	18605	70162
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17401, 21887, 85, 1, 1, 1, 0, 'Knothide Leather'),
(17401, 25649, 14, 1, 1, 1, 0, 'Knothide Leather Scraps'),
(17401, 25707, 1, 1, 1, 1, 0, 'Fel Hide'),
(18605, 21887, 85, 1, 1, 1, 0, 'Knothide Leather'),
(18605, 25649, 14, 1, 1, 1, 0, 'Knothide Leather Scraps'),
(18605, 25707, 1, 1, 1, 1, 0, 'Fel Hide');
UPDATE `creature_template` SET `SkinningLootId` = 21387 WHERE `entry` = 21387; -- Wyrmcult Blackwhelp	21387	70170 - https://www.wowhead.com/tbc/npc=21387/wyrmcult-blackwhelp#skinning
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(21387, 21887, 80, 1, 1, 1, 0, 'Knothide Leather'),
(21387, 25649, 20, 1, 2, 3, 0, 'Knothide Leather Scraps');
UPDATE `creature_template` SET `SkinningLootId` = 23834 WHERE `entry` = 23834; -- Amani Dragonhawk	23834	70170 - https://www.wowhead.com/tbc/npc=23834/amani-dragonhawk#skinning
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23834, 21887, 75, 1, 1, 1, 0, 'Knothide Leather'),
(23834, 29547, 25, 1, 1, 2, 0, 'Wind Scales'),
(23834, 35229, -25, 0, 1, 1, 0, 'Nether Residue');
-- Markaru	20775	20775 - https://www.wowhead.com/tbc/npc=20775/markaru#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 80, `maxcount` = 1 WHERE `entry` = 20775 AND `item` = 21887;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `entry` = 20775 AND `item` = 25649;

-- Table 'skinning_loot_template' entry 70066 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 70067 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 70170 isn't creature skinning id and not referenced from loot, and then useless.
DELETE FROM `skinning_loot_template` WHERE `entry` IN (70066,70067,70170);

