-- Fixed Quest Item Troll Temper 9523 in Zul'Farrak. Thanks Patman for reporting.
DELETE FROM `creature_loot_template` WHERE `item` = 9523;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10082, 9523, -55, 0, 2, 5, 0, 'Troll Temper'),
(10081, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(10080, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(7797, 9523, -55, 0, 2, 5, 0, 'Troll Temper'),
(7796, 9523, -55, 0, 2, 5, 0, 'Troll Temper'),
(7286, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(7276, 9523, -55, 0, 2, 5, 0, 'Troll Temper'),
(7274, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(7272, 9523, -55, 0, 2, 5, 0, 'Troll Temper'),
(7247, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(7246, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(5650, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(5649, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(5648, 9523, -55, 0, 1, 1, 0, 'Troll Temper'),
(7267, 9523, -55, 0, 2, 5, 0, 'Troll Temper'),
-- (7791, 9523, -55, 0, 1, 1, 0, 'Troll Temper'), -- Theka the Martyr Shapeshift
(8127, 9523, -55, 0, 2, 5, 0, 'Troll Temper');

