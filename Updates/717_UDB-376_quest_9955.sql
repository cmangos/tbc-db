-- q.9955 'Cho'war the Pillager'
-- Corki's Prison
DELETE FROM dbscripts_on_go_template_use WHERE id = 182521;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(182521,1,31,18445,5,0,0,0,0,0,0,0,0,0,0,0,'search for 18445'),
(182521,2,0,0,0,18445,5,3,2000000503,0,0,0,0,0,0,0,''),
(182521,2,25,1,0,18445,5,7,0,0,0,0,0,0,0,0,'RUN ON'),
(182521,3,8,18444,1,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(182521,6,20,2,0,18445,5,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints'),
(182521,69,43,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset');
DELETE FROM db_script_string WHERE entry = 2000000503;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000503,'Thanks, $N! How many times have you saved my life now? Three? That makes us blood in my book!', 0, 0, 0, 0, NULL);
-- Corki #18445
UPDATE creature SET spawntimesecs = 55 WHERE id = 18445;
UPDATE creature_template SET MovementType = 0 WHERE entry = 18445;
DELETE FROM creature_movement_template WHERE entry = 18445;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18445,1,-904.751,8680.48,170.821,0,0,0.632439,0,0),
(18445,2,-886.488,8691.9,172.096,0,0,0.843711,0,0),
(18445,3,-874.211,8707.35,173.425,3000,1,0.706266,0,0);


