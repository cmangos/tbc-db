-- Delete two invalid spawns of Eranikus the Chained c.8506 in Deeprun Tram (only spawned by using item 10455)
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id=8506);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id=8506);
DELETE FROM creature WHERE id=8506;

