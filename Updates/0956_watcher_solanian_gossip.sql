-- Missing gossip text
DELETE FROM `npc_text` WHERE `ID`=7791;
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`) VALUES
(7791, 'What are you doing here, $r?', 1);

DELETE FROM `gossip_menu` WHERE `entry`=6569;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(6569, 7791, 0, 278);

UPDATE `gossip_menu` SET `condition_id` = 301 WHERE `entry` = 6569 and `text_id` = 7784;


