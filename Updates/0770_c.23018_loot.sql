-- Shadowmoon Houndmaster 23018
-- https://web.archive.org/web/20150205084128/http://www.wowhead.com/npc=23018/shadowmoon-houndmaster#pickpocketing
-- https://www.wowhead.com/npc=23018/shadowmoon-houndmaster
UPDATE `creature_template` SET `PickpocketLootId` = 23018 WHERE `entry` = 23018;
DELETE FROM `creature_loot_template` WHERE entry=23018;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23018, 21877, 37.41, 0, 2, 3, 0, 'Netherweave Cloth'),
(23018, 32428, 12.93, 0, 1, 1, 0, 'Heart of Darkness'),
(23018, 32897, 6.8, 0, 1, 1, 0, 'Mark of the Illidari'),
(23018, 12005, 15, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(23018, 31952, 0.4, 0, 1, 1, 0, 'Khorium Lockbox'),
(23018, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(23018, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(23018, 49001, 0.1, 0, -49001, 1, 0, 'NPC LOOT - Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids - TBC NPC ONLY'),
(23018, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23018, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT (World Drop) - (PROFESSION PATTERN / RECIPE / DESIGN DROPS) - (Item Levels: ??) - NPC Levels 68+ Elite Only (WORLD CLASS LOOT DROP)'),
(23018, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23018, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23018, 61128, 6, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23018, 61228, 0.02, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

DELETE FROM `pickpocketing_loot_template` WHERE entry=23018;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23018, 29570, 1, 0, 1, 1, 0, 'A Gnome Effigy'),
(23018, 29569, 0.6, 0, 1, 1, 0, 'Strong Junkbox'),
(23018, 27854, 0.5, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23018, 27855, 0.2, 0, 1, 1, 0, 'Mag''har Grainbread'),
(23018, 22829, 0.1, 0, 1, 1, 0, 'Super Healing Potion');

