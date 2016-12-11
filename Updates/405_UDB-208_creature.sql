-- Gnome Engineer
-- should be found only in Dun Morogh airfield.
DELETE FROM creature WHERE guid IN (86178,86175);
DELETE FROM creature_addon WHERE guid IN (86178,86175);
DELETE FROM creature_movement WHERE id IN (86178,86175);
DELETE FROM game_event_creature WHERE guid IN (86178,86175);
DELETE FROM game_event_creature_data WHERE guid IN (86178,86175);
DELETE FROM creature_battleground WHERE guid IN (86178,86175);
DELETE FROM creature_linking WHERE guid IN (86178,86175) OR master_guid IN (86178,86175);

-- Leper Gnome 
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (2414,2420,2426,2422,2427,2425,2412,2416,2421,2428,2438,2441,2455,2458,2467,2468,2461,2469,2460,2451);


