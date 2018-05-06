-- q.1838 'Brutal Armor' End Script
-- inspired by: https://github.com/TrinityCore/TrinityCore/commit/bae86ff1b4e46aedc914b76d49ab21837cf1c131

DELETE FROM dbscript_string WHERE entry IN (2000006706,2000006707);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000006706', '%s begins to work...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '69', 'Thun''grim Firegaze'),
('2000006707', 'Your armor is ready, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', 'Thun''grim Firegaze');

UPDATE quest_template SET CompleteScript=1838 WHERE entry=1838;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1838);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1838', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Remove Npc Flag Questgiver'),
('1838', '1', '20', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Set Waypoint Movement');

DELETE FROM creature_movement_template WHERE entry=5878;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(5878,0,1,-423.713,-3167.24,212.779,100,0,0),
(5878,0,2,-423.211,-3164.23,212.864,100,0,0),
(5878,0,3,-425.1,-3162.25,212.697,2.92829,39000,587801),
(5878,0,4,-423.211,-3164.23,212.864,100,0,0),
(5878,0,5,-423.713,-3167.24,212.779,100,0,0),
(5878,0,6,-437.62,-3176.26,211.385,100,1000,587802);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (587801,587802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('587801', '1', '0', '0', '0', '0', '0', '0', '0', '2000006706', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Say Line 0'),
('587801', '16', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Stop Emote'),
('587801', '17', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.30012', 'Thun''grim Firegaze - Set orientation'),
('587801', '18', '1', '233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Set Emote State 233'),
('587801', '38', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Stop Emote'),

('587802', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Set Idle Movement'),
('587802', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.820305', 'Thun''grim Firegaze - Set orientation'),
('587802', '1', '0', '0', '0', '0', '0', '0', '0', '2000006707', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Say Line 1'),
('587802', '2', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thun''grim Firegaze - Add Npc Flag Questgiver');


