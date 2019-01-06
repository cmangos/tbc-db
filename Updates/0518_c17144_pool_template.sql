-- Add pool_tempalte for Goretooth (17144), which shared one with Prince Raze (10647) 1180
DELETE FROM `pool_template` WHERE `entry` = 1195;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1195, 1, 'Goretooth (17144)');
UPDATE `pool_creature_template` SET `pool_entry` = 1195 WHERE `id` = 17144; -- 1180

