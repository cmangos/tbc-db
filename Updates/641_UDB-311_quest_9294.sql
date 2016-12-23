-- q.9294 'Healing the Lake'
-- part at lake
DELETE FROM dbscripts_on_event WHERE id = 13021; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13021,1,0,0,0,20239,71935,3 | 0x10,2000000633,0,0,0,0,0,0,0,'');
-- ending event
DELETE FROM dbscripts_on_quest_end WHERE id = 9294;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9294,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(9294,1,0,0,0,0,0,0,2000000634,0,0,0,0,0,0,0,''),
(9294,3,0,0,0,20227,84586,7 | 0x10,2000000635,0,0,0,0,0,0,0,''),
(9294,6,1,133,0,20227,84586,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9294,9,1,0,0,20227,84586,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9294,9,13,0,0,181370,20,2,0,0,0,0,0,0,0,0,''),
(9294,10,3,0,0,16516,57365,7 | 0x10,0,0,0,0,-4055.89,-13714.2,73.0501,100,''),
(9294,13,3,0,0,20227,84586,7 | 0x10,0,0,0,0,0,0,0,4.46927,''),
(9294,13,20,0,0,16516,57365,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(9294,14,0,0,0,20227,84586,7 | 0x10,2000000636,0,0,0,0,0,0,0,''),
(9294,15,1,133,0,20227,84586,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9294,19,1,0,0,20227,84586,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9294,19,15,35068,0,16516,57365,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9294,21,0,0,0,20227,84586,7 | 0x10,2000000637,0,0,0,0,0,0,0,''),
(9294,21,3,0,0,16516,57365,7 | 0x10,0,0,0,0,-4050.97,-13711.8,73.7115,1.35348,''),
(9294,23,3,0,0,16516,57365,7 | 0x10,0,0,0,0,-4049.35,-13698.3,72.7258,1.15871,''),
(9294,25,3,0,0,20227,84586,7 | 0x10,0,0,0,0,0,0,0,3.26976,''),
(9294,26,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags added'),
(9294,26,18,0,0,16516,57365,7 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9294 WHERE entry = 9294;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000633 AND 2000000637;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000633, 'As the neutralizing agent mixes into the waters of the lake, the water that was irradiated by the crystal seems to clear.', 0, 2, 0, 0, NULL),
(2000000634, 'Tedon, go ahead and try the neutralizing agent on the mutated creature.', 0, 0, 0, 1, NULL),
(2000000635, 'Looks like it\'s time to let you out of this cage.', 0, 0, 0, 1, NULL),
(2000000636, 'Now, to put the neutralizing agent on it...', 0, 0, 0, 0, NULL),
(2000000637, 'Success!', 0, 0, 0, 71, NULL);

-- Volatile Mutation - missing added
-- UDB free guid used 
DELETE FROM creature WHERE guid = 57365; 
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(57365, 16516, 530, 1, 0, 0, -4059.08, -13711.4, 73.5015, 5.3435, 5, 0, 0, 42, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 57365; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(57365, 1, -4059.08, -13711.4, 73.5015, 5000, 1651601, 5.3435, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1651601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1651601,1,35,5,15,0,0,0,0,0,0,0,0,0,0,0,'SEND_AI_EVENT'),
(1651601,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');


