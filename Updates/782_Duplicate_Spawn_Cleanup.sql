-- =========================================
-- Duplicate Spawn Cleanup - All Spawns Being Deleted Have Been Carefully Verified
-- =========================================
DELETE FROM creature WHERE guid IN (83371,98353,98352,98351);
DELETE FROM creature_addon WHERE guid IN (83371,98353,98352,98351);
DELETE FROM creature_movement WHERE id IN (83371,98353,98352,98351);
DELETE FROM game_event_creature WHERE guid IN (83371,98353,98352,98351);
DELETE FROM game_event_creature_data WHERE guid IN (83371,98353,98352,98351);
DELETE FROM creature_battleground WHERE guid IN (83371,98353,98352,98351);
DELETE FROM creature_linking WHERE guid IN (83371,98353,98352,98351);



