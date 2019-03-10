-- https://github.com/mangosone/database/commit/902a9faaf89ba0878b48b184799903dfaec16253
-- Add Gossip to Far Seer Regulkut 16574 thx @antisocial89
UPDATE `creature_template` SET `GossipMenuID`=7334 WHERE `entry`=16574;

DELETE FROM `gossip_menu` WHERE `entry`=7334;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (7334, 8718, 0, 0);

