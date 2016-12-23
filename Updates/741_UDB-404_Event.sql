-- Kurz the Revelator - Event
-- has 3 diff visions
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE id = 17443;
DELETE FROM creature_movement WHERE id = 84411;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17443;
DELETE FROM creature_movement_template WHERE entry = 17443;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17443,1,-3398.19,-12412.1,19.1152, 45000, 0,1.62316, 0, 0),
(17443,2,-3398.19,-12412.1,19.1152, 15000, 1744301,1.62316, 0, 0),
(17443,3,-3398.19,-12412.1,19.1152, 300000, 0,1.62316, 0, 0),
(17443,4,-3398.19,-12412.1,19.1152, 300000, 0,1.62316, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1744301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1744301,1,15,30499,0,0,0,0,30603,30536,0,0,0,0,0,0,'');

-- Gameobjects
-- missing added - UDB free guids reused
DELETE FROM gameobject WHERE guid IN (14124,14127);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
-- Circle of Prophecy
( 14124, 181782, 530, 1,-3398.4, -12407.2, 18.8326, 1.570796, 0, 0, 0.7071066, 0.7071069, -8, 255, 1), -- must be spawned only for 8 secs
-- Vision of the Future
( 14127, 181755, 530, 1,-3398.663, -12407.24, 22.16492, 6.003934, 0, 0, -0.1391726, 0.9902682, -10, 255, 1); -- must be spawned only for 10 secs
-- Correct Size
UPDATE gameobject_template SET size = 0.2 WHERE entry = 181755;

-- Update for all npcs involved
-- Vision of Purity
UPDATE creature_template SET FactionAlliance = 1638, FactionHorde = 1638, UnitFlags = 768, InhabitType = 4, MovementType = 0 WHERE Entry = 17532;
DELETE FROM creature_template_addon WHERE entry = 17532;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(17532, 0, 0, 1, 1, 0, 0, NULL);
-- Vision of the Forlorn
UPDATE creature_template SET MinLevel = 63, MaxLevel = 63, FactionAlliance = 1638, FactionHorde = 1638, UnitFlags = 256, InhabitType = 4, MovementType = 0 WHERE Entry = 17499;
DELETE FROM creature_template_addon WHERE entry = 17499;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(17499, 0, 8, 1, 1, 0, 0, NULL);
-- Vision of the Remembered
UPDATE creature_template SET FactionAlliance = 1638, FactionHorde = 1638, UnitFlags = 256, InhabitType = 4, MovementType = 0 WHERE Entry = 17500;
DELETE FROM creature_template_addon WHERE entry = 17500;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(17500, 0, 0, 1, 1, 0, 0, NULL);
-- Vision of the Prophesied Hero
UPDATE creature_template SET InhabitType = 4, MovementType = 0 WHERE Entry = 17452;
DELETE FROM creature_template_addon WHERE entry = 17452;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(17452, 0, 0, 1, 1, 0, 0, NULL);
DELETE FROM dbscripts_on_creature_death WHERE id = 17452;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17452,0,31,17453,20,0,0,0,0,0,0,0,0,0,0,0,''),
(17452,2,18,0,0,17453,20,1,0,0,0,0,0,0,0,0,'despawn Vision of the Kurken');
-- Vision of the Kurken
UPDATE creature_template SET InhabitType = 4, MovementType = 0 WHERE Entry = 17453;
DELETE FROM creature_template_addon WHERE entry = 17453;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(17453, 0, 0, 1, 1, 0, 0, NULL);
DELETE FROM dbscripts_on_creature_death WHERE id = 17453;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17453,0,31,17452,20,0,0,0,0,0,0,0,0,0,0,0,''),
(17453,2,18,0,0,17452,20,1,0,0,0,0,0,0,0,0,'despawn Vision of the Prophesied Hero');

-- spells must have target xyz
DELETE FROM spell_target_position WHERE id IN (30499,30536,30603);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(30499, 530, -3399, -12407, 19, 0),
(30536, 530, -3399, -12407, 19, 0),
(30603, 530, -3399, -12407, 19, 0);

-- All missing events added
-- EVENT 10753
DELETE FROM dbscripts_on_event WHERE id = 10753; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10753,1,0,0,0,0,0,0,2000000825,0,0,0,0,0,0,0,''),
(10753,3,10,17452,60000,0,0,0,0,0,0,0,-3399.528,-12407.29,21.17497,0,'spawn - Vision of the Prophesied Hero'),
(10753,3,10,17453,60000,0,0,0,0,0,0,0,-3397.086,-12407.11,20.93106,3.211406,'spawn - Vision of the Kurken');
-- EVENT 10768
DELETE FROM dbscripts_on_event WHERE id = 10768; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10768,1,0,0,0,0,0,0,2000000826,0,0,0,0,0,0,0,''),
(10768,3,9,14127,10,0,0,0,0,0,0,0,0,0,0,0,'');
-- EVENT 10797
DELETE FROM dbscripts_on_event WHERE id = 10797; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10797,1,10,17532,14000,0,0,0,0,0,0,0,-3397.049,-12407.15,21.96819,3.089233,'spawn - Vision of Purity'),
(10797,1,10,17499,14000,0,0,0,0,0,0,0,-3399.488,-12407.24,21.0983,6.195919,'spawn - Vision of the Forlorn'),
(10797,5,28,0,0,17499,50,7,0,0,0,0,0,0,0,0,'STATE_STAND'),
(10797,7,23,17500,0,17499,50,7,0,0,0,0,0,0,0,0,'morph into 17500'),
(10797,8,15,8990,0,17499,50,7,0,0,0,0,0,0,0,0,''),
(10797,8,1,15,0,17499,50,7,0,0,0,0,0,0,0,0,''),
(10797,8,0,0,0,0,0,0,2000000027,0,0,0,0,0,0,0,'');
-- EVENT 10799
DELETE FROM dbscripts_on_event WHERE id = 10799; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(10799,3,9,14124,8,0,0,0,0,0,0,0,0,0,0,0,'');

-- missing texts added
DELETE FROM db_script_string WHERE entry IN (2000000027,2000000825,2000000826);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000027,'[Furbolg] What could it mean?',0,0,0,0,NULL),
(2000000825,'[Furbolg] Behold the prophecy!',0,0,0,0,NULL),
(2000000826,'[Furbolg] Spirits grant us vision!',0,0,0,0,NULL);


