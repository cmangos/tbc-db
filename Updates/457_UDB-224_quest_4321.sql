-- q.4321 'Making Sense of It'

-- first: fix start_script
DELETE FROM dbscripts_on_quest_start WHERE id = 4321;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4321,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(4321,2,0,0,0,0,0,0,2000000030,0,0,0,0,0,0,0,''),
(4321,5,1,22,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4321,5,7,4321,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4321,6,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET StartScript = 4321 WHERE entry = 4321;
-- second: missing end_script added 
DELETE FROM dbscripts_on_quest_end WHERE id = 4321;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4321,1,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'J.D. Collie - active'),
(4321,2,9,63180,30,0,0,0,0,0,0,0,-6034.46,-1014.57,-216.735,6.07572,''),
(4321,3,0,0,0,0,0,0,2000000540,0,0,0,0,0,0,0,''),
(4321,3,3,0,0,0,0,0,0,0,0,0,0,0,0,2.36912,''),
(4321,8,0,0,0,0,0,0,2000000541,0,0,0,0,0,0,0,''),
(4321,12,3,0,0,0,0,0,0,0,0,0,0,0,0,0.872665,''),
(4321,12,0,0,0,0,0,0,2000000542,0,0,0,0,0,0,0,''),
(4321,13,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'J.D. Collie - unactive');
UPDATE quest_template SET CompleteScript = 4321 WHERE entry = 4321;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000540 AND 2000000542;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000540, 'Now, let\'s see... If I am correct, then... Hmmm...', 0, 0, 0, 4, NULL),
(2000000541, 'Blue plus red... I predict...', 0, 0, 0, 0, NULL),
(2000000542, '$N, that\'s it! I have finally figured it out!', 0, 0, 0, 0, NULL);

-- missing object added - UDB free guid reused
DELETE FROM gameobject WHERE guid = 63180;
INSERT INTO gameobject VALUES ( 63180, 174683, 1, 1,-6034.46, -1014.57, -216.735, 6.07572, 0, 0, 0.103548, -0.994624, -30, 255, 1);

-- missing equip added
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('116','1906','0','0');
UPDATE creature_template SET EquipmentTemplateId = 116 WHERE entry = 9117;


