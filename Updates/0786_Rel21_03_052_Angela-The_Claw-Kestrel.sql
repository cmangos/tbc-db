-- https://github.com/mangosone/database/commit/5df2550f25bbadef83ff857b90b6131f732afbae
-- Adds gossip to Angela "The Claw" Kestrel
UPDATE `creature_template` SET `GossipMenuID`=8686 WHERE `entry`=17002;

DELETE FROM `gossip_menu` WHERE `entry`=8686;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (8686, 10934, 0, 0);

