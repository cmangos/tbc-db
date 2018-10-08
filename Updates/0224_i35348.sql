-- Enable all Bag of Fishing Treasures (i.34863,35348) - TBC 10000 for Bag of Fishing Treasures 35348
UPDATE `item_loot_template` SET `groupid` = 0, `maxcount` = 1 WHERE `entry` = 35348 AND `item` = 10000;

DELETE FROM `reference_loot_template_names` WHERE `entry` = 10000;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(10000, 'Bag of Fishing Treasures (i.34863,35348) - TBC');

