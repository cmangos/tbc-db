-- Draenei Youngling
UPDATE creature_template SET UnitFlags=UnitFlags|32784 WHERE entry = 17587;
UPDATE creature_template_addon SET b2_1_flags = 1 WHERE entry = 17587;
-- 1st spawn corrected
UPDATE creature SET spawndist = 30, MovementType = 1 WHERE guid = 63170;
-- other spawns   
-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (37522,60821,60825,60838);
DELETE FROM creature_addon WHERE guid IN (37522,60821,60825,60838);
DELETE FROM creature_movement WHERE id IN (37522,60821,60825,60838);
DELETE FROM game_event_creature WHERE guid IN (37522,60821,60825,60838);
DELETE FROM game_event_creature_data WHERE guid IN (37522,60821,60825,60838);
DELETE FROM creature_battleground WHERE guid IN (37522,60821,60825,60838);
DELETE FROM creature_linking WHERE guid IN (37522,60821,60825,60838)
OR master_guid IN (37522,60821,60825,60838);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(37522,17587,530,1,0,404,-4643.23,-12159.8,34.6878,3.32633,300,30,0,680,0,0,1),
(60821,17587,530,1,0,404,-4409.25,-12797,16.8544,4.66544,300,30,0,680,0,0,1),
(60825,17587,530,1,0,404,-4023.08,-12850,6.73636,5.87496,300,30,0,680,0,0,1),
(60838,17587,530,1,0,404,-3369.35,-12052.8,23.251,4.46517,300,30,0,680,0,0,1);
-- Only one can be spawned at at the same time
DELETE FROM pool_template WHERE entry = 25523;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25523,1,'Draenei Youngling');
DELETE FROM pool_creature_template WHERE pool_entry = 25523;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(17587, 25523, 0, 'Draenei Youngling - 17587');


