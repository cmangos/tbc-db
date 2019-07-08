DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10070 AND 10082;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
(10070, 18, 17767, 0, 'INSTANCE_CONDITION_ID_WINTERCHILL_STARTABLE'), -- Winterchill Event Startable
(10071, 18, 17808, 0, 'INSTANCE_CONDITION_ID_ANETHERON_STARTABLE'), -- Anetheron Event Startable
(10072, 18, 17772, 0, 'INSTANCE_CONDITION_ID_ANETHERON_DONE'), -- Anetheron Done

(10073, 18, 17888, 0, 'INSTANCE_CONDITION_ID_KAZROGAL_STARTABLE'), -- Kazrogal Event Startable
(10074, 18, 17842, 0, 'INSTANCE_CONDITION_ID_AZGALOR_STARTABLE'), -- Azgalor Event Startable
(10075, 18, 17852, 0, 'INSTANCE_CONDITION_ID_AZGALOR_DONE'), -- Azgalor Done

(10076, 18, 17968, 0, 'INSTANCE_CONDITION_ID_ARCHIMONDE_STARTABLE'), -- Archimonde Startable
(10077, 18, 17948, 0, 'INSTANCE_CONDITION_ID_ARCHIMONDE_DONE'), -- Archimonde Done
(10078, 18, 17895, 0, 'INSTANCE_CONDITION_ID_WAVES_INPROGRESS'), -- Waves In Progress

(10079, 24, 24494, 1, 'Player does not already have Tears of the Goddess'),
(10080, -3, 10077, 0, 'Archimonde is not Done'),
(10081, -1, 10080, 10075, 'Archimonde is not Done AND Azgalor is Done'),
(10082, -1, 10081, 10079, 'Archimonde is not Done AND Azgalor is Done AND Player does not already have Tears of the Goddess');

-- ----------------------------
-- Lady Jaina Proudmoore (Entry: 17772)
UPDATE creature_template SET GossipMenuId=7552, NpcFlags=NpcFlags|1 WHERE entry=17772;

DELETE FROM `gossip_menu` WHERE `entry` IN(7552,7556,7689);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7552, 9168, 0, 10070), -- Winterchill Event Startable
(7552, 9380, 0, 10071), -- Anetheron Event Startable
(7552, 9387, 0, 10072), -- Anetheron Done
(7552, 9170, 0, 10078), -- Displayed during Waves

(7556, 9169, 0, 0), -- Displayed after starting Winterchill Event

(7689, 9381, 0, 0); -- Displayed after starting Anetheron Event

DELETE FROM `gossip_menu_option` WHERE `menu_id`=7552;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(7552, 0, 0, 'My companions and I are with you, Lady Proudmoore.', 100, 1, 7556, 0, 0, 0, 0, NULL, 10070), -- Winterchill
(7552, 1, 0, 'We are ready for whatever Archimonde might send our way, Lady Proudmoore.', 101, 1, 7689, 0, 0, 0, 0, NULL, 10071), -- Anetheron
(7552, 2, 0, 'Until we meet again, Lady Proudmoore.', 102, 1, -1, 0, 0, 0, 0, NULL, 10072); -- Retreat

DELETE FROM npc_text WHERE ID IN(9380,9381);
INSERT INTO npc_text(ID,prob0,text0_1) VALUES
(9380,1,'Well done, adventurer. Rage Winterchill''s death has earned us all a small pause in the enemy''s advance. Use this short time wisely. Tend to your wounded and prepare your defenses, as soon Archimonde will send even deadlier forces at us. My meager force of reserve units will reinforce you when battle is joined again.'),
(9381,1,'Then let Archimonde do his worst.');

-- ----------------------------
-- Thrall (Entry: 17852)
UPDATE creature_template SET GossipMenuId=7581, NpcFlags=NpcFlags|1 WHERE entry=17852;

DELETE FROM `gossip_menu` WHERE `entry` IN(7581,7584,7701);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7581, 9224, 0, 0), -- Displayed before Anetheron is killed
(7581, 9225, 0, 10073), -- Kazrogal Event Startable
(7581, 9396, 0, 10074), -- Azgalor Event Startable
(7581, 9398, 0, 10075), -- Azgalor Done
(7581, 9230, 0, 10078), -- Displayed during Waves

(7584, 9228, 0, 0), -- Displayed after starting Kazrogal Event

(7701, 9397, 0, 0); -- Displayed after starting Azgalor Event

DELETE FROM `gossip_menu_option` WHERE `menu_id`=7581;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(7581, 1, 0, 'I am with you, Thrall.', 100, 1, 7584, 0, 0, 0, 0, NULL, 10073), -- Kazrogal
(7581, 0, 0, 'We have nothing to fear.', 101, 1, 7701, 0, 0, 0, 0, NULL, 10074), -- Azgalor
(7581, 2, 0, 'Until we meet again, Thrall.', 102, 1, -1, 0, 0, 0, 0, NULL, 10075); -- Retreat

DELETE FROM npc_text WHERE ID IN(9224,9225,9228,9396,9397);
INSERT INTO npc_text(ID,prob0,text0_0) VALUES
(9224,1,'Stranger, make haste and contact Lady Jaina Proudmoore. Her small Alliance force is bravely attempting to blunt the Burning Legion''s initial assault and delay the approach of Archimonde.'),
(9225,1,'Lady Proudmoore''s forces have bled to delay Archimonde and his Burning Legion, and now this grim task falls to us. Are you ready to stand with me against the onslaught?'),
(9228,1,'Then let the Legion do their worst!'),
(9396,1,'Outstanding! Kaz''rogal''s death cry should strike fear into the core of the Burning Legion. They now know the power your forces possess, so expect the worst the Legion can offer.'),
(9397,1,'May the spirits be with you.');

-- ----------------------------
-- Tyrande Whisperwind (Entry: 17948)
UPDATE creature_template SET GossipMenuId=7706, NpcFlags=NpcFlags|1 WHERE entry=17948;

DELETE FROM `gossip_menu` WHERE `entry` IN(7706,8533);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7706, 9408, 0, 0), -- Displayed before Anetheron is killed
(7706, 9409, 0, 10072), -- Anetheron Done
(7706, 9410, 0, 10076), -- Archimonde Startable
(7706, 9415, 0, 10077), -- Archimonde Done

(8533, 10675, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=7706;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(7706, 0, 0, 'I would be grateful for any aid you can provide, Priestess.', 1, 1, 8533, 0, 770601, 0, 0, NULL, 10082);

DELETE FROM npc_text WHERE ID IN(9409,9415);
INSERT INTO npc_text(ID,prob0,text0_1) VALUES
(9409,1,'Your continued help against the Burning Legion would still be appreciated. Thrall could use your assistance in his encampment to the west of here.'),
(9415,1,'Congratulations! A great victory has been won today.');

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(770601);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(770601,0,15,39118,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Summon Tears of the Goddess',0,0,0,0);

