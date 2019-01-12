-- based on https://github.com/cmangos/classic-db/commit/40f1b36007907e0a6d94c6fe1cfea62d0a62752a - 599 part needs to be ported "again" sadly

-- Fixed loot table of creature 599 (Marisa du'Paige)
-- Removed related items from reference_loot_template
-- Source: http://wowwiki.wikia.com/wiki/Marisa_du%27Paige?direction=next&oldid=1478804
-- https://web.archive.org/web/20041227022927/http://wow.allakhazam.com:80/db/mob.html?wmob=599
-- Rates from UDB
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65279;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(65279, 'NPC LOOT (Rare NPC Loot) - Marisa du''Paige - Special Items');

-- Add Ref
DELETE FROM `reference_loot_template` WHERE `entry` = 65279;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('65279', '3019', '30', '1', '1', '1', '0', 'Noble''s Robe'),
('65279', '4660', '70', '1', '1', '1', '0', 'Walking Boots');

-- Remove 65278	NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items from world loot tables
DELETE FROM reference_loot_template WHERE `item` IN (3019,4660) AND `entry` != 65279;

-- Set NPC LOOT (Green World Drop) - (Item Levels: 17-21) - (NPC Levels: 18) to normal %, should not be 100% (other cases for 60120 are entry 599 and 14272)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 599 AND `item` = 60120;

-- Add to creature
DELETE FROM creature_loot_template WHERE entry='599' AND mincountOrRef='-65279';
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('599', '65279', '100', '0', '-65279', '1', '0', 'NPC LOOT (Rare NPC Loot) - Marisa du''Paige - Special Items');

