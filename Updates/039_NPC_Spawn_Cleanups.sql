-- ======================
-- Elwynn Forest Cleanups
-- ======================
DELETE FROM creature WHERE guid=80601;
DELETE FROM creature_addon WHERE guid=80601;
DELETE FROM creature_movement WHERE id=80601;
DELETE FROM game_event_creature WHERE guid=80601;
DELETE FROM game_event_creature_data WHERE guid=80601;
DELETE FROM creature_battleground WHERE guid=80601;
DELETE FROM creature_linking WHERE guid=80601 OR master_guid=80601;

