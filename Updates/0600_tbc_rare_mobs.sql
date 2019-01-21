-- Port TBC Rare Mobs Loot to RefLoot also resolves chances so there is always a unique item to be looted
-- Ranges 65276,65277 & 65282 - 65297 are now officially free to use for classic rare mobs, which dont yet have their unique items ported to a rare npc loot refloot
-- http://wowwiki.wikia.com/wiki/Rare_mobs_by_zone?oldid=1613517

-- Bloodmyst Isle 	Fenissa the Assassin
-- Fenissa die Assassine 22060 - ensure 100% drop
-- https://web.archive.org/web/20071226221121/http://wow.allakhazam.com:80/db/mob.html?wmob=22060
DELETE FROM `creature_loot_template` WHERE `item` = 31264; -- wowhead corruption, due to nearby killed npcs
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (65276,65298);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (65298, 'NPC LOOT (Rare NPC Loot) - Fenissa the Assassin (22060) - Special Items');
DELETE FROM `reference_loot_template` WHERE `entry` IN (65276,65298);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65298, 31256, 0, 1, 1, 1, 0, 'Silvermoon Armor'),
(65298, 31263, 0, 1, 1, 1, 0, 'Silvermoon Tunic'),
(65298, 31264, 0, 1, 1, 1, 0, 'Silvermoon Robes');

DELETE FROM `creature_loot_template` WHERE `item` IN (65276,65298);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22060, 65298, 100, 0, -65298, 1, 0, 'NPC LOOT (Rare NPC Loot) - Fenissa the Assassin (22060) - Special Items');

-- Eversong Woods 	Eldinarcus, Tregla (16855, ok)
-- Eldinarcus 16854 - decrease chance for random green
-- https://web.archive.org/web/20071226220800/http://wow.allakhazam.com:80/db/mob.html?wmob=16854
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `item` = 60106 AND `entry` = 16854; -- NPC LOOT (Green World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)

-- Ghostlands 	Dr. Whitherlimb 22062
-- Dr. Whitherlimb - ensure 100% drop
-- https://web.archive.org/web/20090212101921/http://wow.allakhazam.com:80/db/mob.html?wmob=22062
DELETE FROM `creature_loot_template` WHERE `item` = 31270; -- wowhead corruption, due to nearby killed npcs

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (65277,65299);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (65299, 'NPC LOOT (Rare NPC Loot) - Dr. Whitherlimb (22062) - Special Items');
DELETE FROM `reference_loot_template` WHERE `entry` IN (65277,65299);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65299, 31268, 34, 1, 1, 1, 0, 'Abomination Cleaver'),
(65299, 31269, 25, 1, 1, 1, 0, 'Ghoul Hammer'),
(65299, 31270, 41, 1, 1, 1, 0, 'Banshee Rod');

DELETE FROM `creature_loot_template` WHERE `item` IN (65277,65299);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22062, 65299, 100, 0, -65299, 1, 0, 'NPC LOOT (Rare NPC Loot) - Dr. Whitherlimb (22062) - Special Items');

-- Hellfire Peninsula 	Fulgorge , Mekthorg the Wild , Vorakem Doomspeaker
-- Zangarmarsh Bog Lurker, Coilfang Emissary, Marticar  
-- Terokkar Forest 	Crippler, Doomsayer Jurim, Okrek
-- Nagrand 	Bro'Gaz the Clanless, Goretooth, Voidhunter Yar
-- Blade's Edge Mountains 	Hemathion, Morcrush , Speaker Mar'grom
-- Netherstorm 	Chief Engineer Lorthander, Ever-Core the Punisher, Nuramoc 
-- Shadowmoon Valley 	Ambassador Jerrikar, Collidus the Warp-Watcher , Kraator 

-- Export Rare Loot to RefLoot for Outland Rare Npcs
-- Removed related items from reference_loot_template
DELETE FROM `reference_loot_template_names` WHERE `entry` BETWEEN 65300 AND 65320;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(65300, 'NPC LOOT (Rare NPC Loot) - Fulgorge (18678) - Special Items'),
(65301, 'NPC LOOT (Rare NPC Loot) - Mekthorg the Wild (18677) - Special Items'),
(65302, 'NPC LOOT (Rare NPC Loot) - Vorakem Doomspeaker (18679) - Special Items'),
(65303, 'NPC LOOT (Rare NPC Loot) - Bog Lurker (18682) - Special Items'),
(65304, 'NPC LOOT (Rare NPC Loot) - Coilfang Emissary (18681) - Special Items'),
(65305, 'NPC LOOT (Rare NPC Loot) - Marticar (18680) - Special Items'),
(65306, 'NPC LOOT (Rare NPC Loot) - Crippler (18689) - Special Items'),
(65307, 'NPC LOOT (Rare NPC Loot) - Doomsayer Jurim (18686) - Special Items'),
(65308, 'NPC LOOT (Rare NPC Loot) - Okrek (18685) - Special Items'),
(65309, 'NPC LOOT (Rare NPC Loot) - Bro\'Gaz the Clanless (18684) - Special Items'),
(65310, 'NPC LOOT (Rare NPC Loot) - Goretooth (17144) - Special Items'),
(65311, 'NPC LOOT (Rare NPC Loot) - Voidhunter Yar (18683) - Special Items'),
(65312, 'NPC LOOT (Rare NPC Loot) - Hemathion (18692) - Special Items'),
(65313, 'NPC LOOT (Rare NPC Loot) - Morcrush (18690) - Special Items'),
(65314, 'NPC LOOT (Rare NPC Loot) - Speaker Mar\'grom (18693) - Special Items'),
(65315, 'NPC LOOT (Rare NPC Loot) - Chief Engineer Lorthander (18697) - Special Items'),
(65316, 'NPC LOOT (Rare NPC Loot) - Ever-Core the Punisher (18698) - Special Items'),
(65317, 'NPC LOOT (Rare NPC Loot) - Nuramoc (20932) - Special Items'),
(65318, 'NPC LOOT (Rare NPC Loot) - Ambassador Jerrikar (18695) - Special Items'),
(65319, 'NPC LOOT (Rare NPC Loot) - Collidus the Warp-Watcher (18694) - Special Items'),
(65320, 'NPC LOOT (Rare NPC Loot) - Kraator (18696) - Special Items');

-- Remove Items from other RefLoots and Creature
DELETE FROM `creature_loot_template` WHERE `item` IN (31176,31177,31179,31181,31168,31170,31172,31174,31182,31183,31184,31185,31247,31248,31249,31250,31242,31243,31244,31246,31254,31238,31232,31233,31235,31236,31227,31228,31229,31231,31194,31188,31189,31191,31192,31195,31197,31198,31199,31155,31156,31157,31158,31159,31160,31161,31162,31163,31164,31165,31166,31201,31203,31209,31210,31211,31212,31221,31223,31224,31225,31217,31218,31219,31220,31213,31214,31215,31216);
DELETE FROM `reference_loot_template` WHERE `item` IN (31176,31177,31179,31181,31168,31170,31172,31174,31182,31183,31184,31185,31247,31248,31249,31250,31242,31243,31244,31246,31254,31238,31232,31233,31235,31236,31227,31228,31229,31231,31194,31188,31189,31191,31192,31195,31197,31198,31199,31155,31156,31157,31158,31159,31160,31161,31162,31163,31164,31165,31166,31201,31203,31209,31210,31211,31212,31221,31223,31224,31225,31217,31218,31219,31220,31213,31214,31215,31216);

-- Add RefLoot
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 65300 AND 65320;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('65300', '31176', '0', '1', '1', '1', '0', 'Rockwurm Plate Handguards'),
('65300', '31177', '0', '1', '1', '1', '0', 'Rockwurm Scale Gauntlets'),
('65300', '31179', '0', '1', '1', '1', '0', 'Rockwurm Hide Gloves'),
('65300', '31181', '0', '1', '1', '1', '0', 'Rockwurm Hide Handwraps'),

('65301', '31168', '0', '1', '1', '1', '0', 'Demon-Forged Chestguard'),
('65301', '31170', '0', '1', '1', '1', '0', 'Demon-Forged Hauberk'),
('65301', '31172', '0', '1', '1', '1', '0', 'Demon-Cured Tunic'),
('65301', '31174', '0', '1', '1', '1', '0', 'Demonweave Raiment'),

('65302', '31182', '0', '1', '1', '1', '0', 'Legion Helm'),
('65302', '31183', '0', '1', '1', '1', '0', 'Legion Coif'),
('65302', '31184', '0', '1', '1', '1', '0', 'Legion Headguard'),
('65302', '31185', '0', '1', '1', '1', '0', 'Legion Crown'),

('65303', '31247', '0', '1', '1', '1', '0', 'Bog Pauldrons'),
('65303', '31248', '0', '1', '1', '1', '0', 'Bog Epaulets'),
('65303', '31249', '0', '1', '1', '1', '0', 'Bog Spaulders'),
('65303', '31250', '0', '1', '1', '1', '0', 'Bog Mantle'),

('65304', '31242', '0', '1', '1', '1', '0', 'Nagascale Legplates'),
('65304', '31243', '0', '1', '1', '1', '0', 'Nagascale Legguards'),
('65304', '31244', '0', '1', '1', '1', '0', 'Nagahide Pants'),
('65304', '31246', '0', '1', '1', '1', '0', 'Nagahide Leggings'),	

('65305', '31254', '0', '1', '1', '1', '0', 'Striderhide Cloak'),

('65306', '31238', '0', '1', '1', '1', '0', 'Dragonbone Ring'),

('65307', '31232', '0', '1', '1', '1', '0', 'Grim Sabatons'),
('65307', '31233', '0', '1', '1', '1', '0', 'Grim Greaves'),
('65307', '31235', '0', '1', '1', '1', '0', 'Grim Boots'),
('65307', '31236', '0', '1', '1', '1', '0', 'Grim Slippers'),

('65308', '31227', '0', '1', '1', '1', '0', 'Feathered Girdle'),
('65308', '31228', '0', '1', '1', '1', '0', 'Feathered Belt'),
('65308', '31229', '0', '1', '1', '1', '0', 'Feathered Waistband'),
('65308', '31231', '0', '1', '1', '1', '0', 'Feathered Sash'),

('65309', '31194', '0', '1', '1', '1', '0', 'Gronn-Blessed Warbeads'),	

('65310', '31188', '0', '1', '1', '1', '0', 'Crocolisk Scale Vambraces'),
('65310', '31189', '0', '1', '1', '1', '0', 'Crocolisk Scale Wristguards'),
('65310', '31191', '0', '1', '1', '1', '0', 'Crocolisk Hide Bracers'),
('65310', '31192', '0', '1', '1', '1', '0', 'Crocolisk Hide Bindings'),

('65311', '31195', '0', '1', '1', '1', '0', 'Voidplate Girdle'),
('65311', '31197', '0', '1', '1', '1', '0', 'Voidscale Belt'),
('65311', '31198', '0', '1', '1', '1', '0', 'Voidhide Cord'),
('65311', '31199', '0', '1', '1', '1', '0', 'Voidweave Cilice'),

('65312', '31155', '0', '1', '1', '1', '0', 'Drakescale Breastplate'),
('65312', '31156', '0', '1', '1', '1', '0', 'Drakescale Hauberk'),
('65312', '31157', '0', '1', '1', '1', '0', 'Drakehide Tunic'),
('65312', '31158', '0', '1', '1', '1', '0', 'Drakeweave Raiment'),

('65313', '31159', '0', '1', '1', '1', '0', 'Felstone Pauldrons'),
('65313', '31160', '0', '1', '1', '1', '0', 'Felstone Epaulets'),
('65313', '31161', '0', '1', '1', '1', '0', 'Felstone Spaulders'),
('65313', '31162', '0', '1', '1', '1', '0', 'Felstone Mantle'),

('65314', '31163', '0', '1', '1', '1', '0', 'Nethersteel Handguards'),
('65314', '31164', '0', '1', '1', '1', '0', 'Nethersteel Gauntlets'),
('65314', '31165', '0', '1', '1', '1', '0', 'Nethersteel-Reinforced Gloves'),
('65314', '31166', '0', '1', '1', '1', '0', 'Nethersteel-Lined Handwraps'),

('65315', '31201', '0', '1', '1', '1', '0', 'Illidari Cloak'),

('65316', '31203', '0', '1', '1', '1', '0', 'Arcane Loop'),

('65317', '31209', '0', '1', '1', '1', '0', 'Chimaerascale Legplates'),
('65317', '31210', '0', '1', '1', '1', '0', 'Chimaerascale Legguards'),
('65317', '31211', '0', '1', '1', '1', '0', 'Chimaerahide Pants'),
('65317', '31212', '0', '1', '1', '1', '0', 'Chimaerahide Leggings'),

('65318', '31221', '0', '1', '1', '1', '0', 'Illidari Vambraces'),
('65318', '31223', '0', '1', '1', '1', '0', 'Illidari Wristguards'),
('65318', '31224', '0', '1', '1', '1', '0', 'Illidari Bracers'),
('65318', '31225', '0', '1', '1', '1', '0', 'Illidari Bindings'),

('65319', '31217', '0', '1', '1', '1', '0', 'Crimson Beholder Eye'),
('65319', '31218', '0', '1', '1', '1', '0', 'Fiery Beholder Eye'),
('65319', '31219', '0', '1', '1', '1', '0', 'Emerald Beholder Eye'),
('65319', '31220', '0', '1', '1', '1', '0', 'Amethyst Beholder Eye'),

('65320', '31213', '0', '1', '1', '1', '0', 'Abyssal Plate Sabatons'),
('65320', '31214', '0', '1', '1', '1', '0', 'Abyssal Mail Greaves'),
('65320', '31215', '0', '1', '1', '1', '0', 'Abyssal Leather Treads'),
('65320', '31216', '0', '1', '1', '1', '0', 'Abyssal Cloth Footwraps');

-- Add RefLoot to creature
DELETE FROM creature_loot_template WHERE `mincountOrRef` BETWEEN -65320 AND -65300;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(18678, 65300, 100, 0, -65300, 1, 0, 'NPC LOOT (Rare NPC Loot) - Fulgorge (18678) - Special Items'),
(18677, 65301, 100, 0, -65301, 1, 0, 'NPC LOOT (Rare NPC Loot) - Mekthorg the Wild (18677) - Special Items'),
(18679, 65302, 100, 0, -65302, 1, 0, 'NPC LOOT (Rare NPC Loot) - Vorakem Doomspeaker (18679) - Special Items'),
(18682, 65303, 100, 0, -65303, 1, 0, 'NPC LOOT (Rare NPC Loot) - Bog Lurker (18682) - Special Items'),
(18681, 65304, 100, 0, -65304, 1, 0, 'NPC LOOT (Rare NPC Loot) - Coilfang Emissary (18681) - Special Items'),
(18680, 65305, 100, 0, -65305, 1, 0, 'NPC LOOT (Rare NPC Loot) - Marticar (18680) - Special Items'),
(18689, 65306, 100, 0, -65306, 1, 0, 'NPC LOOT (Rare NPC Loot) - Crippler (18689) - Special Items'),
(18686, 65307, 100, 0, -65307, 1, 0, 'NPC LOOT (Rare NPC Loot) - Doomsayer Jurim (18686) - Special Items'),
(18685, 65308, 100, 0, -65308, 1, 0, 'NPC LOOT (Rare NPC Loot) - Okrek (18685) - Special Items'),
(18684, 65309, 100, 0, -65309, 1, 0, 'NPC LOOT (Rare NPC Loot) - Bro\'Gaz the Clanless (18684) - Special Items'),
(17144, 65310, 100, 0, -65310, 1, 0, 'NPC LOOT (Rare NPC Loot) - Goretooth (17144) - Special Items'),
(18683, 65311, 100, 0, -65311, 1, 0, 'NPC LOOT (Rare NPC Loot) - Voidhunter Yar (18683) - Special Items'),
(18692, 65312, 100, 0, -65312, 1, 0, 'NPC LOOT (Rare NPC Loot) - Hemathion (18692) - Special Items'),
(18690, 65313, 100, 0, -65313, 1, 0, 'NPC LOOT (Rare NPC Loot) - Morcrush (18690) - Special Items'),
(18693, 65314, 100, 0, -65314, 1, 0, 'NPC LOOT (Rare NPC Loot) - Speaker Mar\'grom (18693) - Special Items'),
(18697, 65315, 100, 0, -65315, 1, 0, 'NPC LOOT (Rare NPC Loot) - Chief Engineer Lorthander (18697) - Special Items'),
(18698, 65316, 100, 0, -65316, 1, 0, 'NPC LOOT (Rare NPC Loot) - Ever-Core the Punisher (18698) - Special Items'),
(20932, 65317, 100, 0, -65317, 1, 0, 'NPC LOOT (Rare NPC Loot) - Nuramoc (20932) - Special Items'),
(18695, 65318, 100, 0, -65318, 1, 0, 'NPC LOOT (Rare NPC Loot) - Ambassador Jerrikar (18695) - Special Items'),
(18694, 65319, 100, 0, -65319, 1, 0, 'NPC LOOT (Rare NPC Loot) - Collidus the Warp-Watcher (18694) - Special Items'),
(18696, 65320, 100, 0, -65320, 1, 0, 'NPC LOOT (Rare NPC Loot) - Kraator (18696) - Special Items');

