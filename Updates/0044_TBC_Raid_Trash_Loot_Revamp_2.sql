-- Priestess of Dementia 22957
UPDATE `creature_template` SET `PickpocketLootId` = 22957 WHERE `entry` = 22957;
DELETE FROM `creature_loot_template` WHERE entry=22957;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22957, 21877, 33.12, 0, 2, 3, 0, 'Netherweave Cloth'),
(22957, 32428, 8, 0, 1, 1, 0, 'Heart of Darkness'),
(22957, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(22957, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22957, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22957, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22957, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22957, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22957, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22957, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22957, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22957, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22957, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22957, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22957;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22957, 29570, 36, 0, 1, 1, 0, 'A Gnome Effigy'),
(22957, 29569, 19, 0, 1, 1, 0, 'Strong Junkbox'),
(22957, 27854, 13, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22957, 27855, 6, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Spellbound Attendant 22959
UPDATE `creature_template` SET `PickpocketLootId` = 22959 WHERE `entry` = 22959;
DELETE FROM `creature_loot_template` WHERE entry=22959;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22959, 21877, 33.99, 0, 1, 3, 0, 'Netherweave Cloth'),
(22959, 32428, 11, 0, 1, 1, 0, 'Heart of Darkness'),
(22959, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(22959, 34093, 10, 1, -34093, 1, 0, 'Epic Gem'),
(22959, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(22959, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22959, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22959, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22959, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22959, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22959, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22959, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22959, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22959;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22959, 29569, 54, 0, 1, 1, 0, 'Strong Junkbox'),
(22959, 29570, 12, 0, 1, 1, 0, 'A Gnome Effigy'),
(22959, 22829, 12, 0, 1, 1, 0, 'Super Healing Potion'),
(22959, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22959, 27855, 4, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Dragonmaw Wyrmcaller 22960
UPDATE `creature_template` SET `PickpocketLootId` = 22960 WHERE `entry` = 22960;
DELETE FROM `creature_loot_template` WHERE entry=22960;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22960, 21877, 43.24, 0, 2, 3, 0, 'Netherweave Cloth'),
(22960, 32428, 4, 0, 1, 1, 0, 'Heart of Darkness'),
(22960, 31952, 0.9, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22960, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22960, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22960, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22960, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22960, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22960, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22960, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22960, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22960, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22960;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22960, 29569, 18, 0, 1, 1, 0, 'Strong Junkbox'),
(22960, 29570, 20, 0, 1, 1, 0, 'A Gnome Effigy'),
(22960, 22829, 25, 0, 1, 1, 0, 'Super Healing Potion'),
(22960, 27854, 25, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22960, 27855, 12, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Priestess of Delight 22962
UPDATE `creature_template` SET `PickpocketLootId` = 22962 WHERE `entry` = 22962;
DELETE FROM `creature_loot_template` WHERE entry=22962;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22962, 21877, 36.02, 0, 2, 3, 0, 'Netherweave Cloth'),
(22962, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(22962, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(22962, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22962, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22962, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22962, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22962, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22962, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22962, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22962, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22962, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22962, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22962, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22962;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22962, 29569, 21, 0, 1, 1, 0, 'Strong Junkbox'),
(22962, 29570, 18, 0, 1, 1, 0, 'A Gnome Effigy'),
(22962, 22829, 18, 0, 1, 1, 0, 'Super Healing Potion'),
(22962, 27854, 18, 0, 1, 1, 0, 'Smoked Talbuk Venison');

-- Bonechewer Worker 22963
UPDATE `creature_template` SET `PickpocketLootId` = 22963 WHERE `entry` = 22963;
DELETE FROM `creature_loot_template` WHERE entry=22963;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22963, 21877, 39.74, 0, 1, 3, 0, 'Netherweave Cloth'),
(22963, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(22963, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22963, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22963, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22963, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22963, 61124, 6, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22963, 61224, 0.02, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22963;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22963, 29569, 31, 0, 1, 1, 0, 'Strong Junkbox'),
(22963, 29570, 48, 0, 1, 1, 0, 'A Gnome Effigy'),
(22963, 22829, 9, 0, 1, 1, 0, 'Super Healing Potion'),
(22963, 27854, 16, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22963, 27855, 9, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22963, 23438, 4, 0, 1, 1, 0, 'Star of Elune');

-- Enslaved Servant 22965
UPDATE `creature_template` SET `PickpocketLootId` = 22965 WHERE `entry` = 22965;
DELETE FROM `creature_loot_template` WHERE entry=22965;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22965, 21877, 34.86, 0, 2, 3, 0, 'Netherweave Cloth'),
(22965, 32428, 11, 0, 1, 1, 0, 'Heart of Darkness'),
(22965, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(22965, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(22965, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(22965, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(22965, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(22965, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(22965, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22965, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(22965, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22965, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22965, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22965, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=22965;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22965, 29569, 34, 0, 1, 1, 0, 'Strong Junkbox'),
(22965, 29570, 12, 0, 1, 1, 0, 'A Gnome Effigy'),
(22965, 22829, 1.4, 0, 1, 1, 0, 'Super Healing Potion'),
(22965, 27854, 31, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22965, 27855, 20, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(22965, 23440, 11, 0, 1, 1, 0, 'Dawnstone');

-- Bonechewer Taskmaster 23028
UPDATE `creature_template` SET `PickpocketLootId` = 23028 WHERE `entry` = 23028;
DELETE FROM `creature_loot_template` WHERE entry=23028;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23028, 21877, 33.8, 0, 2, 3, 0, 'Netherweave Cloth'),
(23028, 32428, 3, 0, 1, 1, 0, 'Heart of Darkness'),
(23028, 32897, 17, 0, 1, 1, 0, 'Mark of the Illidari'),
(23028, 31952, 0.6, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23028, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23028, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23028, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23028, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23028, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23028, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23028, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23028;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23028, 29569, 35, 0, 1, 1, 0, 'Strong Junkbox'),
(23028, 29570, 16, 0, 1, 1, 0, 'A Gnome Effigy'),
(23028, 22829, 10, 0, 1, 1, 0, 'Super Healing Potion'),
(23028, 27854, 6, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23028, 27855, 29, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Dragonmaw Sky Stalker 23030
DELETE FROM `creature_loot_template` WHERE entry=23030;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23030, 21877, 30.63, 0, 2, 3, 0, 'Netherweave Cloth'),
(23030, 32428, 3, 0, 1, 1, 0, 'Heart of Darkness'),
(23030, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(23030, 31952, 0.6, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23030, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23030, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23030, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23030, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23030, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23030, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23030, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23030, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

-- Shadowmoon Soldier 23047
UPDATE `creature_template` SET `PickpocketLootId` = 23047 WHERE `entry` = 23047;
DELETE FROM `creature_loot_template` WHERE entry=23047;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23047, 21877, 44.17, 0, 2, 3, 0, 'Netherweave Cloth'),
(23047, 32428, 3.33, 0, 1, 1, 0, 'Heart of Darkness'),
(23047, 32897, 15, 0, 1, 1, 0, 'Mark of the Illidari'),
(23047, 34093, 6, 1, -34093, 1, 0, 'Epic Gem'),
(23047, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23047, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23047, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23047, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23047, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23047, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23047, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23047, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23047, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23047, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23047;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23047, 29569, 29, 0, 1, 1, 0, 'Strong Junkbox'),
(23047, 29570, 13, 0, 1, 1, 0, 'A Gnome Effigy'),
(23047, 22829, 26, 0, 1, 1, 0, 'Super Healing Potion'),
(23047, 27854, 28, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23047, 27855, 9, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Shadowmoon Weapon Master 23049
UPDATE `creature_template` SET `PickpocketLootId` = 23049 WHERE `entry` = 23049;
DELETE FROM `creature_loot_template` WHERE entry=23049;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23049, 21877, 18.97, 0, 2, 3, 0, 'Netherweave Cloth'),
(23049, 32428, 11, 0, 1, 1, 0, 'Heart of Darkness'),
(23049, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(23049, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23049, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23049, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23049, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23049, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23049, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23049, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23049, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23049, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23049, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23049, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23049;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23049, 29570, 40, 0, 1, 1, 0, 'A Gnome Effigy'),
(23049, 27854, 7, 0, 1, 1, 0, 'Smoked Talbuk Venison');

-- Shadowmoon Grunt 23147
UPDATE `creature_template` SET `PickpocketLootId` = 23147 WHERE `entry` = 23147;
DELETE FROM `creature_loot_template` WHERE entry=23147;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23147, 21877, 40, 0, 2, 3, 0, 'Netherweave Cloth'),
(23147, 32897, 16, 0, 1, 1, 0, 'Mark of the Illidari'),
(23147, 32428, 4, 0, 1, 1, 0, 'Heart of Darkness'),
(23147, 34093, 6, 1, -34093, 1, 0, 'Epic Gem'),
(23147, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23147, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23147, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23147, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23147, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23147, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23147, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23147, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23147;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23147, 29569, 45, 0, 1, 1, 0, 'Strong Junkbox'),
(23147, 29570, 50, 0, 1, 1, 0, 'A Gnome Effigy'),
(23147, 27855, 5, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(23147, 27854, 5, 0, 1, 1, 0, 'Smoked Talbuk Venison');

-- Hand of Gorefiend 23172
UPDATE `creature_template` SET `PickpocketLootId` = 23172 WHERE `entry` = 23172;
DELETE FROM `creature_loot_template` WHERE entry=23172;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23172, 21877, 38.27, 0, 2, 3, 0, 'Netherweave Cloth'),
(23172, 32428, 12, 0, 1, 1, 0, 'Heart of Darkness'),
(23172, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(23172, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23172, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23172, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23172, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23172, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23172, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23172, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23172, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23172, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23172, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23172, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23172;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23172, 29569, 61, 0, 1, 1, 0, 'Strong Junkbox'),
(23172, 29570, 26, 0, 1, 1, 0, 'A Gnome Effigy'),
(23172, 22829, 1, 0, 1, 1, 0, 'Super Healing Potion'),
(23172, 27854, 19, 0, 1, 1, 0, 'Smoked Talbuk Venison');

-- Bonechewer Behemoth 23196
UPDATE `creature_template` SET `PickpocketLootId` = 23196 WHERE `entry` = 23196;
DELETE FROM `creature_loot_template` WHERE entry=23196;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23196, 21877, 32.28, 0, 2, 3, 0, 'Netherweave Cloth'),
(23196, 32428, 14.04, 0, 1, 1, 0, 'Heart of Darkness'),
(23196, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(23196, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23196, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23196, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23196, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23196, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23196, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23196, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23196, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23196, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23196, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23196, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23196;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23196, 29569, 40, 0, 1, 1, 0, 'Strong Junkbox'),
(23196, 29570, 34, 0, 1, 1, 0, 'A Gnome Effigy'),
(23196, 22829, 3, 0, 1, 1, 0, 'Super Healing Potion'),
(23196, 27854, 15, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23196, 27855, 13, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(23196, 21877, 1.1, 0, 2, 2, 0, 'Netherweave Cloth');

-- Ashtongue Defender 23216
UPDATE `creature_template` SET `PickpocketLootId` = 23216 WHERE `entry` = 23216;
DELETE FROM `pickpocketing_loot_template` WHERE entry=23216;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23216, 27854, 100, 0, 1, 1, 0, 'Smoked Talbuk Venison');

-- Bonechewer Brawler 23222
UPDATE `creature_template` SET `PickpocketLootId` = 23222 WHERE `entry` = 23222;
DELETE FROM `creature_loot_template` WHERE entry=23222;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23222, 21877, 26.37, 0, 2, 3, 0, 'Netherweave Cloth'),
(23222, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(23222, 32897, 15, 0, 1, 1, 0, 'Mark of the Illidari'),
(23222, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23222, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23222, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23222, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23222, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23222, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23222, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23222, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23222, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23222, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23222, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23222;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23222, 29569, 33, 0, 1, 1, 0, 'Strong Junkbox'),
(23222, 29570, 23, 0, 1, 1, 0, 'A Gnome Effigy'),
(23222, 27854, 23, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23222, 27855, 13, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Bonechewer Spectator 23223
UPDATE `creature_template` SET `PickpocketLootId` = 23223 WHERE `entry` = 23223;
DELETE FROM `creature_loot_template` WHERE entry=23223;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23223, 21877, 41.24, 0, 2, 3, 0, 'Netherweave Cloth'),
(23223, 32428, 5, 0, 1, 1, 0, 'Heart of Darkness'),
(23223, 32897, 20, 0, 1, 1, 0, 'Mark of the Illidari'),
(23223, 34093, 10, 1, -34093, 1, 0, 'Epic Gem'),
(23223, 31952, 0.8, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23223, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23223, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23223, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23223, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23223, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23223, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23223, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23223, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23223;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23223, 29569, 43, 0, 1, 1, 0, 'Strong Junkbox'),
(23223, 29570, 29, 0, 1, 1, 0, 'A Gnome Effigy'),
(23223, 27854, 29, 0, 1, 1, 0, 'Smoked Talbuk Venison');

-- Mutant War Hound 23232
DELETE FROM `creature_loot_template` WHERE entry=23232;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23232, 25418, 62.68, 0, 2, 4, 0, 'Razor Sharp Fang'),
(23232, 25421, 19.72, 0, 2, 4, 0, 'Gnarled Claw'),
(23232, 32428, 1.7, 0, 1, 1, 0, 'Heart of Darkness'),
(23232, 32897, 9, 0, 1, 1, 0, 'Mark of the Illidari'),
(23232, 34093, 5, 1, -34093, 1, 0, 'Epic Gem'),
(23232, 31952, 0.2, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23232, 36198, 0.5, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23232, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23232, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23232, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23232, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23232, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23232, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

-- Bonechewer Blade Fury 23235
UPDATE `creature_template` SET `PickpocketLootId` = 23235 WHERE `entry` = 23235;
DELETE FROM `creature_loot_template` WHERE entry=23235;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23235, 21877, 27.49, 0, 2, 3, 0, 'Netherweave Cloth'),
(23235, 32428, 11, 0, 1, 1, 0, 'Heart of Darkness'),
(23235, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(23235, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23235, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23235, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23235, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23235, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23235, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23235, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23235, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23235, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23235, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23235, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23235;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23235, 29569, 25, 0, 1, 1, 0, 'Strong Junkbox'),
(23235, 29570, 34, 0, 1, 1, 0, 'A Gnome Effigy'),
(23235, 22829, 5, 0, 1, 1, 0, 'Super Healing Potion'),
(23235, 27854, 14, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23235, 27855, 25, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Bonechewer Shield Deciple 23236
UPDATE `creature_template` SET `PickpocketLootId` = 23236 WHERE `entry` = 23236;
DELETE FROM `creature_loot_template` WHERE entry=23236;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23236, 21877, 31.78, 0, 2, 3, 0, 'Netherweave Cloth'),
(23236, 32428, 12.15, 0, 1, 1, 0, 'Heart of Darkness'),
(23236, 32897, 12, 0, 1, 1, 0, 'Mark of the Illidari'),
(23236, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23236, 31952, 0.8, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23236, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23236, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23236, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23236, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23236, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23236, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23236, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23236, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23236, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23236;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23236, 29569, 49, 0, 1, 1, 0, 'Strong Junkbox'),
(23236, 29570, 40, 0, 1, 1, 0, 'A Gnome Effigy'),
(23236, 22829, 7, 0, 1, 1, 0, 'Super Healing Potion'),
(23236, 27854, 9, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23236, 27855, 5, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Bonechewer Blood Prophet 23237
UPDATE `creature_template` SET `PickpocketLootId` = 23237 WHERE `entry` = 23237;
DELETE FROM `creature_loot_template` WHERE entry=23237;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23237, 21877, 37.5, 0, 2, 3, 0, 'Netherweave Cloth'),
(23237, 32428, 12, 0, 1, 1, 0, 'Heart of Darkness'),
(23237, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(23237, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23237, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23237, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23237, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23237, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23237, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23237, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23237, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23237, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23237, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23237, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23237;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23237, 29569, 40, 0, 1, 1, 0, 'Strong Junkbox'),
(23237, 29570, 41, 0, 1, 1, 0, 'A Gnome Effigy'),
(23237, 22829, 1.4, 0, 1, 1, 0, 'Super Healing Potion'),
(23237, 27854, 1, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23237, 27855, 1.4, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Bonechewer Combatant 23239
UPDATE `creature_template` SET `PickpocketLootId` = 23239 WHERE `entry` = 23239;
DELETE FROM `creature_loot_template` WHERE entry=23239;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23239, 21877, 41.03, 0, 2, 3, 0, 'Netherweave Cloth'),
(23239, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(23239, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(23239, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23239, 31952, 0.7, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23239, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23239, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23239, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23239, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23239, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23239, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23239, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23239, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23239, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23239;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23239, 22829, 30, 0, 1, 1, 0, 'Super Healing Potion');

-- Illidari Centurion 23337
UPDATE `creature_template` SET `PickpocketLootId` = 23337 WHERE `entry` = 23337;
DELETE FROM `creature_loot_template` WHERE entry=23337;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23337, 21877, 30.97, 0, 2, 3, 0, 'Netherweave Cloth'),
(23337, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(23337, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(23337, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23337, 31952, 1.3, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23337, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23337, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23337, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23337, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23337, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23337, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23337, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23337, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23337, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23337;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23337, 29569, 25, 0, 1, 1, 0, 'Strong Junkbox'),
(23337, 29570, 49, 0, 1, 1, 0, 'A Gnome Effigy'),
(23337, 22829, 2, 0, 1, 1, 0, 'Super Healing Potion'),
(23337, 27854, 18, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23337, 27855, 7, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(23337, 23438, 1.1, 0, 1, 1, 0, 'Star of Elune');

-- Illidari Heartseeker 23339
UPDATE `creature_template` SET `PickpocketLootId` = 23339 WHERE `entry` = 23339;
DELETE FROM `creature_loot_template` WHERE entry=23339;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23339, 21877, 35.84, 0, 2, 3, 0, 'Netherweave Cloth'),
(23339, 32428, 9, 0, 1, 1, 0, 'Heart of Darkness'),
(23339, 32897, 16, 0, 1, 1, 0, 'Mark of the Illidari'),
(23339, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23339, 31952, 1.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23339, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23339, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23339, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23339, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23339, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23339, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23339, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23339, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23339, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23339;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23339, 29569, 22, 0, 1, 1, 0, 'Strong Junkbox'),
(23339, 29570, 62, 0, 1, 1, 0, 'A Gnome Effigy'),
(23339, 22829, 25, 0, 1, 1, 0, 'Super Healing Potion'),
(23339, 27854, 1.7, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23339, 27855, 11, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Ashtongue Stalker 23374
UPDATE `creature_template` SET `PickpocketLootId` = 23374 WHERE `entry` = 23374;
DELETE FROM `creature_loot_template` WHERE entry=23374;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23374, 21877, 41.05, 0, 2, 3, 0, 'Netherweave Cloth'),
(23374, 32428, 8, 0, 1, 1, 0, 'Heart of Darkness'),
(23374, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(23374, 34093, 10, 1, -34093, 1, 0, 'Epic Gem'),
(23374, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23374, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23374, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23374, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23374, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23374, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23374, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23374, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23374, 61126, 6, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23374, 61226, 0.02, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23374;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23374, 29569, 30, 0, 1, 1, 0, 'Strong Junkbox'),
(23374, 29570, 15, 0, 1, 1, 0, 'A Gnome Effigy'),
(23374, 22829, 3, 0, 1, 1, 0, 'Super Healing Potion'),
(23374, 27854, 15, 0, 1, 1, 0, 'Smoked Talbuk Venison');

-- Promenade Sentinal 23394
DELETE FROM `creature_loot_template` WHERE entry=23394;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23394, 32897, 33, 0, 1, 1, 0, 'Mark of the Illidari'),
(23394, 34093, 33, 1, -34093, 1, 0, 'Epic Gem'),
(23394, 31952, 1.1, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23394, 36198, 2, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23394, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23394, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23394, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23394, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23394, 60345, 0.0010, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23394, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23394, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23394, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

-- Illidari Blood Lord 23397
UPDATE `creature_template` SET `PickpocketLootId` = 23397 WHERE `entry` = 23397;
DELETE FROM `creature_loot_template` WHERE entry=23397;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23397, 21877, 45.83, 0, 2, 3, 0, 'Netherweave Cloth'),
(23397, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(23397, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23397, 31952, 0.6, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23397, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23397, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23397, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23397, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23397, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23397, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23397, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23397, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23397, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23397;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23397, 29569, 33, 0, 1, 1, 0, 'Strong Junkbox'),
(23397, 29570, 34, 0, 1, 1, 0, 'A Gnome Effigy'),
(23397, 22829, 8, 0, 1, 1, 0, 'Super Healing Potion'),
(23397, 27854, 11, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23397, 27855, 9, 0, 1, 1, 0, 'Mag\'har Grainbread'),
(23397, 23441, 8, 0, 1, 1, 0, 'Nightseye');

-- Illidari Archon 23400
UPDATE `creature_template` SET `PickpocketLootId` = 23400 WHERE `entry` = 23400;
DELETE FROM `creature_loot_template` WHERE entry=23400;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23400, 21877, 27.91, 0, 2, 3, 0, 'Netherweave Cloth'),
(23400, 32897, 15, 0, 1, 1, 0, 'Mark of the Illidari'),
(23400, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23400, 31952, 0.9, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23400, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23400, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23400, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23400, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23400, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23400, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23400, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23400, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23400, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23400;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23400, 29569, 0.3, 0, 1, 1, 0, 'Strong Junkbox'),
(23400, 29570, 1.5, 0, 1, 1, 0, 'A Gnome Effigy'),
(23400, 27854, 0.3, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23400, 27855, 0.4, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Illidari Battle-Mage 23402
UPDATE `creature_template` SET `PickpocketLootId` = 23402 WHERE `entry` = 23402;
DELETE FROM `creature_loot_template` WHERE entry=23402;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23402, 21877, 38.82, 0, 2, 3, 0, 'Netherweave Cloth'),
(23402, 32897, 14, 0, 1, 1, 0, 'Mark of the Illidari'),
(23402, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23402, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23402, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23402, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23402, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23402, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23402, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23402, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23402, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23402, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23402, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23402;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23402, 29569, 53, 0, 1, 1, 0, 'Strong Junkbox'),
(23402, 29570, 40, 0, 1, 1, 0, 'A Gnome Effigy'),
(23402, 22829, 1.8, 0, 1, 1, 0, 'Super Healing Potion'),
(23402, 27854, 5, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23402, 27855, 4, 0, 1, 1, 0, 'Mag\'har Grainbread');

-- Illidari Assassin 23403
UPDATE `creature_template` SET `PickpocketLootId` = 23403 WHERE `entry` = 23403;
DELETE FROM `creature_loot_template` WHERE entry=23403;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23403, 21877, 50, 0, 2, 3, 0, 'Netherweave Cloth'),
(23403, 32897, 13, 0, 1, 1, 0, 'Mark of the Illidari'),
(23403, 34093, 15, 1, -34093, 1, 0, 'Epic Gem'),
(23403, 31952, 0.7, 0, 1, 1, 0, 'Khorium Lockbox'), -- Froststeel Lockbox
(23403, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23403, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23403, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23403, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23403, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23403, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23403, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23403, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23403, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23403;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23403, 29569, 40, 0, 1, 1, 0, 'Strong Junkbox'),
(23403, 29570, 44, 0, 1, 1, 0, 'A Gnome Effigy'),
(23403, 22829, 4, 0, 1, 1, 0, 'Super Healing Potion'),
(23403, 27854, 15, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23403, 27855, 7, 0, 1, 1, 0, 'Mag\'har Grainbread');

