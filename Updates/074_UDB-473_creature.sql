-- Archimindy
-- temp spawn during the quest 'Ending their world'
DELETE FROM creature WHERE guid = 86581;
DELETE FROM creature_addon WHERE guid = 86581;
DELETE FROM creature_movement WHERE id = 86581;
DELETE FROM game_event_creature WHERE guid = 86581;
DELETE FROM game_event_creature_data WHERE guid = 86581;
DELETE FROM creature_battleground WHERE guid = 86581;
DELETE FROM creature_linking WHERE guid = 86581 OR master_guid = 86581;
