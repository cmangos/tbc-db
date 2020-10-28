-- ========
-- Zul'Aman
-- ========
DELETE FROM `creature_loot_template` WHERE `entry` = 23542;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Amani'shi Axe Thrower 23542 (71)
-- https://web.archive.org/web/20080417130345/http://wow.allakhazam.com:80/db/mob.html?wmob=23542
-- https://web.archive.org/web/20150906064910/http://www.wowhead.com/npc=23542/amanishi-axe-thrower#drops:mode=n10:100-19+1
(23542, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(23542, 33865, 31.315, 0, 1, 1, 0, 'Amani Hex Stick'),
(23542, 21877, 16.705, 0, 2, 3, 0, 'Netherweave Cloth'),
(23542, 27854, 3.551, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23542, 27860, 1.455, 0, 1, 1, 0, 'Purified Draenic Water'),
(23542, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23542, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23542, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23542, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23542, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23542, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(23542, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23542, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23542, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23542, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Akil'zon 23574 - boss_akilzon
-- https://web.archive.org/web/20080924052301/http://wow.allakhazam.com/db/mob.html?wmob=23574
DELETE FROM `creature_loot_template` WHERE `entry` = 23574 AND `item` = 50501;
-- Nalorakk 23576 - boss_nalorakk
-- https://web.archive.org/web/20080912233011/http://wow.allakhazam.com/db/mob.html?wmob=23576
DELETE FROM `creature_loot_template` WHERE `entry` = 23576 AND `item` = 50501;
-- Halazzi 23577 - boss_halazzi
-- https://web.archive.org/web/20080913004041/http://wow.allakhazam.com/db/mob.html?wmob=23577
DELETE FROM `creature_loot_template` WHERE `entry` = 23577 AND `item` = 50501;
-- Jan'alai 23578 - boss_janalai
-- https://web.archive.org/web/20080927173327/http://wow.allakhazam.com/db/mob.html?wmob=23578
DELETE FROM `creature_loot_template` WHERE `entry` = 23578 AND `item` = 50501;
-- Amani'shi Warbringer 23580 (71)
-- https://web.archive.org/web/20080417130350/http://wow.allakhazam.com/db/mob.html?wmob=23580
-- https://web.archive.org/web/20150906131004/http://www.wowhead.com/npc=23580
DELETE FROM `creature_loot_template` WHERE `entry` = 23580;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23580, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(23580, 33865, 31.865, 0, 1, 1, 0, 'Amani Hex Stick'),
(23580, 21877, 16.575, 0, 2, 3, 0, 'Netherweave Cloth'),
(23580, 27854, 3.119, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23580, 27860, 1.957, 0, 1, 1, 0, 'Purified Draenic Water'),
(23580, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23580, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23580, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23580, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23580, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23580, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(23580, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23580, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23580, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23580, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Medicine Man 23581 (71)
-- https://web.archive.org/web/20080417130355/http://wow.allakhazam.com/db/mob.html?wmob=23581
-- https://web.archive.org/web/20150821042428if_/http://www.wowhead.com/npc=23581#drops:mode=n10:50-19+1
DELETE FROM `creature_loot_template` WHERE `entry` = 23581;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23581, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(23581, 33865, 32.02, 0, 1, 1, 0, 'Amani Hex Stick'),
(23581, 21877, 17.323, 0, 2, 3, 0, 'Netherweave Cloth'),
(23581, 27854, 3.189, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23581, 27860, 1.876, 0, 1, 1, 0, 'Purified Draenic Water'),
(23581, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23581, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23581, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23581, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23581, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23581, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(23581, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23581, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23581, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23581, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Tribesman 23582 (71)
-- https://web.archive.org/web/20080417130400/http://wow.allakhazam.com/db/mob.html?wmob=23582
-- https://web.archive.org/web/20150906130304if_/http://www.wowhead.com/npc=23582
DELETE FROM `creature_loot_template` WHERE `entry` = 23582;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23582, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(23582, 33865, 32.589, 0, 1, 1, 0, 'Amani Hex Stick'),
(23582, 21877, 15.948, 0, 2, 3, 0, 'Netherweave Cloth'),
(23582, 27854, 3.313, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23582, 27860, 1.618, 0, 1, 1, 0, 'Purified Draenic Water'),
(23582, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23582, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23582, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23582, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23582, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23582, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(23582, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23582, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23582, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23582, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani Bear 23584 (70)
-- https://web.archive.org/web/20080417130405/http://wow.allakhazam.com/db/mob.html?wmob=23584
-- https://web.archive.org/web/20150906070256if_/http://www.wowhead.com/npc=23584
DELETE FROM `creature_loot_template` WHERE `entry` = 23584;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23584, 25418, 71.559, 0, 2, 4, 0, 'Razor Sharp Fang'),
(23584, 25421, 16.951, 0, 2, 4, 0, 'Gnarled Claw'),
(23584, 27854, 4.323, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23584, 27860, 2.503, 0, 1, 1, 0, 'Purified Draenic Water'),
(23584, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23584, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23584, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23584, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23584, 61124, 5, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23584, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23584, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
-- (23584, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23584, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23584, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Scout 23586 (70)
-- https://web.archive.org/web/20080417130410/http://wow.allakhazam.com/db/mob.html?wmob=23586
-- https://web.archive.org/web/20150821062112if_/http://www.wowhead.com/npc=23586
DELETE FROM `creature_loot_template` WHERE `entry` = 23586;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23586, 21877, 24.682, 0, 2, 3, 0, 'Netherweave Cloth'),
(23586, 27854, 6.352, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23586, 27860, 1.906, 0, 1, 1, 0, 'Purified Draenic Water'),
(23586, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23586, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23586, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23586, 61001, 2, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23586, 61124, 2, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23586, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23586, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23586, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23586, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23586, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Flame Caster 23596 (71)
-- https://web.archive.org/web/20080417130415/http://wow.allakhazam.com/db/mob.html?wmob=23596
-- https://web.archive.org/web/20150821042436if_/http://www.wowhead.com/npc=23596
DELETE FROM `creature_loot_template` WHERE `entry` = 23596;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23596, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(23596, 33865, 32.053, 0, 1, 1, 0, 'Amani Hex Stick'),
(23596, 21877, 16.44, 0, 2, 3, 0, 'Netherweave Cloth'),
(23596, 27854, 3.551, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23596, 27860, 1.946, 0, 1, 1, 0, 'Purified Draenic Water'),
(23596, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23596, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23596, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23596, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23596, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23596, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(23596, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23596, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23596, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23596, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Add Formula: Enchant Cloak - Major Resistance to RefLoot 50501
-- https://www.wowhead.com/item=22548/formula-enchant-cloak-major-resistance#comments
DELETE FROM `creature_loot_template` WHERE `item` = 22548; -- 16409,16415,18313,18322,18323,20901,21124,21519,22323,22939,23169,23596,24684 all have 50501
DELETE FROM `reference_loot_template` WHERE `entry` = 50501 AND `item` = 22548;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(50501, 22548, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Vitality');
-- Amani'shi Guardian 23597 (71)
-- https://web.archive.org/web/20080417130420/http://wow.allakhazam.com/db/mob.html?wmob=23597
-- https://web.archive.org/web/20150906130309if_/http://www.wowhead.com/npc=23597
DELETE FROM `creature_loot_template` WHERE `entry` = 23597;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23597, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(23597, 33865, 32.486, 0, 1, 1, 0, 'Amani Hex Stick'),
(23597, 21877, 16.15, 0, 2, 3, 0, 'Netherweave Cloth'),
(23597, 27854, 3.945, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23597, 27860, 1.562, 0, 1, 1, 0, 'Purified Draenic Water'),
(23597, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23597, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23597, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23597, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23597, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(23597, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(23597, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23597, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23597, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23597, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Trainer 23774 (70)
-- https://web.archive.org/web/20080417130425/http://wow.allakhazam.com/db/mob.html?wmob=23774
-- https://web.archive.org/web/20150907010715if_/http://www.wowhead.com/npc=23774
DELETE FROM `creature_loot_template` WHERE `entry` = 23774;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23774, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(23774, 33865, 31.741, 0, 1, 1, 0, 'Amani Hex Stick'),
(23774, 21877, 17.874, 0, 2, 3, 0, 'Netherweave Cloth'),
(23774, 27854, 2.928, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23774, 27860, 1.541, 0, 1, 1, 0, 'Purified Draenic Water'),
(23774, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23774, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23774, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23774, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23774, 61124, 5, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23774, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23774, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(23774, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23774, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23774, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani Dragonhawk 23834 (70)
-- https://web.archive.org/web/20080417093845/http://wow.allakhazam.com/db/mob.html?wmob=23834
-- https://web.archive.org/web/20151026030700if_/http://www.wowhead.com/npc=23834
DELETE FROM `creature_loot_template` WHERE `entry` = 23834;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23834, 25426, 74.074, 0, 3, 4, 0, 'Brilliant Feather'),
(23834, 25428, 17.526, 0, 1, 2, 0, 'Savage Talon'),
(23834, 27854, 3.241, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(23834, 27860, 2.116, 0, 1, 1, 0, 'Purified Draenic Water'),
(23834, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(23834, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(23834, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(23834, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(23834, 61124, 5, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(23834, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(23834, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
-- (23834, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(23834, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(23834, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Zul'jin 23863 - boss_zuljin
-- https://web.archive.org/web/20080405061126/http://wow.allakhazam.com/db/mob.html?wmob=23863
DELETE FROM `creature_loot_template` WHERE `entry` = 23863 AND `item` = 50501;
-- Amani Lynx 24043 (70)
-- https://web.archive.org/web/20080416235623/http://wow.allakhazam.com/db/mob.html?wmob=24043
-- https://web.archive.org/web/20151004130149if_/http://www.wowhead.com/npc=24043
DELETE FROM `creature_loot_template` WHERE `entry` = 24043;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24043, 25418, 71.83, 0, 2, 4, 0, 'Razor Sharp Fang'),
(24043, 25421, 16.929, 0, 2, 4, 0, 'Gnarled Claw'),
(24043, 27854, 3.975, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24043, 27860, 2.262, 0, 1, 1, 0, 'Purified Draenic Water'),
(24043, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24043, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24043, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24043, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24043, 61124, 5, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(24043, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(24043, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
-- (24043, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24043, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24043, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani Crocolisk 24047 (70)
-- https://web.archive.org/web/20080417130435/http://wow.allakhazam.com/db/mob.html?wmob=24047
-- https://web.archive.org/web/20150914210137if_/http://www.wowhead.com/npc=24047
DELETE FROM `creature_loot_template` WHERE `entry` = 24047;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24047, 30466, 72.959, 0, 1, 1, 0, 'Crocolisk Tooth'),
(24047, 30467, 14.796, 0, 1, 1, 0, 'Crocolisk Tail'),
(24047, 27854, 4.082, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24047, 27860, 1.531, 0, 1, 1, 0, 'Purified Draenic Water'),
(24047, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24047, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24047, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24047, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24047, 61124, 5, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(24047, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(24047, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
-- (24047, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24047, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24047, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Beast Tamer 24059 (71)
-- https://web.archive.org/web/20080417130440/http://wow.allakhazam.com/db/mob.html?wmob=24059
-- https://web.archive.org/web/20150906183935if_/http://www.wowhead.com/npc=24059
DELETE FROM `creature_loot_template` WHERE `entry` = 24059;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24059, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(24059, 33865, 32.867, 0, 1, 1, 0, 'Amani Hex Stick'),
(24059, 21877, 15.622, 0, 2, 3, 0, 'Netherweave Cloth'),
(24059, 27854, 3.527, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24059, 27860, 1.12, 0, 1, 1, 0, 'Purified Draenic Water'),
(24059, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24059, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24059, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24059, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24059, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(24059, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(24059, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(24059, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24059, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24059, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani Lynx Cub 24064 (70)
-- https://web.archive.org/web/20080416235629/http://wow.allakhazam.com/db/mob.html?wmob=24064
-- https://web.archive.org/web/20150906183939if_/http://www.wowhead.com/npc=24064
DELETE FROM `creature_loot_template` WHERE `entry` = 24064;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24064, 25418, 72.102, 0, 2, 4, 0, 'Razor Sharp Fang'),
(24064, 25421, 16.846, 0, 2, 4, 0, 'Gnarled Claw'),
(24064, 27854, 4.178, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24064, 27860, 1.509, 0, 1, 1, 0, 'Purified Draenic Water'),
(24064, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24064, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24064, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24064, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24064, 61124, 5, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(24064, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(24064, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
-- (24064, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24064, 50501, 0.05, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24064, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Handler 24065 (71)
-- https://web.archive.org/web/20080417130451/http://wow.allakhazam.com/db/mob.html?wmob=24065
-- https://web.archive.org/web/20150907112503if_/http://www.wowhead.com/npc=24065
DELETE FROM `creature_loot_template` WHERE `entry` = 24065;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24065, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(24065, 33865, 31.4, 0, 1, 1, 0, 'Amani Hex Stick'),
(24065, 21877, 15.921, 0, 2, 3, 0, 'Netherweave Cloth'),
(24065, 27854, 4.472, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24065, 27860, 1.474, 0, 1, 1, 0, 'Purified Draenic Water'),
(24065, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24065, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24065, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24065, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24065, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(24065, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(24065, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(24065, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24065, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24065, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Tamed Amani Crocolisk 24138 (70)
-- https://web.archive.org/web/20080417183310/http://wow.allakhazam.com/db/mob.html?wmob=24138
-- Amani'shi Wind Walker 24179 (71)
-- https://web.archive.org/web/20080417130501/http://wow.allakhazam.com/db/mob.html?wmob=24179
-- https://web.archive.org/web/20150906183944if_/http://www.wowhead.com/npc=24179
DELETE FROM `creature_loot_template` WHERE `entry` = 24179;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24179, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(24179, 33865, 31.729, 0, 1, 1, 0, 'Amani Hex Stick'),
(24179, 21877, 15.14, 0, 2, 3, 0, 'Netherweave Cloth'),
(24179, 27854, 3.598, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24179, 27860, 1.121, 0, 1, 1, 0, 'Purified Draenic Water'),
(24179, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24179, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24179, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24179, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24179, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(24179, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(24179, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(24179, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24179, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24179, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Protector 24180 (71)
-- https://web.archive.org/web/20080417130506/http://wow.allakhazam.com/db/mob.html?wmob=24180
-- https://web.archive.org/web/20150907010730if_/http://www.wowhead.com/npc=24180
DELETE FROM `creature_loot_template` WHERE `entry` = 24180;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24180, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(24180, 33865, 30.978, 0, 1, 1, 0, 'Amani Hex Stick'),
(24180, 21877, 16.101, 0, 2, 3, 0, 'Netherweave Cloth'),
(24180, 27854, 4.076, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24180, 27860, 2.106, 0, 1, 1, 0, 'Purified Draenic Water'),
(24180, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24180, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24180, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24180, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24180, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(24180, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(24180, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(24180, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24180, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24180, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Hex Lord Malacrass 24239 - boss_malacrass
-- https://web.archive.org/web/20080501213012/http://wow.allakhazam.com/db/mob.html?wmob=24239
DELETE FROM `creature_loot_template` WHERE `entry` = 24239 AND `item` = 50501;
-- Amani'shi Berserker 24374 (70)
-- https://web.archive.org/web/20080417130526/http://wow.allakhazam.com/db/mob.html?wmob=24374
-- https://web.archive.org/web/20150907010740if_/http://www.wowhead.com/npc=24374
DELETE FROM `creature_loot_template` WHERE `entry` = 24374;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24374, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(24374, 33865, 36.364, 0, 1, 1, 0, 'Amani Hex Stick'),
(24374, 21877, 16.634, 0, 2, 3, 0, 'Netherweave Cloth'),
(24374, 27854, 5.222, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24374, 27860, 2.321, 0, 1, 1, 0, 'Purified Draenic Water'),
(24374, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24374, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24374, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24374, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24374, 61124, 5, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(24374, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(24374, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(24374, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24374, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24374, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani Elder Lynx 24530 (70)
-- https://web.archive.org/web/20080417130536/http://wow.allakhazam.com/db/mob.html?wmob=24530
-- https://web.archive.org/web/20150930230620if_/http://www.wowhead.com/npc=24530
DELETE FROM `creature_loot_template` WHERE `entry` = 24530;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24530, 25418, 71.22, 0, 2, 4, 0, 'Razor Sharp Fang'),
(24530, 25421, 19.496, 0, 2, 4, 0, 'Gnarled Claw'),
(24530, 27854, 4.642, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24530, 27860, 1.592, 0, 1, 1, 0, 'Purified Draenic Water'),
(24530, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24530, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24530, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24530, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24530, 61124, 5, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(24530, 61224, 0.1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(24530, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
-- (24530, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24530, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24530, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');
-- Amani'shi Tempest 24549 (71)
-- https://web.archive.org/web/20080417130541/http://wow.allakhazam.com/db/mob.html?wmob=24549
-- https://web.archive.org/web/20150906183955if_/http://www.wowhead.com/npc=24549
DELETE FROM `creature_loot_template` WHERE `entry` = 24549;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24549, 33106, -30, 0, 1, 2, 0, 'Forest Troll Tusk'),
(24549, 33865, 32.523, 0, 1, 1, 0, 'Amani Hex Stick'),
(24549, 21877, 16.636, 0, 2, 3, 0, 'Netherweave Cloth'),
(24549, 27854, 3.925, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(24549, 27860, 2.617, 0, 1, 1, 0, 'Purified Draenic Water'),
(24549, 31952, 0.5, 0, 1, 1, 0, 'Khorium Lockbox'),
(24549, 50604, 0.5, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24549, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24549, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24549, 61126, 5, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(24549, 61226, 0.1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(24549, 60345, 0.01, 1, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(24549, 49001, 0.1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(24549, 50501, 0.2, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24549, 50500, 0.1, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)');

-- NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY
-- 0.1% dropchance for epic item seems high for these npcs
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.0005, `groupid` = 0 WHERE `item` = 60345 AND `entry` IN (
23285, -- Nethermine Burster - https://web.archive.org/web/20071029043600/http://wow.allakhazam.com/db/mob.html?wmob=23285
23290, -- Draenor Blood Terror - https://web.archive.org/web/20071102125412/http://wow.allakhazam.com/db/mob.html?wmob=23290
23324, -- Crazed Murkblood Miner - https://web.archive.org/web/20071102123230/http://wow.allakhazam.com/db/mob.html?wmob=23324
23386 -- Gan'arg Analyzer - https://web.archive.org/web/20071028013251/http://wow.allakhazam.com/db/mob.html?wmob=23386
);

-- Reimpleent Lootable for Amani Treasure Box 186744
-- https://www.wowhead.com/object=186744/amani-treasure-box
DELETE FROM `gameobject_loot_template` WHERE `entry` = 22906;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22906, 22832, 20, 0, 1, 4, 0, 'Super Mana Potion'),
(22906, 33865, 10, 0, 1, 1, 0, 'Amani Hex Stick'),

(22906, 33930, 0, 1, 1, 1, 0, 'Amani Charm of the Bloodletter'),
(22906, 33931, 0, 1, 1, 1, 0, 'Amani Charm of Mighty Mojo'),
(22906, 33932, 0, 1, 1, 1, 0, 'Amani Charm of the Witch Doctor'),
(22906, 33933, 0, 1, 1, 1, 0, 'Amani Charm of the Raging Defender'),

-- SELECT * FROM `item_template` WHERE `quality` = 2 AND itemlevel >= 120 and bonding = 2 ORDER BY entry;
(22906, 24685, 0, 2, 1, 1, 0, 'Elementalist Belt'),
(22906, 24686, 0, 2, 1, 1, 0, 'Elementalist Boots'),
(22906, 24687, 0, 2, 1, 1, 0, 'Elementalist Tunic'),
(22906, 24688, 0, 2, 1, 1, 0, 'Elementalist Gloves'),
(22906, 24689, 0, 2, 1, 1, 0, 'Elementalist Skullcap'),
(22906, 24690, 0, 2, 1, 1, 0, 'Elementalist Leggings'),
(22906, 24691, 0, 2, 1, 1, 0, 'Elementalist Mantle'),
(22906, 24692, 0, 2, 1, 1, 0, 'Elementalist Bracelets'),
(22906, 24798, 0, 2, 1, 1, 0, 'Dragonhawk Belt'),
(22906, 24799, 0, 2, 1, 1, 0, 'Dragonhawk Boots'),
(22906, 24800, 0, 2, 1, 1, 0, 'Dragonhawk Tunic'),
(22906, 24801, 0, 2, 1, 1, 0, 'Dragonhawk Gloves'),
(22906, 24802, 0, 2, 1, 1, 0, 'Dragonhawk Hat'),
(22906, 24803, 0, 2, 1, 1, 0, 'Dragonhawk Pants'),
(22906, 24804, 0, 2, 1, 1, 0, 'Dragonhawk Shoulderguards'),
(22906, 24805, 0, 2, 1, 1, 0, 'Dragonhawk Bands'),
(22906, 24910, 0, 2, 1, 1, 0, 'Netherstorm Belt'),
(22906, 24911, 0, 2, 1, 1, 0, 'Netherstorm Greaves'),
(22906, 24912, 0, 2, 1, 1, 0, 'Netherstorm Chestpiece'),
(22906, 24913, 0, 2, 1, 1, 0, 'Netherstorm Gauntlets'),
(22906, 24914, 0, 2, 1, 1, 0, 'Netherstorm Helm'),
(22906, 24915, 0, 2, 1, 1, 0, 'Netherstorm Legguards'),
(22906, 24916, 0, 2, 1, 1, 0, 'Netherstorm Shoulderguards'),
(22906, 24917, 0, 2, 1, 1, 0, 'Netherstorm Bracer'),
(22906, 25022, 0, 2, 1, 1, 0, 'Warlord\'s Iron-Girdle'),
(22906, 25023, 0, 2, 1, 1, 0, 'Warlord\'s Sabatons'),
(22906, 25024, 0, 2, 1, 1, 0, 'Warlord\'s Iron-Breastplate'),
(22906, 25025, 0, 2, 1, 1, 0, 'Warlord\'s Iron-Gauntlets'),
(22906, 25026, 0, 2, 1, 1, 0, 'Warlord\'s Iron-Helm'),
(22906, 25027, 0, 2, 1, 1, 0, 'Warlord\'s Iron-Legplates'),
(22906, 25028, 0, 2, 1, 1, 0, 'Warlord\'s Iron-Epaulets'),
(22906, 25029, 0, 2, 1, 1, 0, 'Warlord\'s Iron-Vambraces'),
(22906, 25043, 0, 2, 1, 1, 0, 'Amber Cape'),
(22906, 25057, 0, 2, 1, 1, 0, 'Amber Band'),
(22906, 25071, 0, 2, 1, 1, 0, 'Tanzanite Pendant'),
(22906, 25085, 0, 2, 1, 1, 0, 'Dragonscale Shield'),
(22906, 25099, 0, 2, 1, 1, 0, 'Draenei Crystal Rod'),
(22906, 25113, 0, 2, 1, 1, 0, 'Phantom Dagger'),
(22906, 25127, 0, 2, 1, 1, 0, 'Knight\'s War Hammer'),
(22906, 25141, 0, 2, 1, 1, 0, 'Halaani Hammer'),
(22906, 25155, 0, 2, 1, 1, 0, 'Iron Skull Sword'),
(22906, 25169, 0, 2, 1, 1, 0, 'Fel Orc Brute Sword'),
(22906, 25183, 0, 2, 1, 1, 0, 'Voodoo Hex-Staff'),
(22906, 25197, 0, 2, 1, 1, 0, 'Razor Scythes'),
(22906, 25211, 0, 2, 1, 1, 0, 'Rockbiter Cutter'),
(22906, 25225, 0, 2, 1, 1, 0, 'Deepforge Broadaxe'),
(22906, 25239, 0, 2, 1, 1, 0, 'Legend\'s Glaive'),
(22906, 25253, 0, 2, 1, 1, 0, 'Windspear Longbow'),
(22906, 25267, 0, 2, 1, 1, 0, 'Rampant Crossbow'),
(22906, 25281, 0, 2, 1, 1, 0, 'Big-Boar Battle Rifle'),
(22906, 25295, 0, 2, 1, 1, 0, 'Flawless Wand'),
(22906, 25309, 0, 2, 1, 1, 0, 'Warpdagger'),
(22906, 25323, 0, 2, 1, 1, 0, 'Ascendant\'s Scepter'),
(22906, 25337, 0, 2, 1, 1, 0, 'Swarming Sting-Staff'),
(22906, 28544, 0, 2, 1, 1, 0, 'Assassin\'s Shuriken'),

-- worldloot rare items `quality` = 3 AND itemlevel >= 112
(22906, 31291, 0.3, 3, 1, 1, 0, 'Crystalforged War Axe'),
(22906, 31292, 0.3, 3, 1, 1, 0, 'Crystal Pulse Shield'),
(22906, 31293, 0.3, 3, 1, 1, 0, 'Girdle of Gale Force'),
(22906, 31294, 0.3, 3, 1, 1, 0, 'Pauldrons of Surging Mana'),
(22906, 31295, 0.3, 3, 1, 1, 0, 'Chestguard of the Dark Stalker'),
(22906, 31297, 0.3, 3, 1, 1, 0, 'Robe of the Crimson Order'),
(22906, 31298, 0.3, 3, 1, 1, 0, 'Legguards of the Shattered Hand'),
(22906, 31299, 0.3, 3, 1, 1, 0, 'The Oathkeeper'),
(22906, 31303, 0.3, 3, 1, 1, 0, 'Valanos\' Longbow'),
(22906, 31304, 0.3, 3, 1, 1, 0, 'The Essence Focuser'),
(22906, 31305, 0.3, 3, 1, 1, 0, 'Ced\'s Carver'),
(22906, 31306, 0.3, 3, 1, 1, 0, 'Leggings of the Sacred Crest'),
(22906, 31308, 0.3, 3, 1, 1, 0, 'The Bringer of Death');

