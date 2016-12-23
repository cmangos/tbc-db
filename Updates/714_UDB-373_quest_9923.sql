-- q.9923 'HELP!'
-- Corki's Prison
DELETE FROM dbscripts_on_go_template_use WHERE id = 182349;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(182349,1,31,18369,5,0,0,0,0,0,0,0,0,0,0,0,'search for 18369'),
(182349,2,0,0,0,18369,5,3,2000000821,0,0,0,0,0,0,0,''),
(182349,2,25,1,0,18369,5,7,0,0,0,0,0,0,0,0,'RUN ON'),
(182349,3,8,18369,1,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(182349,6,20,2,0,18369,5,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints'),
(182349,69,43,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset');
DELETE FROM db_script_string WHERE entry = 2000000821;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000821, 'Thanks, $r! I\'m sure my dad will reward you greatly! Bye!', 0, 0, 0, 0, NULL);

-- Corki #18369
UPDATE creature SET spawntimesecs = 55 WHERE id = 18369;
UPDATE creature_template SET MovementType = 0 WHERE entry = 18369;
DELETE FROM creature_movement_template WHERE entry = 18369;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18369,1,-2558.01,6274.55,15.7647,0,0,4.29975,0,0),
(18369,2,-2570.65,6263.77,19.1612,0,0,3.13815,0,0),
(18369,3,-2608.27,6289.44,32.8485,3000,1,2.41951,0,0);


