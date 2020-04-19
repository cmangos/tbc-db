-- Stormwind Royal Guard - duplicate removed
-- was hidden behind wall in Stormwind Keep
DELETE FROM creature_addon WHERE guid=10520;
DELETE FROM creature_movement WHERE id=10520;
DELETE FROM game_event_creature WHERE guid=10520;
DELETE FROM game_event_creature_data WHERE guid=10520;
DELETE FROM creature_battleground WHERE guid=10520;
DELETE FROM creature_linking WHERE guid=10520 OR master_guid=10520;
DELETE FROM creature WHERE guid=10520;

