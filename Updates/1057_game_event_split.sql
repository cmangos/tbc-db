ALTER TABLE db_version CHANGE COLUMN required_s2393_01_mangos_visibility required_s2396_01_mangos_game_event_split bit;

DROP TABLE IF EXISTS `game_event_time`;
CREATE TABLE `game_event_time` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute end date, the event will never start after',
    PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `game_event` ADD COLUMN `schedule_type` INT(11) NOT NULL DEFAULT 0 AFTER `entry`;
UPDATE `game_event` SET `schedule_type`=1;
UPDATE `game_event` SET `schedule_type`= 0 WHERE EventGroup > 0;

INSERT INTO `game_event_time`(`entry`, `start_time`, `end_time`) SELECT `entry`, `start_time`, `end_time` FROM `game_event` WHERE `schedule_type` = 1;

ALTER TABLE `game_event` DROP COLUMN `start_time`;
ALTER TABLE `game_event` DROP COLUMN `end_time`;

-- darkmoon faire
/*
76	Darkmoon Faire (Terokkar Forest) - Building Stage 1
77	Darkmoon Faire (Terokkar Forest) - Building Stage 2
78	Darkmoon Faire (Terokkar Forest) - Darkmoon Faire Open
79	Darkmoon Faire (Mulgore) - Building Stage 1
80	Darkmoon Faire (Mulgore) - Building Stage 2
81	Darkmoon Faire (Mulgore) - Darkmoon Faire Open
82	Darkmoon Faire (Elwynn Forest) - Building Stage 1
83	Darkmoon Faire (Elwynn Forest) - Building Stage 2
84	Darkmoon Faire (Elwynn Forest) - Darkmoon Faire Open
*/
UPDATE `game_event` SET `schedule_type`=5 WHERE `entry`=76;
UPDATE `game_event` SET `schedule_type`=8 WHERE `entry`=77;
UPDATE `game_event` SET `schedule_type`=2 WHERE `entry`=78;

UPDATE `game_event` SET `schedule_type`=6 WHERE `entry`=79;
UPDATE `game_event` SET `schedule_type`=9 WHERE `entry`=80;
UPDATE `game_event` SET `schedule_type`=3 WHERE `entry`=81;

UPDATE `game_event` SET `schedule_type`=7 WHERE `entry`=82;
UPDATE `game_event` SET `schedule_type`=10 WHERE `entry`=83;
UPDATE `game_event` SET `schedule_type`=4 WHERE `entry`=84;
DELETE FROM game_event_time WHERE entry IN(SELECT entry FROM game_event WHERE schedule_type != 1);


