-- Silvermoon City
-- Bithrus <Fireworks Vendor>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57643;
DELETE FROM creature_movement WHERE id = 57643;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16650;
DELETE FROM creature_movement_template WHERE entry = 16650;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16650,1,9738.16,-7161.36,14.3237,2000,1665001,3.6752,0,0),(16650,2,9737.57,-7154.07,14.3247,0,0,1.54053,0,0),(16650,3,9737.57,-7154.07,14.3247,20000,1665001,4.07893,0,0),
(16650,4,9734.74,-7150.2,14.3247,0,0,1.62692,0,0),(16650,5,9735.83,-7146.59,14.3247,0,0,0.746487,0,0),(16650,6,9737.76,-7145.94,14.3247,0,0,6.05185,0,0),
(16650,7,9738.29,-7146.39,14.3247,15000,1665002,5.57747,0,0),(16650,8,9738.11,-7148.21,14.3247,0,0,5.07481,0,0),(16650,9,9739.89,-7150.05,14.3247,0,0,5.78167,0,0),
(16650,10,9744.71,-7152.63,14.3247,15000,1665003,5.51463,0,0),(16650,11,9741.53,-7156.3,14.3247,0,0,4.3224,0,0),(16650,12,9739.92,-7160.32,14.3247,0,0,3.76908,0,0),
(16650,14,9738.16,-7161.36,14.3237,20000,1665004,3.6752,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1665001 AND 1665004; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1665001,2,15,11542,0,0,0,0,11541,11540,11544,0,0,0,0,0,''),
(1665002,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1665002,13,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1665003,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1665003,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1665004,3,15,11542,0,0,0,0,11541,11540,11544,0,0,0,0,0,''),
(1665004,6,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');

