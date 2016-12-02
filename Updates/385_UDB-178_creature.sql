-- Silvermoon City
-- Aurosalia
-- morph should be done by event.
UPDATE creature_template_addon SET auras = NULL WHERE entry = 18744;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 18145;  -- female BE should never have sheep model :) ... its done by event!

-- Keyanomir
UPDATE creature SET position_x = 9714.09, position_y = -7313.28, position_z = 24.7653, orientation = 1.14907, Spawndist = 0, MovementType = 0 WHERE id = 18231;

-- Nimrida <Keyanomir's Minion>
UPDATE creature SET position_x = 9714.944336, position_y = -7311.331543, position_z = 24.759550, orientation = 4.650019, Spawndist = 0, MovementType = 0 WHERE id = 18232;

-- Harene Plainwalker <Druid Trainer>
UPDATE creature SET position_x = 9703.846, position_y = -7267.49, position_z = 16.11439, orientation = 3.001966, Spawndist = 0, MovementType = 2 WHERE id = 16655;
UPDATE creature_template_addon SET emote = 0 WHERE entry = 16655;
DELETE FROM creature_movement WHERE id = 57648;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16655;
DELETE FROM creature_movement_template WHERE entry = 16655;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16655,1,9703.846,-7267.49,16.11439,60000,0,3.001966,0,0),(16655,2,9703.63,-7263.83,15.9914,0,0,1.04791,0,0),(16655,3,9706.74,-7261.86,16.5287,30000,1665501,0.637149,0,0),
(16655,4,9703.75,-7263.42,16.0209,0,0,2.65955,0,0),(16655,5,9701.5,-7261.56,15.9065,0,0,2.43414,0,0),(16655,6,9698.97,-7258.35,15.599,0,0,1.98254,0,0),
(16655,7,9698.97,-7258.35,15.599,30000,1665502,1.30395,0,0),(16655,8,9700.7,-7261.93,15.7977,0,0,5.24429,0,0),(16655,9,9703.63,-7266.76,16.0817,0,0,4.99375,0,0),
(16655,10,9701.12,-7272.78,15.8364,0,0,4.3033,0,0),(16655,11,9700.66,-7278.72,15.5704,30000,1665502,4.80516,0,0),(16655,12,9701.32,-7272.86,15.8672,0,0,1.0376,0,0),
(16655,13,9703.846,-7267.49,16.11439,0,0,1.17111,0,0),(16655,14,9703.846,-7267.49,16.11439,180000,0,3.001966,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1665501,1665502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1665501,2,1,133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1665501,27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1665502,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1665502,27,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');

