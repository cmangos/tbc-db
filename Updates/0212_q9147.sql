-- Add CompleteScript for q.9147 and proper gossip menus for c.16183 and c.16183

UPDATE creature_template_addon SET emote=0 WHERE entry=16183;
UPDATE quest_template SET CompleteScript=9147 WHERE entry=9147;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(9147);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(9147,1,28,0,0,0,0,0,0,0,16183,5,7,'Courier Dawnstrider - Set UNIT_STAND_STATE_STAND',0,0,0,0),
(9147,1,1,64,0,0,0,0,0,0,16183,5,7,'Courier Dawnstrider - STATE_STUN',0,0,0,0),
(9147,6,0,0,0,0,2000001540,0,0,0,16183,5,0,'Courier Dawnstrider - Where... where am I?',0,0,0,0),
(9147,12,1,0,0,0,0,0,0,0,16183,5,7,'Courier Dawnstrider - ONESHOT_NONE',0,0,0,0),
(9147,12,28,7,0,0,0,0,0,0,16183,5,7,'Courier Dawnstrider - Set UNIT_STAND_STATE_DEAD',0,0,0,0),

(9147,13,0,0,0,0,2000001541,0,0,0,0,0,0,'Apothecary Thedra - You''re not going anywhere just yet, handsome.  Not until you regain your strength.',0,0,0,0),
(9147,14,1,16,0,0,0,0,0,0,0,0,4,'Apothecary Thedra - ONESHOT_KNEEL',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001540 AND 2000001541;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001540, 'Where... where am I?', 0, 0, 0, 0, 'Courier Dawnstrider (Entry: 16183)'),
(2000001541, 'You''re not going anywhere just yet, handsome.  Not until you regain your strength.', 0, 0, 0, 0, 'Apothecary Thedra (Entry: 16196)');

-- ----------------------------
-- Courier Dawnstrider (Entry: 16183)
UPDATE creature_template SET GossipMenuId=7155 WHERE entry=16183;

DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16183);
DELETE FROM `gossip_menu` WHERE `entry`=7155;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7155, 8419, 0, 0);

-- ----------------------------
-- Courier Dawnstrider (Entry: 16183)
UPDATE creature_template SET GossipMenuId=7154 WHERE entry=16196;

DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16196);
DELETE FROM `gossip_menu` WHERE `entry`=7154;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7154, 8418, 0, 0);

