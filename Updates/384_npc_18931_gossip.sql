-- Amish Wildhammer gossip (Entry: 18931 Guid: 67957)

DELETE FROM conditions WHERE condition_entry=1339;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`) VALUES 
(1339, 9, 10288);

UPDATE `gossip_menu` SET `condition_id`=1339 WHERE `entry`=7939 AND `text_id`=9991; -- Show gossip if quest 10288 is in the quest log
UPDATE `gossip_menu` SET `condition_id`=67 WHERE `entry`=7939 AND `text_id`=9935; -- Show gossip if quest 10140 is in the quest log

