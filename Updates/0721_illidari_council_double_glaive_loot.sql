-- Correct Loot for Illidari Council for 2.4.3
-- Gem on 22951 gets subbed for another token in patch 2.4.0
-- it is unclear if one specfic boss should carry the badges or the "last" to die should hold them at this point
DELETE FROM `creature_loot_template` WHERE `entry` IN (22949,22950,22951,22952);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22949, 36130, 100, 1, -36130, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'), -- Gathios the Shatterer
(22950, 36129, 100, 1, -36129, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - Epic Items'), -- High Nethermancer Zerevor
(22950, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(22951, 36130, 100, 1, -36130, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'), -- Lady Malande
(22952, 36130, 100, 1, -36130, 1, 0, 'Black Temple (Boss Loot) - Illidari Council - T6 Token'); -- Veras Darkshadow

-- Add Chance for Double Glaive Loot for Illidan Stormrage
-- https://www.mmo-champion.com/threads/1092709-Is-it-possible-for-BOTH-warglaives-of-azzinoth-to-drop-at-once
DELETE FROM `reference_loot_template` WHERE `entry` = 36133;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 36133;
DELETE FROM `creature_loot_template` WHERE `entry` = 22917 AND `item` IN (32837,32838,36133);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `comments`) VALUES
(22917, 32837, 4, 'Warglaive of Azzinoth'),(22917, 32838, 4, 'Warglaive of Azzinoth');

