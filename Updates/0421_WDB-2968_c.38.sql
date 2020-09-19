-- Defias Thug 38
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (80151,80152,80184,80185,80188,80189,80200,80201);
DELETE FROM creature_movement WHERE id IN (80151,80152,80184,80185,80188,80189,80200,80201);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 80151
(80151,1,-9031.57,-304.335,74.4903,1.78,2000,11),
(80151,2,-9031.57,-304.335,74.4903,1.78,1000,3),
-- 80152
(80152,1,-9033.82,-301.611,74.7497,5.89,2000,11),
(80152,2,-9033.82,-301.611,74.7497,5.89,1000,3),
-- 80184
(80184,1,-9083.31,-301.332,73.4003,0.05,2000,11),
(80184,2,-9083.31,-301.332,73.4003,0.05,1000,3),
-- 80185
(80185,1,-9081.54,-299.698,73.5213,4.59,2000,11),
(80185,2,-9081.54,-299.698,73.5213,4.59,1000,3),
-- 80188
(80188,1,-9077.56,-334.076,73.5351,1.29,2000,11),
(80188,2,-9077.56,-334.076,73.5351,1.29,1000,3),
-- 80189
(80189,1,-9075.33,-332.12,73.5351,3.66,2000,11),
(80189,2,-9075.33,-332.12,73.5351,3.66,1000,3),
-- 80200
(80200,1,-9077.32,-377.228,73.5343,1.32,2000,11),
(80200,2,-9077.32,-377.228,73.5343,1.32,1000,3),
-- 80201
(80201,1,-9073.82,-376.869,73.5351,2.44,2000,11),
(80201,2,-9073.82,-376.869,73.5351,2.44,1000,3);
-- remove unused scripts
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3801 and 3805;
UPDATE creature_movement SET script_id = 0 WHERE script_id = 3801; -- also shouldnt be there
-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
-- (3801, 0, 0, 20, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Thug - movement chenged to 1:random'),
-- (3801, 20000, 0, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Thug - movement chenged to 2:waypoint');
-- 80149 10 -9008.89 -320.603 75.8279 2.8812 25000 3801
-- 80251 11 -8878.29 -410.994 65.6802 4.63836 25000 3801

