-- Removed all static spawns of NPC 16027 (Living Poison) in Naxxramas
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 16027);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 16027);
DELETE FROM creature WHERE id = 16027;
