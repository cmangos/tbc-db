INSERT INTO game_event(entry, schedule_type, occurence, length, holiday, linkedTo, EventGroup, description) VALUES
('85', '1', '52560', '20160', '0', '0', '0', 'Spirit of Competition');

INSERT INTO game_event_time VALUES
('85', '2012-08-08 02:00:00', '2025-12-31 00:00:00');

UPDATE creature_template SET MinLevel=45,MaxLevel=45,GossipMenuId=9517 WHERE entry IN(27398,27399);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('105922', '27399', '1', '1', '0', '0', '1962.82', '-4798.26', '56.7658', '0.599487', '25', '25', '0', '0', '0', '0', '0', '0'); -- guesswork based on screenshot
INSERT INTO game_event_creature SELECT guid, 85 FROM creature WHERE id IN(27398,27399);

