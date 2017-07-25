-- #71 Providing missing data for quest 273 and its quest event.
-- requires core addition
DELETE FROM creature WHERE guid=101460;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
('101460', '1380', '0', '0', '0', '0', '-5760.73', '-3437.71', '305.54', '2.41', '300', '300', '0', '0', '550', '0', '0', '0');

DELETE FROM areatrigger_involvedrelation WHERE id = 171;

