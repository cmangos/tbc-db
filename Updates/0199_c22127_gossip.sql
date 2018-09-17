-- ----------------------------
-- Wildlord Antelarion (Entry: 22127) Gossip

UPDATE dbscript_string SET content_default='It''s a good thing I was able to make duplicates of the Felsworn Gas Mask.', emote=1 WHERE entry=2000000312; -- Was 'It's good that I managed to make copies of the Felsworn Gas Mask...'

DELETE FROM `gossip_menu` WHERE `entry` IN(8523,8543);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8523, 10657, 0, 0),
(8543, 10688, 0, 0);

DELETE FROM npc_text WHERE ID=10688;
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_0`) VALUES 
(10688,'Very well, here is your replacement.',1,1);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8523;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(8523, 0, 0, 'The Felsworn Gas Mask was destroyed, do you have another one?', 1, 1, -1, 0, 852301, 0, 0, NULL, 3158),
(8523, 2, 0, 'Wildlord, I seem to have lost my druid signal.', 1, 1, 8543, 0, 852302, 0, 0, NULL, 10069);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(8523,852301,852302);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(852301, 0, 15, 39101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildlord Antelarion - Cast Create Felsword Gas Mask'),
(852301, 0, 0, 0, 0, 0, 22127, 10, 0, 2000000312, 0, 0, 0, 0, 0, 0, 0, 'Wildlord Antelarion - Say'),

(852302, 0, 15, 39203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildlord Antelarion - Cast Create Druid Signal');

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10062 AND 10069;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10062, 9, 10910, 0), -- q.10910 taken
(10063, 8, 10910, 0), -- q.10910 rewarded
(10064, -2, 10062, 10063), -- q.10910 taken OR rewarded
(10065, 8, 10912, 0), -- q.10912 rewarded
(10066, -3, 10065, 0), -- q.10912 NOT rewarded
(10067, 24, 31763, 1), -- Does not have i.31763
(10068, -1, 10064, 10066),
(10069, -1, 10067, 10068); -- q.10910 taken or rewarded, q.10912 not rewarded, does not already have i.31763

