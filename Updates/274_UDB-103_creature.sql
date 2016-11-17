-- Shadow Council Warlock
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (74594,74595,74596,74597,74598,74599,74600,74603);
DELETE FROM creature_movement WHERE id IN (74594,74595,74596,74597,74598,74599,74600,74603);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(74594,1,-3401.26,2934.17,170.004,120000,2130204,2.28638,0,0),
(74595,1,-3379.28,2966.64,170.004,120000,2130204,5.70723,0,0),
(74596,1,-3364.12,2957.05,170.004,120000,2130204,2.32129,0,0),
(74597,1,-3376.43,2954.69,169.962,120000,2130204,0.921754,0,0),
(74598,1,-3411.34,2947.12,169.963,120000,2130204,5.28835,0,0),
(74599,1,-3400.16,2946.26,170.564,120000,2130204,3.90954,0,0),
(74600,1,-3413.22,2935.1,170.004,120000,2130204,0.680678,0,0),
(74603,1,-3366.95,2968.94,169.963,120000,2130204,4.17134,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id = 2130204; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2130204,1,15,33346,0,21348,30,1 | 0x08,0,0,0,0,0,0,0,0,''),
(2130204,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');


