-- Rework loot for ALL creatures related to Ogri'la

-- ------------------------------------------------
-- Four Dragons
-- ------------------------------------------------

-- All Dragons guarantee:
-- * Dragon's Claw or Dragon's Fang
-- * Respective Dragon Scale
-- * Dragon Teeth
-- * Grey World Drop item
-- * Green World Drop item
-- * Apexis Shard
-- 15% chance for:
-- * Depleted item
-- Low chance for:
-- * Class Codex

DELETE FROM reference_loot_template_names WHERE entry=41300;
INSERT INTO reference_loot_template_names (entry, name) VALUES
(41300, 'Blade\'s Edge Mountains - Four Dragons - Dragon''s Claw/Dragon''s Fang (75%)(25%)');
DELETE FROM reference_loot_template WHERE entry=41300;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES 
(41300, 29563, 75, 1, 2, 4),
(41300, 29564, 25, 1, 2, 4);

DELETE FROM reference_loot_template_names WHERE entry=41301;
INSERT INTO reference_loot_template_names (entry, name) VALUES
(41301, 'Blade\'s Edge Mountains - Depleted Items');
DELETE FROM reference_loot_template WHERE entry=41301;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES 
(41301, 32676, 0, 1, 1, 1),
(41301, 32675, 0, 1, 1, 1),
(41301, 32672, 0, 1, 1, 1),
(41301, 32677, 0, 1, 1, 1),
(41301, 32673, 0, 1, 1, 1),
(41301, 32671, 0, 1, 1, 1),
(41301, 32678, 0, 1, 1, 1),
(41301, 32679, 0, 1, 1, 1),
(41301, 32674, 0, 1, 1, 1),
(41301, 32670, 0, 1, 1, 1);

-- Skinning loot for all 4 dragons
DELETE FROM skinning_loot_template WHERE entry=70173;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(70173, 21887, 100, 0, 2, 4, 0, 'Knothide Leather'),
(70173, 35229, -25, 0, 1, 1, 0, 'Nether Residue');

-- Obsidia
UPDATE creature_template SET LootId=23282, SkinningLootId=70173 WHERE entry=23282;
DELETE FROM creature_loot_template WHERE entry=23282;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23282, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23282, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23282, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23282, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23282, 61128, 100, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23282, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items'),
(23282, 41300, 100, 0, -41300, 1, 0, 'Blade\'s Edge Mountains - Four Dragons - Dragon''s Claw/Dragon''s Fang (75%)(25%)'),
(23282, 32569, 100, 0, 2, 3, 0, 'Apexis Shard'),
(23282, 32682, 100, 0, 1, 1, 0, 'Obsidia Scale'),
(23282, 32732, -100, 0, 1, 1, 0, 'Dragon Teeth');

-- Rivendark
UPDATE creature_template SET LootId=23061, SkinningLootId=70173 WHERE entry=23061;
DELETE FROM creature_loot_template WHERE entry=23061;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23061, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23061, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23061, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23061, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23061, 61128, 100, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23061, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items'),
(23061, 41300, 100, 0, -41300, 1, 0, 'Blade\'s Edge Mountains - Four Dragons - Dragon''s Claw/Dragon''s Fang (75%)(25%)'),
(23061, 32569, 100, 0, 2, 3, 0, 'Apexis Shard'),
(23061, 32681, 100, 0, 1, 1, 0, 'Onyx Scale of Rivendark'),
(23061, 32732, -100, 0, 1, 1, 0, 'Dragon Teeth');

-- Furywing
UPDATE creature_template SET LootId=23261, SkinningLootId=70173 WHERE entry=23261;
DELETE FROM creature_loot_template WHERE entry=23261;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23261, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23261, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23261, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23261, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23261, 61128, 100, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23261, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items'),
(23261, 41300, 100, 0, -41300, 1, 0, 'Blade\'s Edge Mountains - Four Dragons - Dragon''s Claw/Dragon''s Fang (75%)(25%)'),
(23261, 32569, 100, 0, 2, 3, 0, 'Apexis Shard'),
(23261, 32683, 100, 0, 1, 1, 0, 'Jet Scale of Furywing'),
(23261, 32732, -100, 0, 1, 1, 0, 'Dragon Teeth');

-- Insidion
UPDATE creature_template SET LootId=23281, SkinningLootId=70173 WHERE entry=23281;
DELETE FROM creature_loot_template WHERE entry=23281;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23281, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23281, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23281, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23281, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23281, 61128, 100, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23281, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items'),
(23281, 41300, 100, 0, -41300, 1, 0, 'Blade\'s Edge Mountains - Four Dragons - Dragon''s Claw/Dragon''s Fang (75%)(25%)'),
(23281, 32569, 100, 0, 2, 3, 0, 'Apexis Shard'),
(23281, 32684, 100, 0, 1, 1, 0, 'Insidion''s Ebony Scale'),
(23281, 32732, -100, 0, 1, 1, 0, 'Dragon Teeth');

-- ------------------------------------------------
-- Blade's Edge Terrace bosses
-- ------------------------------------------------
DELETE FROM creature_loot_template WHERE entry IN(22281,23353,23354,23355);
-- Galvanoth c.22281
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22281, 21877, 35, 0, 4, 6, 0, 'Netherweave Cloth'),
(22281, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(22281, 27854, 6, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22281, 27860, 3, 0, 1, 1, 0, 'Purified Draenic Water'),
(22281, 32572, 100, 0, 1, 1, 0, 'Apexis Crystal'),
(22281, 32733, -100, 0, 1, 1, 0, 'Fel Whip'),
(22281, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22281, 42009, 2.5, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22281, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22281, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22281, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22281, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22281, 61124, 100, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(22281, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(22281, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Braxxus c.23353
UPDATE creature_template SET MinLootGold=1945, MaxLootGold=2545 WHERE entry=23353; -- Was not dropping any money. Set to same values as Galvanoth
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23353, 25418, 75, 1, 2, 4, 0, 'Razor Sharp Fang'),
(23353, 25421, 25, 1, 2, 4, 0, 'Gnarled Claw'),
(23353, 32572, 100, 0, 1, 1, 0, 'Apexis Crystal'),
(23353, 32733, -100, 0, 1, 1, 0, 'Fel Whip'),
(23353, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23353, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23353, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23353, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23353, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23353, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23353, 61124, 100, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23353, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23353, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Mo'arg Incinerator c.23354
UPDATE creature_template SET MinLootGold=1945, MaxLootGold=2545 WHERE entry=23354; -- Was not dropping any money. Set to same values as Galvanoth
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23354, 21877, 45, 0, 4, 6, 0, 'Netherweave Cloth'),
(23354, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23354, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(23354, 32572, 100, 0, 1, 1, 0, 'Apexis Crystal'),
(23354, 32733, -100, 0, 1, 1, 0, 'Fel Whip'),
(23354, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23354, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23354, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23354, 42009, 2.5, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23354, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23354, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23354, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23354, 61124, 100, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23354, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23354, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Zarcsin c.23355
UPDATE creature_template SET MinLootGold=1945, MaxLootGold=2545 WHERE entry=23355; -- Was not dropping any money. Set to same values as Galvanoth
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23355, 21877, 40, 0, 4, 6, 0, 'Netherweave Cloth'),
(23355, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23355, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(23355, 32572, 100, 0, 1, 1, 0, 'Apexis Crystal'),
(23355, 32733, -100, 0, 1, 1, 0, 'Fel Whip'),
(23355, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23355, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23355, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23355, 42009, 2.5, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23355, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23355, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23355, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23355, 61124, 100, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23355, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23355, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- ------------------------------------------------
-- Apexis Guardian c.22275
-- ------------------------------------------------
DELETE FROM creature_loot_template WHERE entry=22275;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22275, 4552, 80, 1, 2, 4, 0, 'Smooth Stone Chip'),
(22275, 4554, 20, 1, 2, 4, 0, 'Shiny Polished Stone'),
(22275, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(22275, 32572, 100, 0, 1, 1, 0, 'Apexis Crystal'),
(22275, 32697, -100, 0, 1, 1, 0, 'Apexis Guardian\'s Head'),
(22275, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22275, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22275, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22275, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22275, 61128, 100, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(22275, 61228, 0.1, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
(22275, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22275, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- ------------------------------------------------
-- Shartuul c.23230
-- Not a lot of data available for this npc.
-- He has a 100% to drop either a depleted item (90%) or (10%) one of two BoP Epics (signet seems to have a higher chance than the ring)
-- ------------------------------------------------
UPDATE creature_template SET MinLootGold=1945, MaxLootGold=2545 WHERE entry=23230; -- Add missing money drop
DELETE FROM creature_loot_template WHERE entry=23230;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23230, 21877, 40, 0, 4, 6, 0, 'Netherweave Cloth'),
(23230, 27854, 8, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23230, 27860, 4, 0, 1, 1, 0, 'Purified Draenic Water'),
(23230, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23230, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23230, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23230, 32670, 0, 1, 1, 1, 0, 'Depleted Two-Handed Axe'),
(23230, 32671, 0, 1, 1, 1, 0, 'Depleted Mace'),
(23230, 32672, 0, 1, 1, 1, 0, 'Depleted Badge'),
(23230, 32673, 0, 1, 1, 1, 0, 'Depleted Dagger'),
(23230, 32674, 0, 1, 1, 1, 0, 'Depleted Sword'),
(23230, 32675, 0, 1, 1, 1, 0, 'Depleted Mail Gauntlets'),
(23230, 32676, 0, 1, 1, 1, 0, 'Depleted Cloth Bracers'),
(23230, 32677, 0, 1, 1, 1, 0, 'Depleted Cloak'),
(23230, 32678, 0, 1, 1, 1, 0, 'Depleted Ring'),
(23230, 32679, 0, 1, 1, 1, 0, 'Depleted Staff'),
(23230, 32941, 7, 1, 1, 1, 0, 'Corruptor\'s Signet'),
(23230, 32942, 3, 1, 1, 1, 0, 'Ring of the Overseer');

-- ------------------------------------------------
-- Bash'ir Landing Bosses
-- ------------------------------------------------
-- Bash'ir's Harbinger c.23390
UPDATE creature_template SET MinLootGold=1945, MaxLootGold=2545 WHERE entry=23390; -- Add missing money drop
DELETE FROM creature_loot_template WHERE entry=23390;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23390, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23390, 32572, 100, 0, 1, 1, 0, 'Apexis Crystal'),
(23390, 32773, 10, 0, 1, 1, 0, 'Bash''ir''s Skeleton Key'),
(23390, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23390, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23390, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23390, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23390, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23390, 61128, 100, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23390, 61228, 0.1, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
(23390, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23390, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Bash'ir c.23391
-- Hardly any data available for this npc due to how rare it is and how few players bothered to farm him. 
-- Loot is therefore a copy of Bash'ir's Harbinger, which may or may not be correct
UPDATE creature_template SET LootId=23391, MinLootGold=1945, MaxLootGold=2545 WHERE entry=23391;
DELETE FROM creature_loot_template WHERE entry=23391;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23391, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23391, 32572, 100, 0, 1, 1, 0, 'Apexis Crystal'),
(23391, 32773, 10, 0, 1, 1, 0, 'Bash''ir''s Skeleton Key'),
(23391, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23391, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23391, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23391, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23391, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23391, 61128, 100, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23391, 61228, 0.1, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
(23391, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23391, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- The Grand Collector c.23350 (mirror image npc)
-- Remove skinning(mining) loot
UPDATE creature_template SET LootId=0, SkinningLootId=0 WHERE entry=23350;

-- The Grand Collector c.23333
-- Remove skinning(mining) loot
UPDATE creature_template SET SkinningLootId=0, MinLootGold=1945, MaxLootGold=2545 WHERE entry=23333;
DELETE FROM creature_loot_template WHERE entry=23333;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23333, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(23333, 25030, 20, 0, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(23333, 32572, 100, 0, 1, 1, 0, 'Apexis Crystal'),
(23333, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23333, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23333, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23333, 61001, 10, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23333, 61128, 100, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23333, 61228, 0.1, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
(23333, 60345, 0.01, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23333, 41301, 20, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- ------------------------------------------------
-- Other Ogri'la creatures
-- ------------------------------------------------
-- Mo'arg Extractor c.22304
UPDATE creature_template SET MinLootGold=1222, MaxLootGold=1425 WHERE entry=22304; -- Add missing money drop
DELETE FROM creature_loot_template WHERE entry=22304;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22304, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22304, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22304, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22304, 32569, 100, 0, 2, 3, 0, 'Apexis Shard'),
(22304, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22304, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22304, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22304, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22304, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22304, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22304, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22304, 61126, 2, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(22304, 61226, 0.05, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(22304, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Crystalfused Miner c.23174
UPDATE creature_template SET MinLootGold=1222, MaxLootGold=1425 WHERE entry=23174; -- Add missing money drop
DELETE FROM creature_loot_template WHERE entry=23174;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23174, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(23174, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23174, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(23174, 32569, 100, 0, 2, 3, 0, 'Apexis Shard'),
(23174, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23174, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23174, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23174, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23174, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23174, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23174, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23174, 61124, 2, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23174, 61224, 0.05, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23174, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Bash'ir Surveyor c.23153
UPDATE creature_template SET MinLootGold=1222, MaxLootGold=1425 WHERE entry=23153; -- Add missing money drop
DELETE FROM creature_loot_template WHERE entry=23153;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23153, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(23153, 27857, 4, 0, 1, 1, 0, 'Garadar Sharp'),
(23153, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(23153, 29460, 1.5, 0, 1, 1, 220, 'Ethereum Prison Key'),
(23153, 32569, 100, 0, 2, 3, 0, 'Apexis Shard'),
(23153, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23153, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23153, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23153, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23153, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23153, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23153, 61128, 2, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(23153, 61228, 0.05, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
(23153, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23153, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Mana-debt Slave c.23154
UPDATE creature_template SET MinLootGold=1222, MaxLootGold=1425 WHERE entry=23154; -- Add missing money drop
DELETE FROM creature_loot_template WHERE entry=23154;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23154, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(23154, 27857, 4, 0, 1, 1, 0, 'Garadar Sharp'),
(23154, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(23154, 29460, 1.5, 0, 1, 1, 220, 'Ethereum Prison Key'),
(23154, 32569, 100, 0, 2, 3, 0, 'Apexis Shard'),
(23154, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23154, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23154, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23154, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23154, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23154, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23154, 61124, 2, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23154, 61224, 0.05, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23154, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23154, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Gan'arg Analyzer c.23386
UPDATE creature_template SET MinLootGold=1222, MaxLootGold=1425 WHERE entry=23386; -- Add missing money drop
DELETE FROM creature_loot_template WHERE entry=23386;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(23386, 29740, 1, 0, 1, 1, 0, 'Fel Armament'),
(23386, 30809, 14, 0, 1, 2, 0, 'Mark of Sargeras'),
(23386, 31952, 0.1, 0, 1, 1, 0, 'Khorium Lockbox'),
(23386, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(23386, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(23386, 34114, 5, 0, 1, 1, 202, 'Schematic: Field Repair Bot 110G'),
(23386, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(23386, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(23386, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23386, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23386, 61124, 2, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23386, 61224, 0.05, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23386, 60345, 0.0005, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23386, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Bash'ir Arcanist c.22243
DELETE FROM creature_loot_template WHERE entry=22243;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22243, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22243, 22555, 3, 0, 1, 1, 203, 'Formula: Enchant Weapon - Major Spellpower'),
(22243, 27857, 6, 0, 1, 1, 0, 'Garadar Sharp'),
(22243, 27860, 3, 0, 1, 1, 0, 'Purified Draenic Water'),
(22243, 29460, 2, 0, 1, 1, 220, 'Ethereum Prison Key'),
(22243, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22243, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22243, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22243, 34248, -22, 0, 1, 1, 0, 'Bash\'ir Phasing Device'),
(22243, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22243, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22243, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22243, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22243, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22243, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22243, 61127, 2, 0, -61127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22243, 61227, 0.05, 0, -61227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22243, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22243, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Bash'ir Spell-Thief c.22242
DELETE FROM creature_loot_template WHERE entry=22242;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22242, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22242, 22555, 3, 0, 1, 1, 203, 'Formula: Enchant Weapon - Major Spellpower'),
(22242, 27857, 6, 0, 1, 1, 0, 'Garadar Sharp'),
(22242, 27860, 3, 0, 1, 1, 0, 'Purified Draenic Water'),
(22242, 29460, 2, 0, 1, 1, 220, 'Ethereum Prison Key'),
(22242, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22242, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22242, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22242, 34248, -22, 0, 1, 1, 0, 'Bash\'ir Phasing Device'),
(22242, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22242, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22242, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22242, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22242, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22242, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22242, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22242, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22242, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22242, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Bash'ir Raider c.22241
DELETE FROM creature_loot_template WHERE entry=22241;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22241, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22241, 27857, 4, 0, 1, 1, 0, 'Garadar Sharp'),
(22241, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22241, 29460, 2, 0, 1, 1, 220, 'Ethereum Prison Key'),
(22241, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22241, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22241, 34248, -22, 0, 1, 1, 0, 'Bash\'ir Phasing Device'),
(22241, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22241, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22241, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22241, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22241, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22241, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22241, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22241, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22241, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22241, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22241, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Unbound Ethereal c.22244
DELETE FROM creature_loot_template WHERE entry=22244;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22244, 22576, 33, 0, 1, 2, 0, 'Mote of Mana'),
(22244, 24508, 80, 1, 1, 1, 0, 'Elemental Fragment'),
(22244, 24511, 20, 1, 1, 1, 0, 'Primordial Essence'),
(22244, 29460, 2, 0, 1, 1, 220, 'Ethereum Prison Key'),
(22244, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22244, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22244, 34248, -22, 0, 1, 1, 0, 'Bash\'ir Phasing Device'),
(22244, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22244, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22244, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22244, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22244, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22244, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22244, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22244, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Apexis Flayer c.22175
-- Remove skinning loot. They are not skinnable
UPDATE creature_template SET SkinningLootId=0 WHERE entry=22175;
DELETE FROM creature_loot_template WHERE entry=22175;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22175, 24519, 80, 1, 1, 1, 0, 'Twisted Rock Flayer Talon'),
(22175, 24521, 20, 1, 1, 1, 0, 'Mangled Tail'),
(22175, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22175, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22175, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22175, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22175, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22175, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22175, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22175, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22175, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22175, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22175, 61127, 2, 0, -61127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22175, 61227, 0.05, 0, -61227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22175, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22175, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Shard-Hide Boar c.22180
DELETE FROM creature_loot_template WHERE entry=22180;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22180, 25441, 80, 1, 1, 1, 0, 'Gnarled Boar Tusk'),
(22180, 25443, 20, 1, 1, 1, 0, 'Bloody Snout'),
(22180, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22180, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22180, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22180, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22180, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22180, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22180, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22180, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22180, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22180, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22180, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');
-- And add correct skinning loot
UPDATE creature_template SET SkinningLootId=70175 WHERE entry=22180;
DELETE FROM skinning_loot_template WHERE entry=70175;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(70175, 21887, 0, 1, 1, 1, 0, 'Knothide Leather'),
(70175, 25649, 0, 1, 2, 3, 0, 'Knothide Leather Scraps'),
(70175, 25699, 20, 1, 1, 1, 0, 'Crystal Infused Leather'),
(70175, 25700, 20, 1, 1, 1, 0, 'Fel Scales'),
(70175, 35229, -25, 0, 1, 1, 0, 'Nether Residue');

-- Daggertail Lizard c.22255
-- Surprisingly doesn't drop apexis shards (so presumably no Depleted Items either)
DELETE FROM creature_loot_template WHERE entry=22255;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22255, 27934, 80, 1, 1, 1, 0, 'Vorpal Claw'),
(22255, 27935, 20, 1, 1, 1, 0, 'Needle Fang'),
(22255, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22255, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22255, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22255, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22255, 61129, 2, 0, -61129, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 72-73) - TBC NPC ONLY'),
(22255, 61228, 0.05, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY'),
(22255, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY');
-- And add correct skinning loot
UPDATE creature_template SET SkinningLootId=70174 WHERE entry=22255;
DELETE FROM skinning_loot_template WHERE entry=70174;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(70174, 25649, 0, 1, 2, 3, 0, 'Knothide Leather Scraps'),
(70174, 21887, 40, 1, 1, 1, 0, 'Knothide Leather'),
(70174, 25707, 15, 1, 1, 1, 0, 'Fel Hide'),
(70174, 35229, -25, 0, 1, 1, 0, 'Nether Residue');

-- Aether Ray c.22181
-- Instead of using condition 83, add the Aether Ray Eye to quest_template and set negative dropchance
UPDATE quest_template SET ReqSourceId1=32567 WHERE entry=10980;
DELETE FROM creature_loot_template WHERE entry=22181;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22181, 22576, 33, 0, 1, 2, 0, 'Mote of Mana'),
(22181, 24508, 80, 1, 1, 1, 0, 'Elemental Fragment'),
(22181, 24511, 20, 1, 1, 1, 0, 'Primordial Essence'),
(22181, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22181, 32567, -100, 0, 1, 1, 0, 'Aether Ray Eye'),
(22181, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22181, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22181, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22181, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22181, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22181, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22181, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22181, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22181, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22181, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');
-- And add correct skinning loot
UPDATE creature_template SET SkinningLootId=70176 WHERE entry=22181;
DELETE FROM skinning_loot_template WHERE entry=70176;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(70176, 21887, 100, 0, 1, 1, 0, 'Knothide Leather'),
(70176, 35229, -25, 0, 1, 1, 0, 'Nether Residue');

-- Furnace Guard c.22291
DELETE FROM creature_loot_template WHERE entry=22291;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22291, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22291, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22291, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22291, 29740, 0.9, 0, 1, 1, 0, 'Fel Armament'),
(22291, 30809, 14, 0, 1, 1, 0, 'Mark of Sargeras'),
(22291, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22291, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22291, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22291, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22291, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22291, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22291, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22291, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22291, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22291, 61127, 2, 0, -61127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22291, 61227, 0.05, 0, -61227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22291, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22291, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Wrath Speaker c.22195
DELETE FROM creature_loot_template WHERE entry=22195;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22195, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22195, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22195, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22195, 29740, 0.9, 0, 1, 1, 0, 'Fel Armament'),
(22195, 30809, 14, 0, 1, 1, 0, 'Mark of Sargeras'),
(22195, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22195, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22195, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22195, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22195, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22195, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22195, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22195, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22195, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22195, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22195, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22195, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22195, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Wrath Corruptor c.22254
DELETE FROM creature_loot_template WHERE entry=22254;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22254, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22254, 27857, 4, 0, 1, 1, 0, 'Garadar Sharp'),
(22254, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22254, 29740, 0.9, 0, 1, 1, 0, 'Fel Armament'),
(22254, 30809, 14, 0, 1, 1, 0, 'Mark of Sargeras'),
(22254, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22254, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22254, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22254, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22254, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22254, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22254, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22254, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22254, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22254, 61127, 2, 0, -61127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22254, 61227, 0.05, 0, -61227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22254, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22254, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Wrath Hound c.20557
DELETE FROM creature_loot_template WHERE entry=20557;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(20557, 25418, 80, 1, 1, 1, 0, 'Razor Sharp Fang'),
(20557, 25421, 20, 1, 1, 1, 0, 'Gnarled Claw'),
(20557, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(20557, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(20557, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(20557, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(20557, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(20557, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(20557, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(20557, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(20557, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(20557, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(20557, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');
-- And add correct skinning loot
UPDATE creature_template SET SkinningLootId=70174 WHERE entry=20557;

-- Fear Fiend c.22204
DELETE FROM creature_loot_template WHERE entry=22204;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22204, 21877, 35, 0, 2, 3, 0, 'Netherweave Cloth'),
(22204, 27854, 4, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(22204, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(22204, 29740, 0.9, 0, 1, 1, 0, 'Fel Armament'),
(22204, 30809, 14, 0, 1, 1, 0, 'Mark of Sargeras'),
(22204, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22204, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22204, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(22204, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22204, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22204, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22204, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22204, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22204, 61127, 2, 0, -61127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22204, 61227, 0.05, 0, -61227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(22204, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22204, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Abyssal Flamebringer c.19973
DELETE FROM creature_loot_template WHERE entry=19973;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(19973, 22925, 2, 0, 1, 1, 209, 'Recipe: Major Holy Protection Potion'),
(19973, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(19973, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(19973, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(19973, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(19973, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(19973, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(19973, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(19973, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(19973, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(19973, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(19973, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Vile Fire-Soul c.22298
DELETE FROM creature_loot_template WHERE entry=22298;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22298, 7078, 1, 0, 1, 1, 0, 'Essence of Fire'),
(22298, 22574, 35, 0, 1, 2, 0, 'Mote of Fire'),
(22298, 24508, 80, 1, 1, 1, 0, 'Elemental Fragment'),
(22298, 24511, 20, 1, 1, 1, 0, 'Primordial Essence'),
(22298, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22298, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22298, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22298, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22298, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22298, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22298, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22298, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22298, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22298, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22298, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Phase Wyrm c.24917
UPDATE creature_template SET MinLevel=70, MaxLevel=71, LootId=24917 WHERE entry=24917;
DELETE FROM creature_loot_template WHERE entry=24917;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(24917, 24508, 80, 1, 1, 1, 0, 'Elemental Fragment'),
(24917, 24511, 20, 1, 1, 1, 0, 'Primordial Essence'),
(24917, 22576, 33, 0, 1, 2, 0, 'Mote of Mana'),
(24917, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(24917, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(24917, 34246, -1, 0, 1, 1, 0, 'Smuggled Mana Cell'),
(24917, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(24917, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(24917, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(24917, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24917, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24917, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(24917, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(24917, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(24917, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

-- Hemathion c.18692
DELETE FROM creature_loot_template WHERE entry=18692;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(18692, 29563, 80, 2, 2, 4, 0, 'Dragon\'s Claw'),
(18692, 29564, 20, 2, 2, 4, 0, 'Dragon\'s Fang'),
(18692, 31155, 0, 1, 1, 1, 0, 'Drakescale Breastplate'),
(18692, 31156, 0, 1, 1, 1, 0, 'Drakescale Hauberk'),
(18692, 31157, 0, 1, 1, 1, 0, 'Drakehide Tunic'),
(18692, 31158, 0, 1, 1, 1, 0, 'Drakeweave Raiment'),
(18692, 32569, 100, 0, 2, 3, 0, 'Apexis Shard');

-- ------------------------------------------------
-- Gameobjects
-- ------------------------------------------------
-- Apexis Shard Formation c.185911
DELETE FROM gameobject_loot_template WHERE entry=22114;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22114, 32569, 100, 0, 1, 1, 0, 'Apexis Shard');

-- ------------------------------------------------
-- Pre 2.4 mobs. Not spawned but fix loot data for completion
-- ------------------------------------------------
-- Lightning Wasp c.22182
DELETE FROM creature_loot_template WHERE entry=22182;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(22182, 25435, 80, 1, 1, 1, 0, 'Hardened Carapace'),
(22182, 25437, 20, 1, 1, 1, 0, 'Barbed Leg'),
(22182, 31952, 0.05, 0, 1, 1, 0, 'Khorium Lockbox'),
(22182, 32569, 35, 0, 1, 1, 0, 'Apexis Shard'),
(22182, 32576, 2.7, 0, 1, 1, 0, 'Depleted Crystal Focus'),
(22182, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(22182, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(22182, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(22182, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(22182, 61125, 2, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22182, 61225, 0.05, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(22182, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(22182, 41301, 0.01, 0, -41301, 1, 0, 'Blade\'s Edge Mountains - Depleted Items');

