-- Add missing Items to Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study) 36201
DELETE FROM `reference_loot_template` WHERE `entry` = 36201 AND `item` IN (35202,35219);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36201, 35202, 0, 1, 1, 1, 0, 'Design: Amulet of Flowing Life'),
(36201, 35219, 0, 1, 1, 1, 0, 'Pattern: Sun-Drenched Scale Chestguard');

