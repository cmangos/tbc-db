-- Mogor 
-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 60873;
DELETE FROM creature_addon WHERE guid = 60873;
DELETE FROM creature_movement WHERE id = 60873;
DELETE FROM game_event_creature WHERE guid = 60873;
DELETE FROM game_event_creature_data WHERE guid = 60873;
DELETE FROM creature_battleground WHERE guid = 60873;
DELETE FROM creature_linking WHERE guid = 60873 OR master_guid = 60873;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(60873,18069,530,1,0,0,-714.823,7931.65,58.8672,4.3693,300,0,0,60720,29330,0,0);
-- Update
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, MovementType = 0 WHERE entry = 18069;


