 -- Pink Elekk -- must be only visible when drunk
DELETE FROM creature_template_addon WHERE entry IN (21250,23507,23527,23528,23529,23530,23531,27958);
INSERT INTO creature_template_addon (entry,auras) VALUES
(21250,36440), 
(23507,36440),
(23527,36440),
(23528,36440),
(23529,36440),
(23530,36440),
(23531,36440);

-- Pink Elekk
UPDATE creature SET position_x = -2973.980469, position_y = 3950.814453, position_z = 2.909095, spawndist = 5, MovementType = 1 WHERE guid = 85568;
UPDATE creature SET position_x = -2939.791260, position_y = 3908.769043, position_z = 2.627984, spawndist = 5, MovementType = 1 WHERE guid = 85567;
UPDATE creature SET position_x = -2961.600098, position_y = 4111.750488, position_z = 6.187728, spawndist = 5, MovementType = 1 WHERE guid = 85569;
UPDATE creature SET position_x = -2666.413574, position_y = 4482.823242, position_z = 36.317860, spawndist = 5, MovementType = 1 WHERE guid = 85571;
UPDATE creature SET position_x = -2726.244873, position_y = 4387.434082, position_z = 21.490282, spawndist = 5, MovementType = 1 WHERE guid = 85570;

-- Shadowmoon Valley
-- Wrathwalker
UPDATE creature SET position_z = 166.286621 WHERE guid = 70639;


