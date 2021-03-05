-- q.1920 'Investigate the Blue Recluse'
DELETE FROM dbscripts_on_quest_start WHERE id = 1920;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1920,0,0,0,0,0,0,0,0,2000003223,0,0,0,0,0,0,0,''),
(1920,10,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.056,''),
(1920,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1920,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.7298,'');

UPDATE quest_template SET StartScript = 1920 WHERE entry = 1920;

DELETE FROM dbscript_string WHERE entry = 2000003223;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003223,'Here, $n.  Take a chest of containment coffers and a cantation of manifestation.  You will need them for your mission.',0,0,7,1,NULL);

-- q.1960 'Investigate the Alchemist Shop'
DELETE FROM dbscripts_on_quest_start WHERE id = 1960;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1960,0,0,0,0,0,0,0,0,2000003224,0,0,0,0,0,0,0,''),
(1960,10,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.748,''),
(1960,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1960,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.054,'');

UPDATE quest_template SET StartScript = 1960 WHERE entry = 1960;

DELETE FROM dbscript_string WHERE entry = 2000003224;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003224,'Take a chest of containment coffers and a cantation of manifestation, $n.  You will need them for your mission.',0,0,0,1,NULL);

-- Quest script
DELETE FROM dbscripts_on_go_template_use WHERE id = 122088;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(122088,5000,40,0,0,0,122088,50,7,0,0,0,0,0,0,0,0,'despawn self'); -- 122088,50,7?

-- Spell Targets for portals
-- DELETE FROM spell_script_target WHERE entry IN (9012);
-- INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
-- (9012, 1, 6492);

-- Rift Spawn 6492
DELETE FROM creature_template_addon WHERE entry = 6492; -- handled by acid
-- missing added - exist already in CDB and TDB - same guids used
DELETE FROM creature_addon WHERE guid IN (107727,107728,107729,107730);
DELETE FROM creature_movement WHERE id IN (107727,107728,107729,107730);
DELETE FROM game_event_creature WHERE guid IN (107727,107728,107729,107730);
DELETE FROM game_event_creature_data WHERE guid IN (107727,107728,107729,107730);
DELETE FROM creature_battleground WHERE guid IN (107727,107728,107729,107730);
DELETE FROM creature_linking WHERE guid IN (107727,107728,107729,107730)
 OR master_guid IN (107727,107728,107729,107730);
DELETE FROM creature WHERE guid IN (107727,107728,107729,107730);
-- missing added as their xyz is different in tbc-db
INSERT INTO creature (guid, id, map, spawnmask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(107727,6492,0,1,0,0,1420.67,362.801,-66.0031,0.173832,180,180,5,0,0,0,0,1),
(107728,6492,0,1,0,0,1391.74,374.264,-66.028,0.986717,180,180,5,0,0,0,0,1),
(107729,6492,0,1,0,0,1386.27,358.274,-66.0081,4.72522,180,180,5,0,0,0,0,1),
(107730,6492,0,1,0,0,1400.71,361.956,-66.0357,6.10121,180,180,5,0,0,0,0,1);

UPDATE `creature` SET `spawntimesecsmin` = 30, `spawntimesecsmax` = 30 WHERE `id` = 6492;

-- missing objects added
-- Contation of Manifestation 105175
-- wotlk-db guid differ, reinsert completely
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM gameobject where id = 105175); -- 42898 (under Chest 105174 - wrong spawn Removed) - reused
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject where id = 105175);
DELETE FROM gameobject WHERE id = 105175;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(45021, 105175, 0, 1, -8985.57, 860.344, 30.7109, 3.08918, 0, 0, 0.999657, 0.0262016, 300, 300, 255, 1),
(45033, 105175, 0, 1, -8985.31, 860.86, 30.704, 2.67035, 0, 0, 0.972369, 0.233448, 300, 300, 255, 1),
(42915, 105175, 0, 1, -8984.55, 861.033, 30.6693, 2.72271, 0, 0, 0.972369, 0.233448, 30, 30, 100, 1),
(45034, 105175, 0, 1, 1812.77, 51.5278, -46.3162, -2.05949, 0, 0, -0.857167, 0.515038, 300, 300, 255, 1),
(42898, 105175, 0, 1, 1813.25, 51.0138, -46.3162, -2.46091, 0, 0, -0.942641, 0.333808, 300, 300, 255, 1),
(45020, 105175, 0, 1, 1813.6, 50.2285, -46.3162, 2.51327, 0, 0, 0.951056, 0.309019, 30, 30, 100, 1);

UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30, animprogress = 255 WHERE id = 105175;

-- Chest of Containment Coffers 105174
-- wotlk-db guid differ, reinsert completely
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM gameobject where id = 105174);
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject where id = 105174);
DELETE FROM gameobject WHERE id = 105174;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(42914, 105174, 0, 1, -8987.37, 862.753, 30.6276, -2.56563, 0, 0, -0.968147, 0.250381, 30, 30, 100, 1),
(45036, 105174, 0, 1, -8987.15, 861.843, 30.6623, 5.18363, 0, 0, -0.522498, 0.85264, 300, 300, 255, 1),
(45035, 105174, 0, 1, -8986.73, 862.93, 30.6484, 3.64774, 0, 0, -0.968147, 0.250381, 300, 300, 255, 1),
(42897, 105174, 0, 1, -8986, 863.658, 30.635, 4.752, 0, 0, 0.692964, -0.720972, 30, 30, 0, 1),
(45018, 105174, 0, 1, 1813.73, 52.6475, -46.3165, 2.32129, 0, 0, 0.91706, 0.398748, 30, 30, 100, 1),
(45037, 105174, 0, 1, 1814.28, 52.1381, -46.3165, 2.35619, 0, 0, 0.92388, 0.382683, 300, 300, 255, 1),
(45017, 105174, 0, 1, 1814.54, 51.3096, -46.3164, 2.30383, 0, 0, 0.913544, 0.406739, 30, 30, 100, 1),
(45019, 105174, 0, 1, 1814.59, 53.1667, -46.3167, 2.94961, 0, 0, 0.995396, 0.095844, 30, 30, 100, 1);

UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30, animprogress = 255 WHERE id = 105174;

