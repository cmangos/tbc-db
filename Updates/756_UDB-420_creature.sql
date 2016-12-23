-- The Stair of Destiny
-- Thrallmar Grunt
UPDATE creature_template SET UnitFlags = 32768 WHERE entry = 16580;
-- The Stair of Destiny (Dark portal) - Guards should not attack any player.
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (57891,57890,57542,57543,57492,58137);
DELETE FROM creature_movement WHERE id IN (57891,57890,57542,57543,57492,58137);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- alliance side
(57891,1,-265.926,1032.88,54.4051,5000,1683101,5.34071,0,0), -- Nethergarde Infantry
(57890,1,-267.561,1030.86,54.4068,5000,1683101,5.63741,0,0), -- Nethergarde Infantry
(58137,1,-269.162,1028.45,54.4094,5000,1686401,5.95157,0,0), -- Stormwind Infantry
-- horde side
(57492,1,-229.83,1027.49,54.411,5000,1658004,3.76991,0,0), -- Thrallmar Grunt
(57542,1,-233.293,1030.99,54.4062,5000,1658201,4.2237,0,0), -- Thrallmar Marksman
(57543,1,-230.368,1030.42,54.4091,5000,1658201,3.89208,0,0); -- Thrallmar Marksman
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1658004,1658201,1683101,1686401); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES  
(1658004,0,35,5,15,0,0,0,0,0,0,0,0,0,0,0,'SEND_AI_EVENT'),
(1658004,0,22,714,0,0,0,0,0,0,0,0,0,0,0,0,'faction'),
(1658004,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1658201,0,35,6,15,0,0,0,0,0,0,0,0,0,0,0,'SEND_AI_EVENT'),
(1658201,0,22,714,0,0,0,0,0,0,0,0,0,0,0,0,'faction'),
(1658201,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1683101,0,35,5,15,0,0,0,0,0,0,0,0,0,0,0,'SEND_AI_EVENT'), 
(1683101,0,22,1756,0,0,0,0,0,0,0,0,0,0,0,0,'faction'),
(1683101,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1686401,0,35,6,15,0,0,0,0,0,0,0,0,0,0,0,'SEND_AI_EVENT'), 
(1686401,0,22,1756,0,0,0,0,0,0,0,0,0,0,0,0,'faction'),
(1686401,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');


