-- Correct SkinningLootId for Deathmaw 10077
UPDATE `creature_template` SET `SkinningLootId`='10077' WHERE `Entry`= 10077;
DELETE FROM `skinning_loot_template` WHERE `entry` IN ('10077','10156'); -- nearly same as 10156 which was set befor
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('10077', '8170', '50', '1', '1', '2', '0'),
('10077', '4304', '45', '1', '1', '2', '0'),
('10077', '8171', '3', '1', '1', '1', '0'),
('10077', '8169', '2', '1', '1', '1', '0');

