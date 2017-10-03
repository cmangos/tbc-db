-- Small Barnacled Clam / 5523 
DELETE FROM `item_loot_template` WHERE `entry`=5523;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(5523, 5498, 5, 1, 1, 1, 0, 'Small Lustrous Pearl'),
(5523, 5503, 100, 0, 1, 1, 0, 'Clam Meat');

-- Big-Mouth Clam / 7973
DELETE FROM `item_loot_template` WHERE `entry`=7973;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(7973, 5498, 1, 1, 1, 1, 0, 'Small Lustrous Pearl'),
(7973, 5500, 2, 1, 1, 1, 0, 'Iridescent Pearl'),
(7973, 7971, 4, 1, 1, 1, 0, 'Black Pearl'),
(7973, 7974, 100, 0, 1, 1, 0, 'Zesty Clam Meat'),
(7973, 13926, 0.5, 1, 1, 1, 0, 'Golden Pearl');

-- Jaggal Clam / 24476
DELETE FROM `item_loot_template` WHERE `entry`=24476;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(24476, 24477, 100, 0, 1, 1, 0, 'Jaggal Clam Meat'),
(24476, 24478, 9, 1, 1, 1, 0, 'Jaggal Pearl'),
(24476, 24479, 1, 1, 1, 1, 0, 'Shadow Pearl');

