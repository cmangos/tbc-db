-- Befor, the groupid of a reference_loot_template referenced towards the items inside the reference_loot_template
-- Now, the groupid for a reference_loot_template is the same as for items, abiding to the 100% chance rule inside the primary loot table.
-- We will also have to check for cases, where groupid = 1 and other items also having groupid = 1
-- Same for refloots where groupid != 0 or 1 as it no longer rolles for explicit items inside the refloot which have this corresponding groupid

-- Linked Core Commits:
-- https://github.com/cmangos/mangos-tbc/commit/e9aa973fd979b5fe801a4c3a6c9011c7fc0170b4
-- https://github.com/cmangos/mangos-tbc/commit/ca97309fa842e1287661d30009910ac15554a87d
-- https://github.com/cmangos/mangos-tbc/commit/1ebd794f68a58ff7a093d2e4d4b3e6fdf05943f2

-- 185169	Reinforced Fel Iron Chest
-- Table 'gameobject_loot_template' entry 21764 group 1 has total chance > 100% (200.000000)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 21764 AND `mincountOrRef` IN (-40035,-40039);

-- 184936	Bound Adamantite Chest
-- 184937	Solid Adamantite Chest
-- 184938	Bound Adamantite Chest
-- 184939	Solid Adamantite Chest
-- Table 'gameobject_loot_template' entry 21280 group 1 has total chance > 100% (120.000000)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 21280 AND `mincountOrRef` = -50604;

-- 185168	Reinforced Fel Iron Chest
-- Table 'gameobject_loot_template' entry 21762 group 1 has total chance > 100% (200.000000)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 21762 AND `mincountOrRef` IN (-40034,-40038);

-- 184940	Bound Adamantite Chest
-- 184941	Solid Adamantite Chest
-- Table 'gameobject_loot_template' entry 21261 group 1 has total chance > 100% (135.000000)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 21261 AND `mincountOrRef` = -50604;

-- 184930	Solid Fel Iron Chest
-- 184931	Bound Fel Iron Chest
-- 184932	Bound Fel Iron Chest
-- 184933	Solid Fel Iron Chest
-- 184934	Bound Fel Iron Chest
-- 184935	Solid Fel Iron Chest
-- Table 'gameobject_loot_template' entry 21260 group 1 has total chance > 100% (125.000000)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 21260 AND `mincountOrRef` = -50604;

-- 29569	Strong Junkbox
-- Table 'item_loot_template' entry 29569 group 1 has total chance > 100% (175.000000)
UPDATE `item_loot_template` SET `groupid` = 0 WHERE `entry` = 29569 AND `mincountOrRef` = -48999;

-- 33857	Crate of Meat
-- Table 'item_loot_template' entry 33857 group 1 has total chance > 100% (120.000000)
UPDATE `item_loot_template` SET `item` = 33857, `groupid` = 0, `mincountOrRef` = -33857 WHERE `entry` = 33857 AND `mincountOrRef` = -10004;
UPDATE `reference_loot_template` SET `entry` = 33857 WHERE `entry` = 10004;
UPDATE `reference_loot_template_names` SET `entry` = 33857 WHERE `entry` = 10004;

-- 34548	Cache of the Shattered Sun
-- Table 'item_loot_template' entry 34548 group 1 has total chance > 100% (300.000000)
UPDATE `item_loot_template` SET `groupid` = 0 WHERE `entry` = 34548 AND `mincountOrRef` IN (1,-50000,-50001,-50002);

-- 33844	Barrel of Fish
-- Table 'item_loot_template' entry 33844 group 1 has total chance > 100% (120.000000)
UPDATE `item_loot_template` SET `item` = 33844, `groupid` = 0, `mincountOrRef` = -33844 WHERE `entry` = 33844 AND `mincountOrRef` = -10003;
UPDATE `reference_loot_template` SET `entry` = 33844 WHERE `entry` = 10003;
UPDATE `reference_loot_template_names` SET `entry` = 33844 WHERE `entry` = 10003;

-- SELECT DISTINCT entry FROM reference_loot_template where groupid NOT IN (0,1);
-- 10000	Bag of Fishing Treasures (i.34863,35348) - TBC - seems fine
-- 39000	NPC LOOT - Quagmirran - Herbalism Items - seems fine
-- 39001	NPC LOOT - Tavarok - Mining Items - seems fine

-- seem fine
-- 40056	Hellfire Citadel: The Shattered Halls (Boss Loot) - Shattered Hand Executioner (Heroic) - 3 Alive
-- 40057	Hellfire Citadel: The Shattered Halls (Boss Loot) - Shattered Hand Executioner (Heroic) - 2 Alive
-- 40058	Hellfire Citadel: The Shattered Halls (Boss Loot) - Shattered Hand Executioner (Heroic) - 1 Alive
-- 40059	Hellfire Citadel: The Shattered Halls (Boss Loot) - Shattered Hand Executioner (Heroic) - 0 Alive

-- SELECT DISTINCT entry FROM reference_loot_template where groupid IN (0) order by entry;
-- 11012	Fishing Loot - Zangarmarsh (3521) / Serpentshrine Cavern (3607) / The Underbog (3716) - seems fine
-- 42009	Super Healing/Mana Potion (75%)(25%) - TBC
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 42009;

-- 42010	Major Healing/Mana Potion (75%)(25%)
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 42010;

-- SELECT DISTINCT entry FROM reference_loot_template where groupid IN (1) order by entry; -- 900 so the remaining refloots

-- Remaining World Loot Cleanup
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36098; -- Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36099; -- Tempest Keep: The Eye - Trash loot - Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36100; -- T5 - Recipes
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36196; -- Hyjal Summit (Trash Loot) - Epic Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36197; -- Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36198; -- Black Temple (Trash Loot) - Epic Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36199; -- Black Temple (Trash Loot) - Profession (-Pattern,-Plans)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36200; -- Sunwell Plateau (Trash Loot) - Epic Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -36201; -- Sunwell Plateau (Trash Loot) - Profession (Schematic, Design, Pattern, Plans)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -40072; -- Tempest Keep: The Botanica (Boss Loot) - Thorngrin the Tender (Normal and Heroic) - Rare Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -40073; -- Tempest Keep: The Botanica (Boss Loot) - Laj (Normal and Heroic) - Rare Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50500; -- NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50604; -- Scrolls V - (NPC Levels 58-72) - TBC
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60345; -- NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -61001; -- NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -61122; -- NPC LOOT (Green World Drop) - (Item Levels: 108-114) - (NPC Levels: 69) - TBC NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -61124; -- NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -61224; -- NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY

-- -10001	Item Loot - Aldor / Scryer Supplies Package (34583,34584,34585,34587,34592,34593,34594,34595) - Scrolls V - duplicate
DELETE FROM `reference_loot_template` WHERE `entry` = 10001;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 10001;
DELETE FROM `item_loot_template` where entry IN (34583,34584,34587,34585,34593,34594,34592,34595) and mincountorref IN (-10001,-50604);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(34583, 50604, 100, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(34584, 50604, 100, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(34585, 50604, 100, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(34587, 50604, 100, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(34592, 50604, 100, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(34593, 50604, 100, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(34594, 50604, 100, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(34595, 50604, 100, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC');

-- 33926	Sealed Scroll Case
-- -50501	NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!
UPDATE `item_loot_template` SET `groupid` = 0 WHERE `entry` = 33926 AND `mincountOrRef` = -50501;

-- 31952	Khorium Lockbox
-- -61120	NPC LOOT (Green World Drop) - (Item Levels: 105-111) - (NPC Levels: 68) - TBC NPC ONLY
-- -61220	NPC LOOT (Blue World Drop) - (Item Levels: 106-112) - (NPC Levels: 68) - TBC NPC ONLY
DELETE FROM `item_loot_template` WHERE `entry` = 31952;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(31952, 61120, 100, 0, -61120, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 105-111) - (NPC Levels: 68) - TBC NPC ONLY'),
(31952, 2, 20, 0, -61120, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 105-111) - (NPC Levels: 68) - TBC NPC ONLY'),
(31952, 61220, 2, 0, -61220, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 106-112) - (NPC Levels: 68) - TBC NPC ONLY'),
(31952, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');

