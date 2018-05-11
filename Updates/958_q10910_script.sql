-- ----------------------------
-- Evergrove Druid (Entry: 22423) (Relay scripts started in SD2 npc_evergrove_druid)
UPDATE creature_template SET GossipMenuId=8536, NpcFlags=0, ExtraFlags=0, UnitFlags=33554944, InhabitType=4 WHERE entry=22423;
UPDATE creature SET MovementType=0, spawndist=0, spawntimesecsmin=1, spawntimesecsmax=1 WHERE id=22423;

DELETE FROM `gossip_menu` WHERE `entry`=8536;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8536, 10679, 0, 0);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10074,10075);
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10074,2,15,39158,0,0,0,0,0,0,0,0,4,'Evergrove Druid c.22423 npc_evergrove_druid - Cast Evergrove Druid Transform Druid',0,0,0,0),
(10074,4,36,0,0,0,0,0,0,0,0,0,0,'Evergrove Druid c.22423 npc_evergrove_druid - Face Player',0,0,0,0),
(10074,4,29,3,1,0,0,0,0,0,0,0,4,'Evergrove Druid c.22423 npc_evergrove_druid - Add Gossip/Quest NPCFlags',0,0,0,0),
(10074,5,0,10047,0,0,0,0,0,0,0,0,0,'Evergrove Druid c.22423 npc_evergrove_druid - Random Say',0,0,0,0),

(10075,0,29,3,2,0,0,0,0,0,0,0,4,'Evergrove Druid c.22423 npc_evergrove_druid - Remove Gossip/Quest NPCFlags',0,0,0,0),
(10075,0,0,10048,0,0,0,0,0,0,0,0,0,'Evergrove Druid c.22423 npc_evergrove_druid - Random Say',0,0,0,0),
(10075,6,35,1000,0,0,0,0,0,0,0,0,4,'Evergrove Druid c.22423 npc_evergrove_druid - Send AI Event 1000 to Self',0,0,0,0),
(10075,6,15,38776,0,0,0,0,0,0,0,0,4,'Evergrove Druid c.22423 npc_evergrove_druid - Cast Evergrove Druid Transform Crow',0,0,0,0),
(10075,8,35,1001,0,0,0,0,0,0,0,0,4,'Evergrove Druid c.22423 npc_evergrove_druid - Send AI Event 1001 to Self',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001508 AND 2000001518;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001508, 'Luckily, I was nearby.  How can I help?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001509, 'I''ve been circling nearby in case you needed to speak.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001510, 'You called?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001511, 'How may I assist you, $n?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001512, 'Hello.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),

(2000001513, 'Farewell, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001514, 'The wind calls to me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001515, 'There is something that I must attend to.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001516, 'I must go now.  Good luck.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001517, 'I must leave.  Proceed with caution.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)'),
(2000001518, 'Until we meet again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Evergrove Druid (Entry: 22423)');

DELETE FROM dbscript_random_templates WHERE id BETWEEN 10047 AND 10048;
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10047,0,2000001508,0,'Evergrove Druid - Random Say on Landing'),
(10047,0,2000001509,0,'Evergrove Druid - Random Say on Landing'),
(10047,0,2000001510,0,'Evergrove Druid - Random Say on Landing'),
(10047,0,2000001511,0,'Evergrove Druid - Random Say on Landing'),
(10047,0,2000001512,0,'Evergrove Druid - Random Say on Landing'),

(10048,0,2000001513,0,'Evergrove Druid - Random Say on Flying Off'),
(10048,0,2000001514,0,'Evergrove Druid - Random Say on Flying Off'),
(10048,0,2000001515,0,'Evergrove Druid - Random Say on Flying Off'),
(10048,0,2000001516,0,'Evergrove Druid - Random Say on Flying Off'),
(10048,0,2000001517,0,'Evergrove Druid - Random Say on Flying Off'),
(10048,0,2000001518,0,'Evergrove Druid - Random Say on Flying Off');

