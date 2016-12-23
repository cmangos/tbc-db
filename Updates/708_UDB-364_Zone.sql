-- Farshire Mine
-- Duplicates
DELETE FROM creature WHERE guid IN (107437,132750,132756,107424,132777);
DELETE FROM creature_addon WHERE guid IN (107437,132750,132756,107424,132777);
DELETE FROM creature_movement WHERE id IN (107437,132750,132756,107424,132777);
DELETE FROM game_event_creature WHERE guid IN (107437,132750,132756,107424,132777);
DELETE FROM game_event_creature_data WHERE guid IN (107437,132750,132756,107424,132777);
DELETE FROM creature_battleground WHERE guid IN (107437,132750,132756,107424,132777);
DELETE FROM creature_linking WHERE guid IN (107437,132750,132756,107424,132777) OR master_guid IN (107437,132750,132756,107424,132777);

-- Scourged Footman
UPDATE creature SET position_x = 2756.288086, position_y = 5296.682129, position_z = 26.017281, spawndist = 2, MovementType = 1 WHERE guid = 107441;
UPDATE creature SET position_x = 2710.084473, position_y = 5292.253906, position_z = 31.222292, spawndist = 2, MovementType = 1 WHERE guid = 107442;
UPDATE creature SET position_x = 2722.011963, position_y = 5290.579102, position_z = 29.681755, spawndist = 2, MovementType = 1 WHERE guid = 107440;
UPDATE creature SET position_x = 2745.270020, position_y = 5280.981934, position_z = 24.559320, spawndist = 2, MovementType = 1 WHERE guid = 132758;
UPDATE creature SET position_x = 2764.909668, position_y = 5325.626465, position_z = 28.269773, spawndist = 2, MovementType = 1 WHERE guid = 107439;
UPDATE creature SET position_x = 2772.175293, position_y = 5337.548340, position_z = 29.897589, spawndist = 2, MovementType = 1 WHERE guid = 107443;
UPDATE creature SET position_x = 2763.021484, position_y = 5311.980957, position_z = 27.520159, spawndist = 2, MovementType = 1 WHERE guid = 107424;
UPDATE creature SET position_x = 2794.022949, position_y = 5267.649902, position_z = 20.713945, spawndist = 2, MovementType = 1 WHERE guid = 132752;
UPDATE creature SET position_x = 2809.640869, position_y = 5267.473145, position_z = 18.967564, spawndist = 2, MovementType = 1 WHERE guid = 132756;
UPDATE creature SET position_x = 2838.560791, position_y = 5259.112793, position_z = 13.222894, spawndist = 2, MovementType = 1 WHERE guid = 132757;
UPDATE creature SET position_x = 2843.066162, position_y = 5215.123535, position_z = 13.170290, spawndist = 2, MovementType = 1 WHERE guid = 107476;

-- Captain Jacobs
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE id = 26252;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 26252;
DELETE FROM creature_movement_template WHERE entry = 26252;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(26252,1,2863.06,5229.63,10.0378, 0, 0,3.21415, 0, 0),
(26252,2,2826.49,5232.55,14.1175, 0, 0,2.94318, 0, 0);


