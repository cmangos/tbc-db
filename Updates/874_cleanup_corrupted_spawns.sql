-- Cleanup corrupted creature/gameobject spawn data

-- entry 7456 on map 530
DELETE FROM creature WHERE guid = 43280;
DELETE FROM creature_addon WHERE guid = 43280;
DELETE FROM creature_movement WHERE id = 43280;
DELETE FROM game_event_creature WHERE guid = 43280;
DELETE FROM game_event_creature_data WHERE guid = 43280;
DELETE FROM creature_battleground WHERE guid = 43280;
DELETE FROM creature_linking WHERE guid = 43280 OR master_guid = 43280;

-- dublicate 129169
DELETE FROM creature WHERE guid = 101332;
DELETE FROM creature_addon WHERE guid = 101332;
DELETE FROM creature_movement WHERE id = 101332;
DELETE FROM game_event_creature WHERE guid = 101332;
DELETE FROM game_event_creature_data WHERE guid = 101332;
DELETE FROM creature_battleground WHERE guid = 101332;
DELETE FROM creature_linking WHERE guid = 101332 OR master_guid = 101332;

-- dublicate 129168
DELETE FROM creature WHERE guid = 101333;
DELETE FROM creature_addon WHERE guid = 101333;
DELETE FROM creature_movement WHERE id = 101333;
DELETE FROM game_event_creature WHERE guid = 101333;
DELETE FROM game_event_creature_data WHERE guid = 101333;
DELETE FROM creature_battleground WHERE guid = 101333;
DELETE FROM creature_linking WHERE guid = 101333 OR master_guid = 101333;

-- dublicate to `dbscripts_on_quest_start` 68
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN (67);
UPDATE `quest_template` SET `CompleteScript` = 0 WHERE `entry` = 67;

-- entry 22315 spellspawned spell 38107
DELETE FROM creature WHERE guid = 78495;
DELETE FROM creature_addon WHERE guid = 78495;
DELETE FROM creature_movement WHERE id = 78495;
DELETE FROM game_event_creature WHERE guid = 78495;
DELETE FROM game_event_creature_data WHERE guid = 78495;
DELETE FROM creature_battleground WHERE guid = 78495;
DELETE FROM creature_linking WHERE guid = 78495 OR master_guid = 78495;

