-- q.9924 'Corki's Gone Missing Again!'
-- Corki's Prison
DELETE FROM dbscripts_on_go_template_use WHERE id = 182350;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(182350,1,31,20812,5,0,0,0,0,0,0,0,0,0,0,0,'search for 20812'),
(182350,2,0,0,0,20812,5,3,2000000822,0,0,0,0,0,0,0,''),
(182350,2,25,1,0,20812,5,7,0,0,0,0,0,0,0,0,'RUN ON'),
(182350,3,8,20812,1,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(182350,6,20,2,0,20812,5,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints'),
(182350,69,43,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset');
DELETE FROM db_script_string WHERE entry = 2000000822;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000822,'This is the last time I get caught! I promise! Bye!', 0, 0, 0, 0, NULL);
-- Corki #20812
UPDATE creature SET spawntimesecs = 55 WHERE id = 20812;
UPDATE creature_template SET MovementType = 0 WHERE entry = 20812;
DELETE FROM creature_movement_template WHERE entry = 20812;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(20812,1,-985.895,8118.26,-95.3558,0,0,3.46948,0,0),
(20812,2,-998.591,8115.31,-95.9569,0,0,3.22051,0,0),
(20812,3,-1028.44,8108.06,-93.0196,3000,1,3.41686,0,0);

-- missing creatures -- 
-- empty guids reused -- UDB ONLY
DELETE FROM creature WHERE guid IN (60777,60780);
DELETE FROM creature_addon WHERE guid IN (60777,60780);
DELETE FROM creature_movement WHERE id IN (60777,60780);
DELETE FROM game_event_creature WHERE guid IN (60777,60780);
DELETE FROM game_event_creature_data WHERE guid IN (60777,60780);
DELETE FROM creature_battleground WHERE guid IN (60777,60780);
DELETE FROM creature_linking WHERE guid IN (60777,60780) OR master_guid IN (60777,60780);
INSERT INTO creature (guid, id, modelid, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType) VALUES
(60777,17136,0,530,1,-974.859,8137.96,-93.4711,4.29258,300,0,6116,0,0), -- Boulderfist Warrior
(60780,17137,0,530,1,-971.952,8115.74,-95.5137,2.59298,300,0,4892,0,0);  -- Boulderfist Mage


