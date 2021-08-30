-- tied to core spell script SunwellTeleport
-- 724 - kalec encounter, 727 - eredar twins, 728 - muru
DELETE FROM spell_target_position WHERE Id IN(46881,46883,46884);
INSERT INTO spell_target_position VALUES
('46881', '580', '1704.41', '929.617', '53.077', '4.70142984390258789'),
('46883', '580', '1816.14', '625.438', '33.404', '1.210319995880126953'),
('46884', '580', '1861.45', '495.125', '82.9059', '0.897737979888916015');

DELETE FROM conditions WHERE condition_entry IN(11152,11153,11154) AND type=31;
DELETE FROM conditions WHERE condition_entry IN(11155,11156) AND type=-3;
DELETE FROM conditions WHERE condition_entry IN(11157,11158) AND type=-1;
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES
(11152,31,724,0),
(11153,31,727,0),
(11154,31,728,0),
(11155,-3,11153,0),
(11156,-3,11154,0),
(11157,-1,11152,11155), -- first teleport available and not second
(11158,-1,11153,11156); -- second teleport available and not third

DELETE FROM gossip_menu_option WHERE menu_id IN(9286) AND id IN(3,4,5);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(9286,3,0,'With Kalecgos freed, can you provide a teleport up to Apex Point?',25538,1,1,0,0,928601,0,0,NULL,0,11157),
(9286,4,0,'Now that Lady Sacrolash and Grand Warlock Alythess have been defeated, can you teleport me to the Witch''s Sanctum.',25539,1,1,0,0,928602,0,0,NULL,0,11158),
(9286,5,0,'We''ve cleared the way to Kil''jaeden! Can you transport me close to the Sunwell?',25540,1,1,0,0,928603,0,0,NULL,0,11154);

DELETE FROM dbscripts_on_gossip WHERE id IN(928601,928602,928603);
INSERT INTO dbscripts_on_gossip(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('928601', '0', '0', '15', '46877', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Moorba - TP to Apex'),
('928602', '0', '0', '15', '46879', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Moorba - TP to Witch'),
('928603', '0', '0', '15', '46880', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Moorba - TP to Plateau');


