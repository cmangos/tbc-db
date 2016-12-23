-- UDB_283
-- Scarlet Hound - should be only spawned as Scarlet Hunters Pet
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 10979);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 10979);
DELETE FROM creature WHERE id = 10979;

