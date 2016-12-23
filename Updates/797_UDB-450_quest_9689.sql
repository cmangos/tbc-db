-- q.9689 'Razormaw'
DELETE FROM dbscripts_on_event WHERE id = 11087;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11087,0,20,0,0,17592,61235,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(11087,1,3,0,0,17592,61235,7 | 0x08 | 0x10,0,0,0,0,-1225.03,-12511.6,142.687,1.32042,''),
(11087,3,3,0,700,17592,61235,7 | 0x10,0,0,0,0,-1210.68,-12459.4,94.262,1.20261,''),
(11087,13,39,0,0,17592,61235,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''), -- fly off
(11087,15,1,15,0,17592,61235,7 | 0x10,0,0,0,0,0,0,0,0,''),
(11087,17,22,14,0x01 | 0x04,17592,61235,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
-- check in case if player wont attack him at all
(11087,300,31,17592,70,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(11087,301,20,2,0,17592,70,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints');

-- missing Razormaw added - UDB free guids reused
DELETE FROM creature WHERE guid = 61235;
DELETE FROM creature_addon WHERE guid = 61235;
DELETE FROM creature_movement WHERE id = 61235;
DELETE FROM game_event_creature WHERE guid = 61235;
DELETE FROM game_event_creature_data WHERE guid = 61235;
DELETE FROM creature_battleground WHERE guid = 61235;
DELETE FROM creature_linking WHERE guid = 61235 OR 
master_guid = 61235;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(61235,17592,530,1,0,0,-1402.15,-12482.7,131.473,4.097534,30,0,0,968,0,0,2); -- spawntime req. for quest
DELETE FROM creature_movement WHERE id = 61235;
UPDATE creature_template SET UnitFlags = 256, ExtraFlags = 4096, MovementType = 2 WHERE entry = 17592;
DELETE FROM creature_template_addon WHERE entry = 17592;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17592, 0, 0, 1, 16, 0, 0, NULL);
DELETE FROM creature_movement_template WHERE entry = 17592;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17592,1,-1402.15,-12482.7,131.473, 1000, 1759201,100, 0, 0),
(17592,2,-1407.612,-12490.54,133.9656, 0, 0,100, 0, 0),
(17592,3,-1408.154,-12491.38,133.9656, 0, 0,100, 0, 0),
(17592,4,-1411.669,-12521.52,135.9378, 0, 0,100, 0, 0),
(17592,5,-1406.033,-12538,143.1322, 0, 0,100, 0, 0),
(17592,6,-1389.085,-12550.85,143.1322, 0, 0,100, 0, 0),
(17592,7,-1362.456,-12562.67,143.1322, 0, 0,100, 0, 0),
(17592,8,-1324.601,-12577.94,143.1322, 0, 0,100, 0, 0),
(17592,9,-1305.422,-12583.72,143.1322, 0, 0,100, 0, 0),
(17592,10,-1273.986,-12597.34,143.1322, 0, 0,100, 0, 0),
(17592,11,-1247.749,-12595.07,143.1322, 0, 0,100, 0, 0),
(17592,12,-1216.118,-12594.67,143.1322, 0, 0,100, 0, 0),
(17592,13,-1187.134,-12596.55,143.1322, 0, 0,100, 0, 0),
(17592,14,-1124.829,-12598.97,127.6044, 0, 0,100, 0, 0),
(17592,15,-1083.818,-12602.27,111.7434, 0, 0,100, 0, 0),
(17592,16,-1045.076,-12583.29,111.7434, 0, 0,100, 0, 0),
(17592,17,-1025.579,-12565.07,111.7434, 0, 0,100, 0, 0),
(17592,18,-1010.371,-12532.21,111.7434, 0, 0,100, 0, 0),
(17592,19,-995.7454,-12501.46,111.7434, 0, 0,100, 0, 0),
(17592,20,-987.1702,-12475.47,111.7434, 0, 0,100, 0, 0),
(17592,21,-996.135,-12434.81,111.7434, 0, 0,100, 0, 0),
(17592,22,-992.6949,-12401.64,111.7434, 0, 0,100, 0, 0),
(17592,23,-1001.499,-12371.35,111.7434, 0, 0,100, 0, 0),
(17592,24,-1022.708,-12359.24,111.7434, 0, 0,100, 0, 0),
(17592,25,-1051.357,-12357.68,111.7434, 0, 0,100, 0, 0),
(17592,26,-1079.031,-12364.69,111.7434, 0, 0,100, 0, 0),
(17592,27,-1099.943,-12367.53,111.7434, 0, 0,100, 0, 0),
(17592,28,-1120.022,-12361.9,111.7434, 0, 0,100, 0, 0),
(17592,29,-1167.294,-12326.38,121.9934, 0, 0,100, 0, 0),
(17592,30,-1213.738,-12328.65,121.8823, 0, 0,100, 0, 0),
(17592,31,-1250.783,-12339.35,124.0212, 0, 0,100, 0, 0),
(17592,32,-1318.868,-12366.53,124.0212, 0, 0,100, 0, 0),
(17592,33,-1350.336,-12385.57,124.0212, 0, 0,100, 0, 0),
(17592,34,-1372.916,-12415.27,124.0212, 0, 0,100, 0, 0),
(17592,35,-1382.966,-12452.36,124.0212, 0, 0,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1759201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1759201,0,39,1,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1759201,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');


