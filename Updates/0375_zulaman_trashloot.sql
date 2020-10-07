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
-- Amani'shi Warbringer 23580
-- Amani'shi Medicine Man 23581
-- Amani'shi Tribesman 23582
-- Amani Bear 23584
-- Amani'shi Scout 23586 - npc_amanishi_scout
-- Amani'shi Reinforcement 23587
-- Amani'shi Flame Caster 23596
-- Amani'shi Guardian 23597
-- Amani Dragonhawk Hatchling 23598
-- Amani Healing Ward 23757 - TotemAI
-- Amani'shi Trainer 23774
-- Dragonhawk Egg 23817 - npc_dragonhawk_egg
-- Amani'shi Hatcher 23818 - npc_amanishi_hatcher
-- Amani Protective Ward 23822 - TotemAI
-- Amani Dragonhawk 23834
-- Zul'jin 23863 - boss_zuljin
-- Amani'shi Savage 23889
-- Fire Bomb (Zul'Aman) 23920 - npc_janalai_firebomb
-- Amani Lynx 24043
-- Amani Crocolisk 24047
-- Amani'shi Beast Tamer 24059
-- Amani Lynx Cub 24064
-- Amani'shi Handler 24065
-- Feather Vortex 24136 - npc_feather_vortex
-- Tamed Amani Crocolisk 24138
-- Spirit of the Lynx 24143 - boss_spirit_lynx
-- Amani Eagle 24159
-- Amani'shi Wind Walker 24179
-- Amani'shi Protector 24180
-- Amani Bear Mount 24217
-- Amani'shi Warrior 24225
-- Hex Lord Malacrass 24239 - boss_malacrass
-- Alyson Antille 24240
-- Thurg 24241
-- Slither 24242
-- Lord Raadan 24243
-- Gazakroth 24244
-- Fenstalker 24245
-- Darkheart 24246
-- Koragg 24247
-- Amani'shi Berserker 24374
-- Amani'shi Hatcher 24504 - npc_amanishi_hatcher
-- Amani Elder Lynx 24530

