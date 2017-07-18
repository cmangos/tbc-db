-- Defias Thug
-- Script rebuilded using new generic RUN script
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3806 AND 3807; -- not used anymore
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3801 AND 3805;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3801,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - movement chenged to 1:random'),
(3801,20,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Thug - movement chenged to 2:waypoint'),
(3802,1,31,38,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 38'),
(3802,2,1,1,0,0,38,80151,23,0,0,0,0,0,0,0,0,''),
(3802,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3803,1,31,38,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 38'),
(3803,2,1,1,0,0,38,80185,23,0,0,0,0,0,0,0,0,''),
(3803,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3804,1,31,38,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 38'),
(3804,2,1,1,0,0,38,80189,23,0,0,0,0,0,0,0,0,''),
(3804,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3805,1,31,38,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 38'),
(3805,2,1,1,0,0,38,80200,23,0,0,0,0,0,0,0,0,''),
(3805,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- UPDATE
-- RUN ON
UPDATE creature_movement SET script_id = 5 WHERE id = 80251 AND point = 1;
UPDATE creature_movement SET script_id = 5 WHERE id = 80149 AND point = 1;
UPDATE creature_movement SET script_id = 5 WHERE id = 80171 AND point IN (1,3);
UPDATE creature_movement SET script_id = 5 WHERE id = 80181 AND point IN (1,4);
-- RUN OFF
UPDATE creature_movement SET script_id = 6 WHERE id = 80181 AND point IN (3,6);
UPDATE creature_movement SET script_id = 6 WHERE id = 80251 AND point = 10;
UPDATE creature_movement SET script_id = 6 WHERE id = 80149 AND point = 5;
UPDATE creature_movement SET script_id = 6 WHERE id = 80171 AND point IN (2,4);
-- 
UPDATE creature_movement SET script_id = 3801 WHERE id = 80149 AND point = 10;
UPDATE creature_movement SET script_id = 3801 WHERE id = 80251 AND point = 11;
UPDATE creature_movement SET script_id = 3802 WHERE id = 80152 AND point = 1;
UPDATE creature_movement SET script_id = 3803 WHERE id = 80184 AND point = 2;
UPDATE creature_movement SET script_id = 3804 WHERE id = 80188 AND point = 2;
UPDATE creature_movement SET script_id = 3805 WHERE id = 80201 AND point = 1;

