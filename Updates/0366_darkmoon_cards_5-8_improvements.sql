DELETE FROM `creature_loot_template` WHERE `mincountOrRef` = -49001 AND `entry` IN (20034,20035,20037,20042,20045,20046,20047,20050,22939,22955,22959,22963,25593,25595,25599,28132);
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` = -49001 AND `entry` IN (
20864,21608, -- Protean Nightmare
20865,21607 -- Protean Horror
);

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES
(20034, 49001, 0.1, -49001, 1), -- Star Scryer
(20035, 49001, 0.1, -49001, 1), -- Bloodwarder Marshal
(20037, 49001, 0.1, -49001, 1), -- Tempest Falconer
(20042, 49001, 0.1, -49001, 1), -- Tempest-Smith
(20045, 49001, 0.1, -49001, 1), -- Nether Scryer
(20046, 49001, 0.1, -49001, 1), -- Astromancer Lord
(20047, 49001, 0.1, -49001, 1), -- Crimson Hand Battle Mage
(20050, 49001, 0.1, -49001, 1), -- Crimson Hand Inquisitor
(22939, 49001, 0.1, -49001, 1), -- Temple Concubine
(22955, 49001, 0.1, -49001, 1), -- Charming Courtesan
(22959, 49001, 0.1, -49001, 1), -- Spellbound Attendant
(22963, 49001, 0.1, -49001, 1), -- Bonechewer Worker
(25593, 49001, 0.1, -49001, 1), -- Apocalypse Guard
(25595, 49001, 0.1, -49001, 1), -- Chaos Gazer
(25599, 49001, 0.1, -49001, 1), -- Cataclysm Hound
(28132, 49001, 0.1, -49001, 1); -- Don Carlos

-- Add missing Loot Template for Sunblade Scout 25372
UPDATE `creature_template` SET `LootId` = 25372 WHERE `entry` = 25372;
DELETE FROM `creature_loot_template` WHERE `entry` = 25372;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(25372, 21877, 81, 0, 2, 3, 0, 'Netherweave Cloth'),
(25372, 32897, 15, 0, 1, 1, 0, 'Mark of the Illidari'),
(25372, 61124, 7, 1, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(25372, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(25372, 61224, 0.3, 1, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(25372, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(25372, 3914, 0.1, 0, 1, 1, 0, 'Journeyman''s Backpack'),
(25372, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(25372, 60345, 0.1, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

