-- Ahune midsummer BOSS - updated for pre wotlk
-- Ice Chest corrected for TBC
-- https://tbc.wowhead.com/object=188124/ice-chest - 46622 Name: Summon Ahune's Loot, Heroic
-- https://tbc.wowhead.com/object=187892/ice-chest - 45939 Name: Summon Ahune's Loot
-- https://tbc.wowhead.com/object=188191/ice-chest - 46892 Name: Summon Ahune's Loot, Heroic, Bottles
-- https://tbc.wowhead.com/object=188192/ice-chest - 46891 Name: Summon Ahune's Loot, Bottles
-- s.46889?
-- https://tbc.wowhead.com/item=35720/lord-of-frosts-private-label does not exist
-- https://tbc.wowhead.com/item=35557/huge-snowball#comments does not exist

-- Align Ice Chest 187892 & 188124
-- 187892 - players must be able to loot from chest
UPDATE gameobject_template SET `Faction` = 0 WHERE entry=187892; -- Normal
UPDATE gameobject_template SET `data10` = 1, `data11` = 1, `data12` = 1, `data13` = 1, `data15` = 1 WHERE entry=188124; -- Heroic

DELETE FROM `gameobject_loot_template` WHERE entry=187892; -- NORMAL
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(187892, 35498, 10, 0, 1, 1, 0, 'Formula: Enchant Weapon - Deathfrost'),
(187892, 35723, 100, 0, 1, 1, 0, 'Shards of Ahune'),
(187892, 35494, 0, 1, 1, 1, 0, 'Shroud of Winter\'s Chill'), -- item 54802 in wotlk with changed name
(187892, 35495, 0, 1, 1, 1, 0, 'The Frost Lord\'s War Cloak'), -- item 54803 in wotlk with changed name
(187892, 35496, 0, 1, 1, 1, 0, 'Icebound Cloak'), -- item 54804 in wotlk with changed name
(187892, 35497, 0, 1, 1, 1, 0, 'Cloak of the Frigid Winds'), -- item 54805 in wotlk with changed name
(187892, 35514, 5, 0, 1, 1, 0, 'Frostscythe of Lord Ahune'), -- item 54806 in wotlk
(187892, 34955, 2, 0, 1, 1, 0, 'Scorched Stone'); -- chance 1% in wotlk?
-- 187892	35498	20	0	1	1	0	Formula: Enchant Weapon - Deathfrost
-- 187892	35723	100	0	1	1	0	Shards of Ahune
-- 187892	40402	50	1	-40402	1	0	Ice Chest - Amulet
-- 187892	40403	50	2	-40403	1	0	Ice Chest - Cloak
-- 187892	40404	5	3	-40404	1	0	Ice Chest - Scythe
-- 187892	40405	5	4	-40405	1	0	Ice Chest - Pet


DELETE FROM `gameobject_loot_template` WHERE entry=188124; -- HEROIC
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(188124, 29434, 100, 0, 1, 1, 0, 'Badge of Justice'),
(188124, 35498, 20, 0, 1, 1, 0, 'Formula: Enchant Weapon - Deathfrost'),
(188124, 35723, 100, 0, 1, 1, 0, 'Shards of Ahune'),
(188124, 35507, 0, 1, 1, 1, 0, 'Amulet of Bitter Hatred'), -- item ??? in wotlk
(188124, 35508, 0, 1, 1, 1, 0, 'Choker of the Arctic Flow'), -- item ??? in wotlk
(188124, 35509, 0, 1, 1, 1, 0, 'Amulet of Glacial Tranquility'), -- item ??? in wotlk
(188124, 35511, 0, 1, 1, 1, 0, 'Hailstone Pendant'), -- item ??? in wotlk
(188124, 35514, 10, 0, 1, 1, 0, 'Frostscythe of Lord Ahune'), -- item 54806 in wotlk
(188124, 34955, 5, 0, 1, 1, 0, 'Scorched Stone'); -- chance 1% in wotlk?
-- 188124	35498	20	0	1	1	0	Formula: Enchant Weapon - Deathfrost
-- 188124	35723	100	0	1	1	0	Shards of Ahune
-- 188124	40403	100	2	-40403	1	0	Ice Chest - Cloak
-- 188124	40404	10	3	-40404	1	0	Ice Chest - Scythe
-- 188124	40405	10	4	-40405	1	0	Ice Chest - Pet
-- 188124	40406	100	1	-40406	1	0	Ice Chest - Amulet

DELETE FROM `reference_loot_template` WHERE entry BETWEEN 40403 AND 40406; -- 40402 was wrongly reused for Magtheridon loot long ago, 40406 was another "Ice Chest - Amulet", long time tbc bug https://github.com/cmangos/wotlk-db/commit/7b19a9cf476ede24460bc465851dd6dbbd92ffef#diff-c04443d807eb4ed58a8b826ab9cc475b15ffbb629753c319d70d228cb0ab417aR11

-- Extra Ahune Bossfight Fixes
-- Correct Default UnitFlags
UPDATE `creature_template` SET `UnitFlags` = 256+33554432 WHERE `entry` IN (
25865, -- Frozen Core
25985, -- Ahune Ice Spear Bunny
26339 -- Frozen Core (1)
);

