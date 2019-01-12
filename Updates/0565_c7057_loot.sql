-- based on https://github.com/cmangos/classic-db/commit/8f284b9ecd7038b8c45b48a4b66d14dda6355935 - 7057

-- Fixed loot table of creature 7057 (Digmaster Shovelphlange)
-- Removed related items from reference_loot_template
-- Source: http://wowwiki.wikia.com/wiki/Digmaster_Shovelphlange?direction=next&oldid=773095
-- https://web.archive.org/web/20050313133329/http://wow.allakhazam.com:80/db/mob.html?wmob=7057
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65280;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(65280, 'NPC LOOT (Rare NPC Loot) - Digmaster Shovelphlange - Special Items');

-- Add Ref
DELETE FROM `reference_loot_template` WHERE `entry` = 65280;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('65280', '9375', '13', '1', '1', '1', '0', 'Expert Goldminer\'s Helmet'),
('65280', '9378', '17', '1', '1', '1', '0', 'Shovelphlange\'s Mining Axe'),
('65280', '9382', '70', '1', '1', '1', '0', 'Tromping Miner\'s Boots');

-- NPC LOOT (Rare NPC Loot) - Digmaster Shovelphlange - Special Items from world loot tables
DELETE FROM reference_loot_template WHERE `item` IN (9375,9378,9382) AND `entry` != 65280;

-- Add to creature
DELETE FROM creature_loot_template WHERE entry='7057' AND item IN (65280,60160,9375,9378,9382);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('7057', '65280', '100', '0', '-65280', '1', '0', 'NPC LOOT (Rare NPC Loot) - Digmaster Shovelphlange - Special Items'),
('7057', '60160', '2', '0', '-60160', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 37-41) - (NPC Levels: 38)');

