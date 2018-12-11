-- Move RefLoot 41000 to 40126 (Range of other Auchindoun: Auchenai Crypts)

DELETE FROM `reference_loot_template` WHERE `entry` IN (41000,40126);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40126, 27797, 0, 1, 1, 1, 0, 'Wastewalker Shoulderpads'),
(40126, 27876, 0, 1, 1, 1, 0, 'Will of the Fallen Exarch'),
(40126, 27877, 0, 1, 1, 1, 0, 'Draenic Wildstaff'),
(40126, 27878, 0, 1, 1, 1, 0, 'Auchenai Death Shroud'),
(40126, 27937, 0, 1, 1, 1, 0, 'Sky Breaker'),
(40126, 28268, 0, 1, 1, 1, 0, 'Natural Mender\'s Wraps');

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (41000,40126);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(40126, 'NPC LOOT - Auchindoun: Auchenai Crypts - Avatar of the Martyred - Heroic Loot');

DELETE FROM `creature_loot_template` WHERE `mincountOrRef` IN (-41000,-40126);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(20303, 40126, 100, 0, -40126, 1, 0, 'NPC LOOT - Auchindoun: Auchenai Crypts - Avatar of the Martyred - Heroic Loot');

