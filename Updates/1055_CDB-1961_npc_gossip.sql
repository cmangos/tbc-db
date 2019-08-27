-- Removed usage of table npc_gossip for Darkmoon Faire NPCs
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id`=14849);

SET @COND := 872;
DELETE FROM `conditions` WHERE `condition_entry` IN (@COND, @COND + 1, @COND + 2, @COND + 3, @COND + 4);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(@COND, 12, 78, 0, 'Event ID 78 Active'),
(@COND + 1, 12, 81, 0, 'Event ID 81 Active'),
(@COND + 2, 12, 84, 0, 'Event ID 84 Active'),
(@COND + 3, -2, @COND + 1, @COND, '(Event ID 81 Active OR Event 78 Active)'),
(@COND + 4, -2, @COND + 3, @COND + 2, '(Event ID 81 Active OR Event ID 78 Active OR Event ID 84 Active)');

UPDATE `gossip_menu` SET `condition_id`=@COND + 4 WHERE `entry`=6201;

DELETE FROM `gossip_menu` WHERE `entry`=6201 AND `text_id`=7354;
INSERT INTO `gossip_menu` VALUES
(6201, 7354, 0, 0);


