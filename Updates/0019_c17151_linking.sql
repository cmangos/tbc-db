-- Gan'arg Tinkerer 17151 should aggro as group
DELETE FROM `creature_linking_template` WHERE `entry` = 17151;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(17151, 530, 17151, 3, 20);

