-- Blade's Edge - Deadsoul Orb 20845
UPDATE creature_template SET InhabitType = 4 WHERE entry IN (20845,21025);
-- duplicates - remove all static
-- tbc has none
-- DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 20845);
-- DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 20845);
-- DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 20845);
-- DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 20845);
-- DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 20845);
-- DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 20845)
-- OR master_guid IN (SELECT guid FROM creature WHERE id = 20845);
-- DELETE FROM creature WHERE id = 20845;

