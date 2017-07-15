-- q.9740 'The Sun Gate'

-- Sun Gate Event Manager
-- UDB free guids reused
DELETE FROM creature WHERE guid IN (23682);
DELETE FROM creature_addon WHERE guid IN (23682);
DELETE FROM creature_movement WHERE id IN (23682);
DELETE FROM game_event_creature WHERE guid IN (23682);
DELETE FROM game_event_creature_data WHERE guid IN (23682);
DELETE FROM creature_battleground WHERE guid IN (23682);
DELETE FROM creature_linking WHERE guid IN (23682) OR 
master_guid IN (23682);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(23682,17889,530,1,0,0,-2143.43,-10692,64.7658,4.939282,300,0,0,42,0,0,0);

-- visual effects
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (63582,63583,63584,63585);
DELETE FROM creature_movement WHERE id IN (63582,63583,63584,63585);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(63583,1,-2147.35,-10741.1,73.9034, 10000, 1788601,2.1293, 0, 0),
(63584,1,-2128.94,-10726,66.3358, 10000, 1788602,2.1293, 0, 0),
(63585,1,-2107.07,-10703,65.1894, 10000, 1788603,2.46091, 0, 0),
(63582,1,-2098.62,-10688.5,65.2181, 10000, 1788604,2.74017, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1788601 AND 1788604;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1788601,1,31,17889,100,0,0,0,0,0,0,0,0,0,0,0,''),
(1788601,2,15,31411,0,17889,63610,1 | 0x08,0,0,0,0,0,0,0,0,''),
(1788601,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1788602,1,31,17889,100,0,0,0,0,0,0,0,0,0,0,0,''),
(1788602,2,15,31412,0,17889,23682,1 | 0x08,0,0,0,0,0,0,0,0,''),
(1788602,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1788603,1,31,17889,100,0,0,0,0,0,0,0,0,0,0,0,''),
(1788603,2,15,31413,0,17889,63611,1 | 0x08,0,0,0,0,0,0,0,0,''),
(1788603,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1788604,1,31,17889,100,0,0,0,0,0,0,0,0,0,0,0,''),
(1788604,2,15,31414,0,17889,63609,1 | 0x08,0,0,0,0,0,0,0,0,''),
(1788604,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Sunhawk Portal Controlers
DELETE FROM dbscripts_on_go_use WHERE id IN (12164,12166,12168,12173);
INSERT INTO dbscripts_on_go_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12168, 1, 15, 5, 0, 17886, 63582, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12173, 1, 15, 5, 0, 17886, 63585, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12164, 1, 15, 5, 0, 17886, 63584, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12166, 1, 15, 5, 0, 17886, 63583, 7, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM dbscripts_on_creature_death WHERE id IN (17886);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17886, 1, 31, 17886, 80, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, '[DND]Sunhawk Portal Controller - terminate script if alive'),
(17886, 3, 27, 8, 0, 182026, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sun Gate - allow GO interact');

-- synchr. objects with creatures
UPDATE creature SET spawntimesecs = 90 WHERE id = 17886;
UPDATE gameobject SET spawntimesecs = 90 WHERE id = 184850;

-- 184850 -- sun gate objext
-- ERROR:WORLD: unknown spell id 38096 at use action for gameobject (Entry: 184850 GoType: 10)
-- soutce @TrinityCore
-- spell must have a target
DELETE FROM spell_script_target WHERE entry = 38096;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(38096, 1, 17886, 0);
