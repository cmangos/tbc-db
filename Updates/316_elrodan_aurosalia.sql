-- Elrodan & Aurosalia - Silvermoon
-- Small Event between them 2.
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 67003;
DELETE FROM creature_movement WHERE id = 67003;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18743;
DELETE FROM creature_movement_template WHERE entry = 18743;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18743,1,10003.3,-7110.13,47.7883,17000,1874301,2.44346,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1874301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1874301,1,15,32826,0,0,0,0,0,0,0,0,0,0,0,0,'');

