-- Name reference_loot_templates
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (34030, 34069, 34070);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(34030, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (T2 Legs)'),
(34069, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 1)'),
(34070, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 2)');

-- Ported from classic-db
-- Ragnaros 11502
DELETE FROM `creature_loot_template` WHERE `entry` = 11502;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(11502, 7078, 40, 0, 1, 9, 0, 'Essence of Fire'),
(11502, 17076, 8, 2, 1, 1, 0, 'Bonereaver\'s Edge'),
(11502, 17082, 8, 2, 1, 1, 0, 'Shard of the Flame'),
(11502, 17104, 8, 2, 1, 1, 0, 'Spinal Reaper'),
(11502, 17204, 3, 0, 1, 1, 0, 'Eye of Sulfuras'),
(11502, 19017, -100, 0, 1, 1, 0, 'Essence of the Firelord'),
(11502, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'),
(11502, 21110, 100, 0, 1, 1, 97, 'Draconic for Dummies'),
(11502, 34002, 100, 1, -34002, 3, 0, ''), -- random level 60 boss loot
(11502, 34030, 100, 0, -34030, 2, 0, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (T2 Legs)'),
(11502, 34069, 100, 1, -34069, 1, 0, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 1)'),
(11502, 34070, 100, 1, -34070, 1, 0, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 2)');

-- Creating the reference group for the 2 tier 2 pants and the 2 other epics
-- no race condition for paladin/shaman in tbc
DELETE FROM `reference_loot_template` WHERE `entry` IN (34030, 34069, 34070, 34106); -- 34106 -> 34069
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(34030, 16901, 0, 1, 1, 1, 0, 'Stormrage Legguards'),
(34030, 16909, 0, 1, 1, 1, 0, 'Bloodfang Pants'),
(34030, 16915, 0, 1, 1, 1, 0, 'Netherwind Pants'),
(34030, 16922, 0, 1, 1, 1, 0, 'Leggings of Transcendence'),
(34030, 16930, 0, 1, 1, 1, 0, 'Nemesis Leggings'),
(34030, 16938, 0, 1, 1, 1, 0, 'Dragonstalker\'s Legguards'),
(34030, 16946, 0, 1, 1, 1, 0, 'Legplates of Ten Storms'),
(34030, 16954, 0, 1, 1, 1, 0, 'Judgement Legplates'),
(34030, 16962, 0, 1, 1, 1, 0, 'Legplates of Wrath'),

(34069, 18814, 0, 1, 1, 1, 0, 'Choker of the Fire Lord'),
(34069, 18815, 0, 1, 1, 1, 0, 'Essence of the Pure Flame'),
(34069, 18816, 0, 1, 1, 1, 0, 'Perdition\'s Blade'),
(34069, 18817, 0, 1, 1, 1, 0, 'Crown of Destruction'),
(34069, 19138, 0, 1, 1, 1, 0, 'Band of Sulfuras'),

(34070, 17063, 0, 1, 1, 1, 0, 'Band of Accuria'),
(34070, 17102, 0, 1, 1, 1, 0, 'Cloak of the Shrouded Mists'),
(34070, 17106, 0, 1, 1, 1, 0, 'Malistar\'s Defender'),
(34070, 17107, 0, 1, 1, 1, 0, 'Dragon\'s Blood Cape'),
(34070, 19137, 0, 1, 1, 1, 0, 'Onslaught Girdle');

