-- ============================
-- Remove Buzzard From Badlands
-- ============================
DELETE FROM creature WHERE guid=6998;
DELETE FROM creature_addon WHERE guid=6998;
DELETE FROM creature_movement WHERE id=6998;
DELETE FROM game_event_creature WHERE guid=6998;
DELETE FROM game_event_creature_data WHERE guid=6998;
DELETE FROM creature_battleground WHERE guid=6998;
DELETE FROM creature_linking WHERE guid=6998 OR master_guid=6998;

UPDATE creature SET position_x = '-6662.029785', position_y = '-3660.025391', position_z = '255.250671', orientation = '6.218313' WHERE guid = '7607';


-- ==============================
-- Update Dragons To Not Be Elite - Post 2.3 Nerf
-- ==============================
UPDATE creature_template SET rank=0 WHERE entry IN (2726,2757,2759);

