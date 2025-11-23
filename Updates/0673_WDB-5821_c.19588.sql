-- Maxx A. Million Mk. II 19588
-- I can also run
UPDATE creature SET position_x = 3353.966309, position_y = 3735.008545, position_z = 140.986359 WHERE guid = 5306836;
DELETE FROM dbscript_random_templates WHERE id = 20388;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20388,1,30690,65,'Maxx A. Million Mk. II 19588 - Random Script 1'), -- 65%
(20388,1,30691,35,'Maxx A. Million Mk. II 19588 - Random Script 2'); -- 35%
DELETE FROM dbscripts_on_relay WHERE id IN (30690,30691);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30690,0,20,1,7,0,0,0,0x04,1,0,0,0,0,0,0,0,'GENERIC - SET RandomMovement + RUN (dist 7)'),
(30691,0,20,1,7,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - SET RandomMovement (dist 7)');
