DELETE FROM `conditions` WHERE `condition_entry`=553;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(553, 7, 182, 1, 0, 0, 0, "Has Skill ID 182, Minimum Skill Value 1");

DELETE FROM `gossip_menu` WHERE `entry`=643 AND `text_id`=1203;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(643, 1203, 0, 553);

