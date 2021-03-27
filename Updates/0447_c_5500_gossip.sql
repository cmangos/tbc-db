-- Add missing Gossip for Tel'Athir <Apprentice Alchemist> 5500
-- Source: wotlk-db
UPDATE `creature_template` SET `GossipMenuId` = 4112 WHERE `entry` = 5500;
DELETE FROM `gossip_menu` WHERE `entry` = 4112;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (4112, 5019);

