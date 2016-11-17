-- Sunfury Warlock
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (75408,75409,75410,75411,75412);
DELETE FROM creature_movement WHERE id IN (75408,75409,75410,75411,75412);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(75409,1,-3821.185059,388.192596,120.564316,120000,2150301,3.542035,0,0),
(75410,1,-3844.86499,388.54379,120.416885,120000,2150301,5.969026,0,0),
(75411,1,-3841.58496,376.102,120.403328,120000,2150301,0.9948376,0,0),
(75412,1,-3824.62988,374.3699,120.57457,120000,2150301,2.234,0,0),
(75408,1,-3839.98,403.547,120.641,120000,2150301,5.25344,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id = 2150301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2150301,0,15,38722,0,21506,30,1 | 0x08,0,0,0,0,0,0,0,0,'visual - channel'),
(2150301,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');


