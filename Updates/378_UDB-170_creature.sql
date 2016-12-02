-- Silvermoon City
-- Silvermoon Farstrider
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 66687;
DELETE FROM creature_movement WHERE id = 66687;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66687,1,9871.55,-7398.44,13.599,10000,1850701,0.139626,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1850701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1850701,3,15,36802,0,0,0,0x08,36803,0,0,0,0,0,0,0,''),
(1850701,7,15,36803,0,0,0,0x08,36802,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN (36802,36803);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(36803, 1, 18507, 0),
(36802, 1, 18507, 0);


