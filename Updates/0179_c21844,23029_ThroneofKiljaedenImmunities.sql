-- Revamp Loot for Mountain Colossus 21844 & Talonsworn Forest-Rager 23029
DELETE FROM `creature_loot_template` WHERE `entry` IN (21844,23029);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(21844, 29580, 77.1014, 0, 1, 1, 0, 'Crystal Fragments'),
(21844, 29581, 20.8696, 0, 1, 1, 0, 'Strange Crystal'),
(21844, 12004, 10, 1, -12004, 1, 0, 'Uncommon & Rare Gem - TBC'),
(21844, 2, 75, 2, -12004, 1, 0, 'Uncommon & Rare Gem - TBC'),
(21844, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(21844, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(21844, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - NPC Level 68+ Elite'),
(21844, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(21844, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(21844, 61127, 6, 0, -61127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(21844, 61227, 0.02, 0, -61227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71-72) - TBC NPC ONLY'),

(23029, 30475, 76.4, 0, 1, 1, 0, 'Razor Thorn'),
(23029, 30476, 18.7, 0, 1, 1, 0, 'Hypnotic Flower'),
(23029, 22575, 2, 0, 2, 5, 0, 'Mote of Life'),
(23029, 31952, 0.2, 0, 1, 1, 0, 'Khorium Lockbox'),
(23029, 22785, 30, 1, 2, 6, 0, 'Felweed'),
(23029, 22786, 20, 1, 2, 6, 0, 'Dreaming Glory'),
(23029, 22789, 20, 1, 2, 6, 0, 'Terocone'),
(23029, 22790, 12.5, 1, 2, 6, 0, 'Ancient Lichen'),
(23029, 22793, 12.5, 1, 2, 6, 0, 'Mana Thistle'),
(23029, 22794, 5, 1, 2, 6, 0, 'Fel Lotus'),
(23029, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23029, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23029, 50501, 0.1, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - NPC Level 68+ Elite'),
(23029, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23029, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23029, 61127, 6, 0, -61127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(23029, 61227, 0.02, 0, -61227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71-72) - TBC NPC ONLY');

-- Add more reference_loot_template_names - ToDo: Recheck Struct with NEW 50501
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (10006,12004,24092,24093);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(10006, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - RequiredSkillRank 300 - 375'),
(12004, 'Uncommon & Rare Gem - TBC'),
(24092, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - RequiredSkillRank 345 - 360'),
(24093, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - RequiredSkillRank 365 - 375');

-- Add missing Patterns and Remove Outdated pattern-drums-of-speed drop
-- https://www.wowhead.com/item=29718/pattern-drums-of-speed#comments:id=166211
DELETE FROM `creature_loot_template` WHERE `item` IN (23884,24163,29718);
DELETE FROM `reference_loot_template` WHERE `item` IN (23884,24163) AND `entry` = 24092;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24092, 23884, 0, 1, 1, 1, 0, 'Schematic: Mana Potion Injector'), -- 345
(24092, 24163, 0, 1, 1, 1, 0, 'Design: Heavy Felsteel Ring'); -- 345

UPDATE `creature_template` SET `MinLootGold` = 0, `MaxLootGold` = 0, `MechanicImmuneMask` = 33558080, `MovementType` = 0 WHERE `entry` = 21844; -- Mountain Colossus

-- Throne of Kil'jaeden Pre 2.4 Immunities

-- Throne Hound - immune to enslave and banish
-- http://www.wowhead.com/npc=22303/throne-hound#comments:id=41801
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1|131072, `DamageMultiplier` = 3 WHERE Entry=22303;
-- Throne-Guard Sentinel
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1|2|16|8388608 WHERE Entry=22301;
-- Throne-Guard Highlord
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1|2|8|16|2048|8388608|33554432, `DamageMultiplier` = 3.6 WHERE Entry=22297;
-- Throne-Guard Champion
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1|2|8|16|2048|8388608|33554432 WHERE Entry=22302;
-- Deathforge Automaton
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1|2|8|16|64|1024|2048|4096|8388608|33554432 WHERE Entry=22295;

